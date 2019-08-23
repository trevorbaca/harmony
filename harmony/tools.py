import abjad
import baca
import inspect
import typing
from abjadext import rmakers


_reference_meters = (
    abjad.Meter("(5/4 (1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))"),
)


### FUNCTIONS ###


def appoggiato(
    divisions: abjad.IntegerSequence,
    counts: abjad.IntegerSequence = None,
    *,
    leaf_duration=(1, 20),
    rotation: int = 0,
) -> baca.RhythmCommand:
    """
    Makes appoggiato rhythm.
    """
    divisions_ = baca.sequence([(_, 4) for _ in divisions])
    divisions_ = divisions_.rotate(n=rotation)
    commands = []
    if counts:
        command = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=leaf_duration
        )
        commands.append(command)
    return baca.rhythm(
        rmakers.incised(
            prefix_talea=[-1], prefix_counts=[1], talea_denominator=16
        ),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        *commands,
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(divisions_, cyclic=True),
        tag=baca.frame(inspect.currentframe()),
    )


def bass_drum_staff_position() -> baca.Suite:
    """
    Sets bass drum staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(-1), baca.stem_down())


def begin_end_quarter_notes(*commands: rmakers.Command,) -> baca.RhythmCommand:
    """
    Makes begin / end quarter notes.
    """
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            prefix_talea=[3, 1],
            prefix_counts=[2],
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.extract_trivial(),
        rmakers.written_duration((1, 4), baca.pleaves()),
        tag=baca.frame(inspect.currentframe()),
    )


def brake_drum_staff_position() -> baca.Suite:
    """
    Sets brake drum staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_up())


def durata(
    counts: abjad.IntegerSequence, *, grace: bool = None, untie: bool = None
) -> baca.RhythmCommand:
    """
    Makes durata.
    """
    commands: typing.List[rmakers.Command] = []
    if grace:
        command_1 = rmakers.after_grace_container(
            [1], baca.runs().map(baca.leaf(-1))
        )
        commands.append(command_1)
    if untie:
        command_2 = rmakers.untie(baca.leaves())
        commands.append(command_2)
    return baca.rhythm(
        rmakers.talea(counts, 8),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        *commands,
        rmakers.force_repeat_tie((1, 8)),
        tag=baca.frame(inspect.currentframe()),
    )


def flutter_initiated_cells(
    divisions: abjad.IntegerSequence,
) -> baca.RhythmCommand:
    """
    Makes flutter-initiated cells.
    """
    divisions_ = baca.sequence([(_, 4) for _ in divisions])
    return baca.rhythm(
        rmakers.incised(
            prefix_talea=[1], prefix_counts=[2], talea_denominator=8
        ),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(divisions_, cyclic=True),
        tag=baca.frame(inspect.currentframe()),
    )


def phjc(
    parts: abjad.IntegerSequence,
    counts: abjad.IntegerSequence,
    *commands,
    extra_counts: abjad.IntegerSequence = None,
) -> baca.RhythmCommand:
    """
    Makes purpleheart jerky contintuity.
    """
    preprocessor = baca.sequence().fuse().quarters().partition(parts)
    preprocessor = preprocessor.map(baca.sequence().flatten().fuse())
    return baca.rhythm(
        rmakers.talea(counts, 16, extra_counts=extra_counts),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.denominator((1, 8)),
        rmakers.force_fraction(),
        rmakers.force_repeat_tie((1, 8)),
        rmakers.force_rest(baca.plts().map(baca.leaves()[1:])),
        rmakers.force_rest(baca.tuplets().map(baca.leaf(0))),
        rmakers.beam(),
        rmakers.extract_trivial(),
        preprocessor=preprocessor,
        tag=baca.frame(inspect.currentframe()),
    )


def quarter_initiated_cells(
    divisions: abjad.IntegerSequence,
) -> baca.RhythmCommand:
    """
    Makes quarter-initiated cells.
    """
    divisions_ = baca.sequence([(_, 16) for _ in divisions])
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            prefix_talea=[1],
            prefix_counts=[1],
            talea_denominator=4,
        ),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(divisions_, cyclic=True),
        tag=baca.frame(inspect.currentframe()),
    )


