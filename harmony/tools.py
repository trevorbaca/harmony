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


def _site(frame):
    prefix = "harmony"
    return baca.site(frame, prefix)


def appoggiato(
    *,
    quarters: abjad.IntegerSequence = None,
    counts: abjad.IntegerSequence = None,
) -> baca.RhythmCommand:
    """
    Makes appoggiato rhythm.
    """
    if quarters is not None:
        quarters_ = baca.sequence([(_, 4) for _ in quarters])
        preprocessor = (
            baca.sequence().fuse().split_divisions(quarters_, cyclic=True)
        )
    else:
        preprocessor = None
    commands = []
    if counts:
        command = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=(1, 20)
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
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


def phjc(
    parts: abjad.IntegerSequence,
    counts: abjad.IntegerSequence,
    *,
    extra_counts: abjad.IntegerSequence = None,
    rest: abjad.IntegerSequence = None,
    rest_cyclic: typing.Tuple[abjad.IntegerSequence, int] = None,
    rest_except: abjad.IntegerSequence = None,
    rest_most: bool = None,
    rest_nonfirst: bool = None,
) -> baca.RhythmCommand:
    """
    Makes purpleheart jerky contintuity.
    """
    preprocessor = baca.sequence().fuse().quarters().partition(parts)
    preprocessor = preprocessor.map(baca.sequence().flatten().fuse())
    commands_: typing.List[rmakers.Command] = []
    if rest is not None:
        selector = baca.tuplets().get(rest)
        force_ = rmakers.force_rest(selector)
        commands_.append(force_)
    if rest_cyclic is not None:
        selector = baca.tuplets().get(*rest_cyclic)
        force_ = rmakers.force_rest(selector)
        commands_.append(force_)
    if rest_except is not None:
        selector = baca.tuplets().exclude(rest_except)
        force_ = rmakers.force_rest(selector)
        commands_.append(force_)
    if rest_most is True:
        selector = baca.tuplets()[:-1]
        force_ = rmakers.force_rest(selector)
        commands_.append(force_)
    if rest_nonfirst is True:
        selector = baca.tuplets()[1:]
        force_ = rmakers.force_rest(selector)
        commands_.append(force_)
    return baca.rhythm(
        rmakers.talea(counts, 16, extra_counts=extra_counts),
        *commands_,
        rmakers.rewrite_rest_filled(),
        rmakers.denominator((1, 8)),
        rmakers.force_fraction(),
        rmakers.force_repeat_tie((1, 8)),
        rmakers.force_rest(baca.plts().map(baca.leaves()[1:])),
        rmakers.force_rest(baca.tuplets().map(baca.leaf(0))),
        rmakers.beam(),
        rmakers.extract_trivial(),
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


def rimbalzandi(extra_counts=None, *commands) -> baca.RhythmCommand:
    """
    Makes rimbalzandi rhythm.
    """
    preprocessor = baca.sequence().fuse([2], cyclic=True)
    return baca.rhythm(
        rmakers.even_division([4], extra_counts=extra_counts),
        rmakers.trivialize(),
        rmakers.rewrite_dots(),
        *commands,
        rmakers.force_diminution(),
        rmakers.force_fraction(),
        rmakers.extract_trivial(),
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


def rest_appoggiato(
    counts: abjad.IntegerSequence, divisions: abjad.IntegerSequence = None
) -> baca.RhythmCommand:
    """
    Makes string appoggiato rhythm.
    """
    if divisions:
        divisions_ = baca.sequence([(_, 16) for _ in divisions])
        preprocessor = (
            baca.sequence().fuse().split_divisions(divisions_, cyclic=True)
        )
    else:
        preprocessor = None
    commands_ = []
    if counts:
        command = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=(1, 20)
        )
        commands_.append(command)
    return baca.rhythm(
        rmakers.note(),
        # omit reference meters to allow 5 = 3 + 2
        rmakers.rewrite_meter(),
        rmakers.force_repeat_tie((1, 8)),
        *commands_,
        rmakers.force_rest(baca.plts(grace=False)),
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


def sixteenths(
    counts: typing.Sequence,
    *,
    beam: bool = None,
    fuse: bool = None,
    preprocessor: abjad.Expression = None,
    do_not_rewrite_meter: bool = None,
    extra_counts: abjad.IntegerSequence = None,
    written_quarters: bool = None,
    invisible_pairs: bool = None,
    r: int = None,
    stop: int = None,
    tie_runs: bool = None,
    tie_all: bool = None,
    untie: bool = None,
    grace_suffixes: abjad.IntegerSequence = None,
) -> baca.RhythmCommand:
    """
    Makes sixteenths rhythm.
    """
    counts_ = baca.sequence(counts).rotate(n=r)
    if stop is not None:
        counts_ = counts_[:stop] + [-99]
    meter = []
    if not do_not_rewrite_meter:
        command = rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        )
        meter.append(command)
    if fuse is True:
        preprocessor_ = baca.sequence()
    elif preprocessor is None:
        preprocessor_ = baca.sequence().fuse().quarters()
    else:
        preprocessor_ = preprocessor
    grace = []
    if grace_suffixes:
        selector = baca.runs().map(baca.leaf(-1))
        command_ = rmakers.after_grace_container(
            grace_suffixes, selector, beam_and_slash=True
        )
        grace.append(command_)
    beam_commands = []
    if beam:
        beam_commands.append(rmakers.beam())
    written_quarter_commands: typing.List[rmakers.Command] = []
    if written_quarters:
        command_3 = rmakers.written_duration((1, 4), baca.pleaves())
        written_quarter_commands.append(command_3)
        command_4 = rmakers.unbeam()
        written_quarter_commands.append(command_4)
    invisible_commands = []
    if invisible_pairs is True:
        invisible_ = rmakers.invisible_music(baca.pleaves().get([1], 2))
        invisible_commands.append(invisible_)
    tie_commands = []
    if tie_all is True:
        tie_all_ = rmakers.repeat_tie(baca.pleaves()[1:])
        tie_commands.append(tie_all_)
    if tie_runs is True:
        tie_runs_ = rmakers.repeat_tie(baca.runs().map(baca.leaves()[1:]))
        tie_commands.append(tie_runs_)
    untie_commands = []
    if untie is True:
        untie_ = rmakers.untie(baca.leaves())
        untie_commands.append(untie_)
    return baca.rhythm(
        rmakers.talea(counts_, 16, extra_counts=extra_counts),
        rmakers.rewrite_rest_filled(),
        rmakers.rewrite_sustained(),
        *beam_commands,
        rmakers.extract_trivial(),
        rmakers.force_fraction(),
        rmakers.denominator((1, 16)),
        *meter,
        *written_quarter_commands,
        *invisible_commands,
        *tie_commands,
        *untie_commands,
        rmakers.force_repeat_tie((1, 8)),
        *grace,
        frame=inspect.currentframe(),
        preprocessor=preprocessor_,
        tag=_site(inspect.currentframe()),
    )


def string_appoggiato(
    counts: abjad.IntegerSequence,
    *,
    fuse: bool = None,
    quarters: abjad.IntegerSequence = None,
    rest_first: int = None,
    rest_last: int = None,
    after_grace: int = None,
) -> baca.RhythmCommand:
    """
    Makes string appoggiato rhythm.
    """
    assert counts is not None, repr(counts)
    preprocessor = None
    if fuse is True:
        preprocessor = baca.sequence().fuse()
    elif quarters:
        divisions = baca.sequence([(_, 4) for _ in quarters])
        preprocessor = (
            baca.sequence().fuse().split_divisions(divisions, cyclic=True)
        )
    commands_: typing.List[rmakers.Command] = []
    if rest_first:
        force_rest_ = rmakers.force_rest(baca.plts(grace=False)[:rest_first])
        commands_.append(force_rest_)
    if rest_last is not None:
        force_rest_ = rmakers.force_rest(baca.plts()[-rest_last:])
        commands_.append(force_rest_)
    on_beat_ = rmakers.on_beat_grace_container(
        counts, baca.plts(), leaf_duration=(1, 20)
    )
    commands_.append(on_beat_)
    if after_grace is not None:
        after_grace_ = rmakers.after_grace_container(
            [after_grace], baca.pleaf(-1), beam_and_slash=True
        )
        commands_.append(after_grace_)
    return baca.rhythm(
        rmakers.note(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        *commands_,
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


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
        frame=inspect.currentframe(),
    )


def tessera_2(
    part: int, *commands, advance: int = None, gap: bool = None
) -> baca.RhythmCommand:
    """
    Makes tessera 2.
    """
    counts = baca.sequence([3, 4, 14, 2, 6, 7, 8])
    permutation = baca.sequence([2, 3, 4, 0, 5, 6, 1])
    assert sum(counts) == 44
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        *commands,
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def tessera_3(
    part: int, *commands, advance: int = None, gap: bool = None
) -> baca.RhythmCommand:
    """
    Makes tessera 3.
    """
    counts = baca.sequence([3, 7, 8, 13, 5, 6, 12, 9, 10, 11])
    permutation = baca.sequence([8, 9, 2, 3, 4, 0, 5, 6, 7, 1])
    assert sum(counts) == 84
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        *commands,
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def tessera_4(
    part: int, *commands, advance: int = None, gap: bool = None
) -> baca.RhythmCommand:
    """
    Makes tessera 4.
    """
    counts = baca.sequence([14, 15, 3, 4, 12, 28, 2, 5, 6, 16, 24, 7, 8])
    permutation = baca.sequence([11, 12, 0, 4, 5, 1, 8, 9, 10, 2, 3, 6, 7])
    assert sum(counts) == 144
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        *commands,
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def train(
    counts, *commands: rmakers.Command, rewrite_meter: bool = None
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
        frame=inspect.currentframe(),
        tag=_site(inspect.currentframe()),
    )


def tuplet(ratios, *commands) -> baca.RhythmCommand:
    """
    Makes tuplet.
    """
    return baca.rhythm(
        rmakers.tuplet(ratios),
        rmakers.trivialize(),
        rmakers.rewrite_dots(),
        rmakers.force_diminution(),
        *commands,
        rmakers.force_fraction(),
        rmakers.extract_trivial(),
        frame=inspect.currentframe(),
    )


def warble(
    *,
    sixteenths: abjad.IntegerSequence = None,
    extra_counts: abjad.IntegerSequence = None,
    rest_tuplets: abjad.IntegerSequence = None,
    rest_tuplets_cyclic: typing.Tuple[abjad.IntegerSequence, int] = None,
) -> baca.RhythmCommand:
    """
    Makes warble rhythm.
    """
    preprocessor = None
    if sixteenths is not None:
        divisions_ = baca.sequence([(_, 16) for _ in sixteenths])
        preprocessor = baca.sequence().fuse()
        preprocessor = preprocessor.split_divisions(divisions_, cyclic=True)
    rests: typing.List[rmakers.Command] = []
    if rest_tuplets is not None:
        selector = baca.tuplets().get(rest_tuplets)
        force_rest_ = rmakers.force_rest(selector)
        rests.append(force_rest_)
    if rest_tuplets_cyclic is not None:
        selector = baca.tuplets().get(*rest_tuplets_cyclic)
        force_rest_ = rmakers.force_rest(selector)
        rests.append(force_rest_)
    selector = baca.tuplets().map(baca.leaves()[:1])
    force_rest = rmakers.force_rest(selector)
    rests.append(force_rest)
    return baca.rhythm(
        rmakers.talea([1], 32, extra_counts=extra_counts),
        *rests,
        rmakers.rewrite_rest_filled(),
        rmakers.rewrite_sustained(),
        rmakers.beam(),
        rmakers.extract_trivial(),
        rmakers.force_fraction(),
        rmakers.denominator((1, 16)),
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


### PERCUSSION POSITIONS ###

def bass_drum_staff_position() -> baca.Suite:
    """
    Sets bass drum staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(-1), baca.stem_down())


def brake_drum_staff_position() -> baca.Suite:
    """
    Sets brake drum staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_up())


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


def whisk_staff_position() -> baca.Suite:
    """
    Sets whisk staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_down())
