import abjad
import baca
import inspect
import typing
from abjadext import rmakers


_reference_meters = (
    abjad.Meter("(5/4 (1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))"),
)


### CONSTANTS ###

cerulean = [1, -10, 1, -9, 1, -8, 1, -7, 1, -6, 1, -5, 1, -4, 1, -3, 1, "-"]


### FUNCTIONS ###


def _site(frame):
    prefix = "harmony"
    return baca.site(frame, prefix)


def appoggiato(
    *,
    divisions: abjad.IntegerSequence = None,
    counts: abjad.IntegerSequence = None,
    extra_counts: abjad.IntegerSequence = None,
    fuse: bool = None,
    incise: bool = None,
    prefix_talea=None,
    prefix_counts=None,
    rest_after: typing.Union[abjad.IntegerSequence, bool] = None,
    rest_to: int = None,
    rest_from: int = None,
    tie: abjad.IntegerSequence = None,
    written_quarters: abjad.IntegerSequence = None,
    invisible: abjad.IntegerSequence = None,
    after_graces: abjad.IntegerSequence = None,
) -> baca.RhythmCommand:
    """
    Makes appoggiato rhythm.
    """
    preprocessor = None
    if fuse is True:
        preprocessor = baca.sequence().fuse()
    elif divisions is not None:
        divisions_ = baca.sequence([(_, 16) for _ in divisions])
        preprocessor = baca.sequence().fuse()
        preprocessor = preprocessor.split_divisions(divisions_, cyclic=True)
    if incise is True:
        prefix_talea = [-1]
        prefix_counts = [1]
    commands: typing.List[rmakers.Command] = []
    if rest_to:
        selector = baca.plts(grace=False)[:rest_to]
        force_rest_ = rmakers.force_rest(selector)
        commands.append(force_rest_)
    if rest_from is not None:
        selector = baca.plts(grace=False)[-rest_from:]
        force_rest_ = rmakers.force_rest(selector)
        commands.append(force_rest_)
    if counts:
        on_beat_ = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=(1, 20)
        )
        commands.append(on_beat_)
    if rest_after is True:
        selector = baca.plts(grace=False)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    elif rest_after is not None:
        selector = baca.plts(grace=False).get(rest_after)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if tie is not None:
        selector = baca.pleaves().get(tie)
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if written_quarters is not None:
        selector = baca.pleaves().get(written_quarters)
        written_ = rmakers.written_duration((1, 4), selector)
        commands.append(written_)
        selector = baca.leaves(grace=False)
        unbeam_ = rmakers.unbeam(selector)
        commands.append(unbeam_)
    if invisible is not None:
        selector = baca.pleaves().get(invisible)
        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if after_graces is not None:
        selector = baca.pleaf(-1)
        beam_and_slash = None
        if after_graces != [1]:
            beam_and_slash = True
        after_grace_ = rmakers.after_grace_container(
            after_graces, selector, beam_and_slash=beam_and_slash
        )
        commands.append(after_grace_)
    return baca.rhythm(
        rmakers.incised(
            extra_counts=extra_counts,
            prefix_talea=prefix_talea,
            prefix_counts=prefix_counts,
            talea_denominator=16,
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
    divisions: abjad.IntegerSequence,
    counts: abjad.IntegerSequence,
    *,
    extra_counts: abjad.IntegerSequence = None,
    rest: abjad.IntegerSequence = None,
    rest_cyclic: typing.Tuple[abjad.IntegerSequence, int] = None,
    rest_except: abjad.IntegerSequence = None,
    rest_pleaves: abjad.IntegerSequence = None,
    rest_most: bool = None,
    rest_nonfirst: bool = None,
) -> baca.RhythmCommand:
    """
    Makes purpleheart jerky contintuity.
    """
    preprocessor = baca.sequence().fuse().quarters().partition(divisions)
    preprocessor = preprocessor.map(baca.sequence().flatten().fuse())
    commands: typing.List[rmakers.Command] = []
    if rest is not None:
        selector = baca.tuplets().get(rest)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_cyclic is not None:
        selector = baca.tuplets().get(*rest_cyclic)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_except is not None:
        selector = baca.tuplets().exclude(rest_except)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_most is True:
        selector = baca.tuplets()[:-1]
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_nonfirst is True:
        selector = baca.tuplets()[1:]
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_pleaves is not None:
        selector = baca.pleaves().get(rest_pleaves)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
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
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=_site(inspect.currentframe()),
    )


def rimbalzandi(
    *,
    extra_counts: abjad.IntegerSequence = None,
    rest_except: abjad.IntegerSequence = None,
) -> baca.RhythmCommand:
    """
    Makes rimbalzandi rhythm.
    """
    preprocessor = baca.sequence().fuse([2], cyclic=True)
    commands: typing.List[rmakers.Command] = []
    if rest_except is not None:
        selector = baca.leaves().exclude(rest_except)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
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