def rest_appoggiato(
    counts: abjad.IntegerSequence,
    divisions: abjad.IntegerSequence = None,
    *,
    leaf_duration=(1, 20),
) -> baca.RhythmCommand:
    """
    Makes string appoggiato rhythm.
    """
    if divisions:
        divisions_ = baca.sequence([(_, 4) for _ in divisions])
        preprocessor = (
            baca.sequence().fuse().split_divisions(divisions_, cyclic=True)
        )
    else:
        preprocessor = None
    commands = []
    if counts:
        command = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=leaf_duration
        )
        commands.append(command)
    return baca.rhythm(
        rmakers.note(),
        # omit reference meters to allow 5 = 3 + 2
        rmakers.rewrite_meter(),
        rmakers.force_repeat_tie((1, 8)),
        *commands,
        rmakers.force_rest(baca.plts(grace=False)),
        preprocessor=preprocessor,
        tag=baca.frame(inspect.currentframe()),
    )


def sixteenths(
    counts: abjad.IntegerSequence,
    extra_counts: abjad.IntegerSequence = None,
    *,
    r: int = None,
) -> baca.RhythmCommand:
    """
    Makes sixteenths rhythm.
    """
    counts_ = baca.sequence(counts).rotate(n=r)
    return baca.rhythm(
        rmakers.talea(counts_, 16, extra_counts=extra_counts),
        rmakers.rewrite_rest_filled(),
        rmakers.rewrite_sustained(),
        rmakers.extract_trivial(),
        rmakers.force_fraction(),
        rmakers.denominator((1, 16)),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        preprocessor=baca.sequence().fuse().quarters(),
        tag=baca.frame(inspect.currentframe()),
    )


def slate_staff_position() -> baca.Suite:
    """
    Sets slate staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(1), baca.stem_down())


def string_appoggiato(
    divisions: abjad.IntegerSequence,
    counts: abjad.IntegerSequence = (2, 3, 4, 5, 6, 7, 8, 9),
    *,
    leaf_duration=(1, 20),
    rest: int = None,
    rotation: int = 0,
) -> baca.RhythmCommand:
    """
    Makes string appoggiato rhythm.
    """
    divisions_ = baca.sequence([(_, 4) for _ in divisions])
    divisions_ = divisions_.rotate(n=rotation)
    commands: typing.List[rmakers.Command] = []
    if rest:
        command_1 = rmakers.force_rest(baca.plts(grace=False)[:rest])
        commands.append(command_1)
    if counts:
        command_2 = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=leaf_duration
        )
        commands.append(command_2)
    return baca.rhythm(
        rmakers.note(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        *commands,
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(divisions_, cyclic=True),
        tag=baca.frame(inspect.currentframe()),
    )


def tam_tam_staff_position() -> baca.Suite:
    """
    Sets tam-tam staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_down())


def tessera_1(
    part: int, *, advance: int = None, gap: bool = None
) -> baca.RhythmCommand:
    """
    Makes tessera 1.
    """
    counts = baca.sequence([9, 14, 3, 8, 12, 16, 2, 4, 6, 7, 15])
    permutation = baca.sequence([2, 9, 10, 3, 4, 8, 0, 5, 6, 1, 7])
    assert sum(counts) == 96
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
    )


def train(
    counts: abjad.IntegerSequence,
    *commands: rmakers.Command,
    rewrite_meter: bool = None,
) -> baca.RhythmCommand:
    """
    Makes pulse train.
    """
    commands_ = []
    if rewrite_meter is True:
        command_ = rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        )
        commands_.append(command_)
    return baca.rhythm(
        rmakers.talea(counts, 16),
        *commands,
        rmakers.extract_trivial(),
        rmakers.beam(baca.leaves().group()),
        *commands_,
        rmakers.force_repeat_tie((1, 8)),
        tag=baca.frame(inspect.currentframe()),
    )


def triangle_staff_position() -> baca.Suite:
    """
    Sets triangle position and stem direction.
    """
    return baca.chunk(baca.staff_position(1), baca.stem_up())


def upbeat_quarter_note() -> baca.RhythmCommand:
    """
    Makes upbeat quarter-note rhythm.
    """
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        rmakers.extract_trivial(),
        rmakers.written_duration((1, 4), baca.pleaves()),
        tag=baca.frame(inspect.currentframe()),
    )


def whisk_staff_position() -> baca.Suite:
    """
    Sets whisk staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_down())
