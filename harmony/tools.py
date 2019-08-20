import abjad
import baca
import inspect
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


def sixteenths(counts: abjad.IntegerSequence,) -> baca.RhythmCommand:
    """
    Makes sixteenths rhythm.
    """
    return baca.rhythm(
        rmakers.talea(counts, 16),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        tag=baca.frame(inspect.currentframe()),
    )


def slate_staff_position() -> baca.Suite:
    """
    Sets slate staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(1), baca.stem_down())


def tam_tam_staff_position() -> baca.Suite:
    """
    Sets tam-tam staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_down())


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