def sixteenths(
    counts: typing.Sequence,
    *,
    beam: bool = None,
    fuse: bool = None,
    preprocessor: abjad.Expression = None,
    denominator=(1, 16),
    do_not_rewrite_meter: bool = None,
    extra_counts: abjad.IntegerSequence = None,
    written_dotted_halves: typing.Union[abjad.PatternTyping, bool] = None,
    written_eighths: typing.Union[abjad.PatternTyping, bool] = None,
    written_halves: typing.Union[abjad.PatternTyping, bool] = None,
    written_quarters: typing.Union[abjad.PatternTyping, bool] = None,
    written_wholes: typing.Union[abjad.PatternTyping, bool] = None,
    written_dotted_wholes: typing.Union[abjad.PatternTyping, bool] = None,
    invisible: typing.Union[abjad.PatternTyping, bool] = None,
    invisible_pairs: bool = None,
    talea_denominator: int = None,
    tie: abjad.PatternTyping = None,
    tie_runs: bool = None,
    tie_all: bool = None,
    untie: bool = None,
    after_graces: abjad.IntegerSequence = None,
) -> baca.RhythmCommand:
    """
    Makes sixteenths rhythm.
    """
    talea_denominator = talea_denominator or 16
    if fuse is True:
        preprocessor_ = baca.sequence()
    elif preprocessor is None:
        preprocessor_ = baca.sequence().fuse().quarters()
    else:
        preprocessor_ = preprocessor
    beam_commands: typing.List[rmakers.Command] = []
    if beam:
        beam_ = rmakers.beam()
        beam_commands.append(beam_)
    commands: typing.List[rmakers.Command] = []
    if denominator is not None:
        denominator_ = rmakers.denominator(denominator)
        commands.append(denominator_)
    if not do_not_rewrite_meter:
        rewrite_ = rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        )
        commands.append(rewrite_)
    if written_quarters is True:
        selector = baca.pleaves()
        written_ = rmakers.written_duration((1, 4), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_quarters is not None:
        selector = baca.pleaves().get(*written_quarters)
        written_ = rmakers.written_duration((1, 4), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_eighths is True:
        selector = baca.pleaves()
        written_ = rmakers.written_duration((1, 8), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_eighths is not None:
        selector = baca.pleaves().get(*written_eighths)
        written_ = rmakers.written_duration((1, 8), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_halves is not None:
        selector = baca.pleaves().get(*written_dotted_halves)
        written_ = rmakers.written_duration((3, 4), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_wholes is not None:
        selector = baca.pleaves().get(*written_wholes)
        written_ = rmakers.written_duration((1, 1), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_wholes is not None:
        selector = baca.pleaves().get(*written_dotted_wholes)
        written_ = rmakers.written_duration((3, 2), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_halves is True:
        selector = baca.pleaves()
        written_ = rmakers.written_duration((1, 2), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_halves is not None:
        selector = baca.pleaves().get(*written_halves)
        written_ = rmakers.written_duration((1, 2), selector)
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if invisible_pairs is True:
        selector = baca.pleaves().get([1], 2)
        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if invisible is not None:
        selector = baca.pleaves().get(*invisible)
        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if tie is not None:
        selector = baca.pleaves().get(*tie)
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if tie_all is True:
        selector = baca.pleaves()[1:]
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if tie_runs is True:
        selector = baca.runs().map(baca.leaves()[1:])
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if untie is True:
        selector = baca.leaves()
        untie_ = rmakers.untie(selector)
        commands.append(untie_)
    if after_graces:
        selector = baca.runs().map(baca.leaf(-1))
        beam_and_slash = None
        if after_graces != [1]:
            beam_and_slash = True
        after_grace_ = rmakers.after_grace_container(
            after_graces, selector, beam_and_slash=beam_and_slash
        )
        commands.append(after_grace_)
    return baca.rhythm(
        rmakers.talea(counts, talea_denominator, extra_counts=extra_counts),
        rmakers.rewrite_rest_filled(),
        rmakers.rewrite_sustained(),
        *beam_commands,
        rmakers.extract_trivial(),
        rmakers.force_fraction(),
        *commands,
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
        preprocessor=preprocessor_,
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
    part: int,
    *,
    advance: int = None,
    gap: bool = None,
    rest_plts: abjad.IntegerSequence = None,
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
    commands: typing.List[rmakers.Command] = []
    if rest_plts is not None:
        selector = baca.plts().get(rest_plts)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
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
    part: int, *, advance: int = None, gap: bool = None
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
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def tessera_4(
    part: int, *, advance: int = None, gap: bool = None
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
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        ),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def train(
    counts, *, rest_leaves: abjad.IntegerSequence = None
) -> baca.RhythmCommand:
    """
    Makes pulse train.
    """
    commands: typing.List[rmakers.Command] = []
    if rest_leaves is not None:
        selector = baca.leaves().get(rest_leaves)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    return baca.rhythm(
        rmakers.talea(counts, 16),
        *commands,
        rmakers.extract_trivial(),
        rmakers.beam(baca.leaves().group()),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
        tag=_site(inspect.currentframe()),
    )


def tuplet(
    ratios,
    *,
    denominator: abjad.IntegerPair = None,
    force_augmentation: bool = None,
    written_quarters: bool = None,
) -> baca.RhythmCommand:
    """
    Makes tuplet.
    """
    commands: typing.List[rmakers.Command] = []
    if denominator is not None:
        denominator_ = rmakers.denominator(denominator)
        commands.append(denominator_)
    if written_quarters is True:
        written_ = rmakers.written_duration((1, 4))
        commands.append(written_)
    if force_augmentation is True:
        force_ = rmakers.force_augmentation()
        commands.append(force_)
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
