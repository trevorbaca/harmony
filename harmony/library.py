import inspect

import abjad
import baca
import quicktions
from abjadext import rmakers

_reference_meters = (
    abjad.Meter("(5/4 (1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))"),
)

# instruments

instruments = abjad.OrderedDict(
    [
        ("BassFlute", abjad.BassFlute(pitch_range="[C3, E6]")),
        #        ("Glockenspiel", abjad.Glockenspiel()),
        (
            "Percussion",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        (
            "PercussionI",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        (
            "PercussionII",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        ("Harp", abjad.Harp()),
        ("Viola", abjad.Viola(pitch_range="[C3, +inf]")),
        ("Cello", abjad.Cello(pitch_range="[C2, +inf]")),
        ("CelloI", abjad.Cello(pitch_range="[C2, +inf]")),
        ("CelloII", abjad.Cello(pitch_range="[C2, +inf]")),
        ("Contrabass", abjad.Contrabass(pitch_range="[E1, +inf]")),
        ("ContrabassI", abjad.Contrabass(pitch_range="[E1, +inf]")),
        ("ContrabassII", abjad.Contrabass(pitch_range="[E1, +inf]")),
    ]
)

# margin markups

margin_markups = abjad.OrderedDict(
    [
        ("Bfl.", abjad.MarginMarkup(markup=r"\harmony-bfl-markup")),
        ("Perc. I", abjad.MarginMarkup(markup=r"\harmony-perc-i-markup")),
        ("Perc. II", abjad.MarginMarkup(markup=r"\harmony-perc-ii-markup")),
        ("Hp.", abjad.MarginMarkup(markup=r"\harmony-hp-markup")),
        ("Va.", abjad.MarginMarkup(markup=r"\harmony-va-markup")),
        ("Vc. I", abjad.MarginMarkup(markup=r"\harmony-vc-i-markup")),
        ("Vc. II", abjad.MarginMarkup(markup=r"\harmony-vc-ii-markup")),
        ("Cb. I", abjad.MarginMarkup(markup=r"\harmony-cb-i-markup")),
        ("Cb. II", abjad.MarginMarkup(markup=r"\harmony-cb-ii-markup")),
    ]
)

metronome_marks = abjad.OrderedDict(
    [
        ("48", abjad.MetronomeMark((1, 4), 48)),
        (
            "57 3/5",
            abjad.MetronomeMark((1, 4), quicktions.Fraction(288, 5), decimal=True),
        ),
        ("72", abjad.MetronomeMark((1, 4), 72)),
        ("96", abjad.MetronomeMark((1, 4), 96)),
        ("144", abjad.MetronomeMark((1, 4), 144)),
        # slower
        (
            "2.=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c2."), right_rhythm=abjad.Note("c4")
            ),
        ),
        (
            "4:5(2)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("4:5", "c2"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "2=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c2"), right_rhythm=abjad.Note("c4")
            ),
        ),
        (
            "5:6(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:6", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "4:5(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("4:5", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "3:5(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:5", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "3:4(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:4", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "4.=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4."), right_rhythm=abjad.Note("c4")
            ),
        ),
        # faster
        (
            "6:5(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("6:5", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "5:4(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:4", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "5:4(8)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:4", "c8"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "5:3(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:3", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "4:3(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("4:3", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "3:2(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:2", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "8=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c8"), right_rhythm=abjad.Note("c4")
            ),
        ),
        (
            "3:2(8)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:2", "c8"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
    ]
)

### TAGS ###

LETTER_PARTS_BFL = abjad.Tag("+LETTER_PARTS_BFL")
LETTER_PARTS_PERC_I = abjad.Tag("+LETTER_PARTS_PERC_I")
LETTER_PARTS_PERC_II = abjad.Tag("+LETTER_PARTS_PERC_II")
LETTER_PARTS_HP = abjad.Tag("+LETTER_PARTS_HP")
LETTER_PARTS_VA = abjad.Tag("+LETTER_PARTS_VA")
LETTER_PARTS_VC_I = abjad.Tag("+LETTER_PARTS_VC_I")
LETTER_PARTS_VC_II = abjad.Tag("+LETTER_PARTS_VC_II")
LETTER_PARTS_CB_I = abjad.Tag("+LETTER_PARTS_CB_I")
LETTER_PARTS_CB_II = abjad.Tag("+LETTER_PARTS_CB_II")

NOT_LETTER_PARTS_BFL = abjad.Tag("-LETTER_PARTS_BFL")
NOT_LETTER_PARTS_PERC_I = abjad.Tag("-LETTER_PARTS_PERC_I")
NOT_LETTER_PARTS_PERC_II = abjad.Tag("-LETTER_PARTS_PERC_II")
NOT_LETTER_PARTS_HP = abjad.Tag("-LETTER_PARTS_HP")
NOT_LETTER_PARTS_VA = abjad.Tag("-LETTER_PARTS_VA")
NOT_LETTER_PARTS_VC_I = abjad.Tag("-LETTER_PARTS_VC_I")
NOT_LETTER_PARTS_VC_II = abjad.Tag("-LETTER_PARTS_VC_II")
NOT_LETTER_PARTS_CB_I = abjad.Tag("-LETTER_PARTS_CB_I")
NOT_LETTER_PARTS_CB_II = abjad.Tag("-LETTER_PARTS_CB_II")

### CONSTANTS ###

cerulean = [1, -10, 1, -9, 1, -8, 1, -7, 1, -6, 1, -5, 1, -4, 1, -3, 1, "-"]

warble_pitches = baca.Sequence("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3".split())

# shared counts

damp_counts = [3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4]

damp_counts_curtailed = [3, -1, 8, -8, 3, -1]


glissando_counts = [
    2,
    1,
    -1,
    4,
    2,
    1,
    -1,
    -8,
    4,
    2,
    1,
    -1,
    2,
    1,
    -1,
    -16,
    2,
    1,
    -1,
    8,
    2,
    1,
    -1,
    -4,
    2,
    1,
    -1,
]

glissando_counts_curtailed = [2, 1, -1, 4, 2, 1, -1, -8, 2, 1, -1]

duration_color = [21, -14, 18, "-"]

# Db3:
appoggiato_pitches_d_flat_3 = baca.Sequence(
    "F3 F#3  D3 D#3 Dtqs3 E3 Eqs3 F3  D#3 F3 Fqs3 F#3 Ftqs3".split()
)

# C3
appoggiato_pitches_c_3 = baca.Sequence(
    "E3 F3  C#3 D3 Dqs3 D#3 Dtqs3 E3  D3 E3 Eqs3 F3 Fqs3".split()
)

# B2
appoggiato_pitches_b_2 = baca.Sequence(
    "D#3 E3  C3 C#3 Ctqs3 D3 Dqs3 D#3  C#3 D#3 Dtqs3 E3 Eqs3".split()
)

# Bb:
appoggiato_pitches_b_flat = baca.Sequence(
    "D5 D#5  B4 C5 Cqs5 C#5 Ctqs5 D5  C5 D5 Dqs5 D#5 Dtqs5".split()
)

# A:
appoggiato_pitches_a = baca.Sequence(
    "C#5 D5  A#4 B4 Bqs4 C5 Cqs5 C#5  B4 C#5 Ctqs5 D5 Dqs5".split()
)

# Ab/G#
appoggiato_pitches_a_flat = baca.Sequence(
    "C5 C#5  A4 A#4 Atqs4 B4 Bqs4 C5  A#4 C5 Cqs5 C#5 Ctqs5".split()
)

# G:
appoggiato_pitches_g = baca.Sequence(
    "B4 C5  G#4 A4 Aqs4 A#4 Atqs4 B4  A4 B4 Bqs4 C5 Cqs5".split()
)

# selectors


def rests_filter_duration(pair):
    def selector(argument):
        result = baca.Selection(argument).rests()
        result = result.filter_duration(*pair)
        return result

    return selector


### FUNCTIONS ###


def appoggiato(
    *,
    divisions=None,
    counts=None,
    extra_counts=None,
    fuse=False,
    incise=False,
    prefix_talea=None,
    prefix_counts=None,
    rest_after=None,
    rest_to=None,
    rest_from=None,
    suffix_talea=None,
    suffix_counts=None,
    tie=None,
    written_quarters=None,
    invisible=None,
    after_graces=None,
):
    """
    Makes appoggiato rhythm.
    """
    preprocessor = None
    if fuse is True:

        def preprocessor(divisions):
            return baca.Sequence(divisions).fuse()

    elif divisions is not None:
        divisions_ = baca.Sequence([(_, 16) for _ in divisions])

        def preprocessor(divisions):
            divisions = baca.Sequence(divisions).fuse()
            divisions = divisions.split_divisions(divisions_, cyclic=True)
            return divisions

    if incise is True:
        prefix_talea = [-1]
        prefix_counts = [1]
    commands = []
    if rest_to:
        selector = baca.selectors.plts((None, rest_to), grace=False)
        force_rest_ = rmakers.force_rest(selector)
        commands.append(force_rest_)
    if rest_from is not None:
        selector = baca.selectors.plts((-rest_from, None), grace=False)
        force_rest_ = rmakers.force_rest(selector)
        commands.append(force_rest_)
    if counts:
        on_beat_ = rmakers.on_beat_grace_container(
            counts, baca.selectors.plts(), leaf_duration=(1, 20)
        )
        commands.append(on_beat_)
    if rest_after is True:
        selector = baca.selectors.plts(grace=False)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    elif rest_after is not None:
        selector = baca.selectors.plts(rest_after, grace=False)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if tie is not None:
        selector = baca.selectors.pleaves(tie)
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if written_quarters is not None:
        selector = baca.selectors.pleaves(written_quarters)
        written_ = rmakers.written_duration(
            (1, 4),
            selector,
        )
        commands.append(written_)
        selector = baca.selectors.leaves(grace=False)
        unbeam_ = rmakers.unbeam(selector)
        commands.append(unbeam_)
    if invisible is not None:
        selector = baca.selectors.pleaves(invisible)
        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if after_graces is not None:
        selector = baca.selectors.pleaf(-1)
        beam_and_slash = None
        if after_graces != [1]:
            beam_and_slash = True
        after_grace_ = rmakers.after_grace_container(
            after_graces,
            selector,
            beam_and_slash=beam_and_slash,
        )
        commands.append(after_grace_)
    return baca.rhythm(
        rmakers.incised(
            extra_counts=extra_counts,
            prefix_talea=prefix_talea,
            prefix_counts=prefix_counts,
            suffix_talea=suffix_talea,
            suffix_counts=suffix_counts,
            talea_denominator=16,
        ),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        *commands,
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=baca.site(inspect.currentframe()),
    )


def phjc(
    divisions,
    counts,
    *,
    extra_counts=None,
    rest=None,
    rest_cyclic=None,
    rest_except=None,
    rest_pleaves=None,
    rest_most=None,
    rest_nonfirst=False,
) -> baca.RhythmCommand:
    """
    Makes purpleheart jerky contintuity.
    """

    def preprocessor(argument):
        argument = baca.Sequence(argument).fuse().quarters().partition(divisions)
        return baca.Sequence(baca.Sequence(_).flatten().fuse() for _ in argument)

    commands = []
    if rest is not None:
        selector = baca.selectors.tuplets(rest)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_cyclic is not None:
        selector = baca.selectors.tuplets(rest_cyclic)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_except is not None:
        selector = baca.selectors.tuplets(~abjad.Pattern(rest_except))
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_most is True:
        selector = baca.selectors.tuplets((None, 1))
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_nonfirst is True:
        selector = baca.selectors.tuplets((1, None))
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_pleaves is not None:
        selector = baca.selectors.pleaves(rest_pleaves)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    return baca.rhythm(
        rmakers.talea(counts, 16, extra_counts=extra_counts),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.denominator((1, 8)),
        rmakers.force_fraction(),
        rmakers.force_repeat_tie((1, 8)),
        rmakers.force_rest(baca.selectors.leaves_in_each_plt(1, None)),
        rmakers.force_rest(baca.selectors.leaf_in_each_tuplet(0)),
        rmakers.beam(),
        rmakers.extract_trivial(),
        frame=inspect.currentframe(),
        preprocessor=preprocessor,
        tag=baca.site(inspect.currentframe()),
    )


def rimbalzandi(*, extra_counts=None, rest_except=None):
    """
    Makes rimbalzandi rhythm.
    """
    commands = []
    if rest_except is not None:

        def selector(argument):
            return baca.Selection(argument).leaves().exclude(rest_except)

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
        preprocessor=lambda _: baca.Sequence(_).fuse([2], cyclic=True),
        tag=baca.site(inspect.currentframe()),
    )


def sixteenths(
    counts,
    *,
    beam=False,
    fuse=False,
    preprocessor=None,
    denominator=(1, 16),
    do_not_rewrite_meter=False,
    extra_counts=None,
    written_eighths=None,
    written_quarters=None,
    written_dotted_quarters=None,
    written_halves=None,
    written_dotted_halves=None,
    written_wholes=None,
    written_dotted_wholes=None,
    written_double_dotted_wholes=None,
    invisible=None,
    invisible_pairs=False,
    talea_denominator=None,
    tie=None,
    tie_runs=False,
    tie_all=False,
    untie=False,
    unbeam=False,
    after_graces=None,
):
    """
    Makes sixteenths rhythm.
    """
    talea_denominator = talea_denominator or 16
    if fuse is True:

        def preprocessor_(argument):
            return baca.Sequence(argument)

    elif preprocessor is None:

        def preprocessor_(argument):
            return baca.Sequence(argument).fuse().quarters()

    else:
        preprocessor_ = preprocessor
    beam_commands = []
    if beam:
        beam_ = rmakers.beam()
        beam_commands.append(beam_)
    commands = []
    if denominator is not None:
        denominator_ = rmakers.denominator(denominator)
        commands.append(denominator_)
    if not do_not_rewrite_meter:
        rewrite_ = rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters
        )
        commands.append(rewrite_)
    if written_eighths is True:
        selector = baca.selectors.pleaves()
        written_ = rmakers.written_duration(
            (1, 8),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_eighths is not None:
        selector = baca.selectors.pleaves(written_eighths)
        written_ = rmakers.written_duration(
            (1, 8),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_quarters is True:
        selector = baca.selectors.pleaves()
        written_ = rmakers.written_duration(
            (1, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_quarters is not None:
        selector = baca.selectors.pleaves(written_quarters)
        written_ = rmakers.written_duration(
            (1, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_quarters is not None:
        selector = baca.selectors.pleaves(written_dotted_quarters)
        written_ = rmakers.written_duration(
            (3, 8),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_halves is True:
        selector = baca.selectors.pleaves()
        written_ = rmakers.written_duration(
            (1, 2),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_halves is not None:
        selector = baca.selectors.pleaves(written_halves)
        written_ = rmakers.written_duration(
            (1, 2),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_halves is not None:
        selector = baca.selectors.pleaves(written_dotted_halves)
        written_ = rmakers.written_duration(
            (3, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_wholes is not None:
        selector = baca.selectors.pleaves(written_wholes)
        written_ = rmakers.written_duration(
            (1, 1),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_wholes is not None:
        selector = baca.selectors.pleaves(written_dotted_wholes)
        written_ = rmakers.written_duration(
            (3, 2),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_double_dotted_wholes is not None:
        selector = baca.selectors.pleaves(written_double_dotted_wholes)
        written_ = rmakers.written_duration(
            (7, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if invisible_pairs is True:
        selector = baca.selectors.pleaves(([1], 2))
        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if invisible is not None:
        selector = baca.selectors.pleaves(invisible)
        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if tie is not None:
        selector = baca.selectors.pleaves(tie)
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if tie_all is True:
        selector = baca.selectors.pleaves((1, None))
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if tie_runs is True:
        selector = baca.selectors.leaves_in_each_run(1, None)
        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if untie is True:
        selector = baca.selectors.leaves()
        untie_ = rmakers.untie(selector)
        commands.append(untie_)
    if unbeam is True:
        selector = baca.selectors.leaves()
        unbeam_ = rmakers.unbeam(selector)
        commands.append(unbeam_)
    if after_graces:
        selector = baca.selectors.leaf_in_each_run(-1)
        beam_and_slash = None
        if after_graces != [1]:
            beam_and_slash = True
        after_grace_ = rmakers.after_grace_container(
            after_graces,
            selector,
            beam_and_slash=beam_and_slash,
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
        tag=baca.site(inspect.currentframe()),
    )


def tessera_1(part, *, advance=0, gap=False):
    """
    Makes tessera 1.
    """
    counts = baca.Sequence([9, 14, 3, 8, 12, 16, 2, 4, 6, 7, 15])
    permutation = baca.Sequence([2, 9, 10, 3, 4, 8, 0, 5, 6, 1, 7])
    assert sum(counts) == 96
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.Sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(boundary_depth=1, reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def tessera_2(part, *, advance=0, gap=False, rest_plts=None):
    """
    Makes tessera 2.
    """
    counts = baca.Sequence([3, 4, 14, 2, 6, 7, 8])
    permutation = baca.Sequence([2, 3, 4, 0, 5, 6, 1])
    assert sum(counts) == 44
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.Sequence(new_counts)
    commands = []
    if rest_plts is not None:
        selector = baca.selectors.plts(rest_plts)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        *commands,
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(boundary_depth=1, reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def tessera_3(part, *, advance=0, gap=False):
    """
    Makes tessera 3.
    """
    counts = baca.Sequence([3, 7, 8, 13, 5, 6, 12, 9, 10, 11])
    permutation = baca.Sequence([8, 9, 2, 3, 4, 0, 5, 6, 7, 1])
    assert sum(counts) == 84
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.Sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(boundary_depth=1, reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def tessera_4(part, *, advance=0, gap=False):
    """
    Makes tessera 4.
    """
    counts = baca.Sequence([14, 15, 3, 4, 12, 28, 2, 5, 6, 16, 24, 7, 8])
    permutation = baca.Sequence([11, 12, 0, 4, 5, 1, 8, 9, 10, 2, 3, 6, 7])
    assert sum(counts) == 144
    for i in range(part):
        counts = counts.permute(permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = baca.Sequence(new_counts)
    return baca.rhythm(
        rmakers.talea(counts, 16, advance=advance),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(boundary_depth=1, reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
    )


def train(counts, *, rest_leaves=None):
    """
    Makes pulse train.
    """
    commands = []
    if rest_leaves is not None:
        selector = baca.selectors.leaves(rest_leaves)
        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    return baca.rhythm(
        rmakers.talea(counts, 16),
        *commands,
        rmakers.extract_trivial(),
        rmakers.beam(
            lambda _: baca.Selection(_).leaves().group(),
        ),
        rmakers.force_repeat_tie((1, 8)),
        frame=inspect.currentframe(),
        tag=baca.site(inspect.currentframe()),
    )


def tuplet(
    ratios,
    *,
    denominator=None,
    force_augmentation=False,
    written_quarters=False,
):
    """
    Makes tuplet.
    """
    commands = []
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
        rmakers.reduce_multiplier(),
        frame=inspect.currentframe(),
    )


def warble(
    *,
    sixteenths=None,
    extra_counts=None,
    rest_tuplets=None,
    rest_tuplets_cyclic=None,
):
    """
    Makes warble rhythm.
    """
    preprocessor = None
    if sixteenths is not None:
        divisions_ = baca.Sequence([(_, 16) for _ in sixteenths])

        def preprocessor(argument):
            argument = baca.Sequence(argument)
            argument = argument.fuse()
            argument = argument.split_divisions(divisions_, cyclic=True)
            return argument

    rests = []
    if rest_tuplets is not None:
        selector = baca.selectors.tuplets(rest_tuplets)
        force_rest_ = rmakers.force_rest(selector)
        rests.append(force_rest_)
    if rest_tuplets_cyclic is not None:
        selector = baca.selectors.tuplets(rest_tuplets_cyclic)
        force_rest_ = rmakers.force_rest(selector)
        rests.append(force_rest_)
    selector = baca.selectors.leaf_in_each_tuplet(0)
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
        tag=baca.site(inspect.currentframe()),
    )


### STAFF POSITIONS ###


def bass_drum_staff_position() -> baca.Suite:
    """
    Sets bass drum staff position (-1), stem down, tuplet bracket up.
    """
    return baca.chunk(
        baca.staff_position(-1),
        baca.stem_down(),
        baca.tuplet_bracket_up(),
    )


def bridge_staff_position() -> baca.Suite:
    """
    Sets bridge position (0), stem down and tuplet bracket up.
    """
    return baca.chunk(
        baca.staff_position(0),
        baca.stem_down(),
        baca.tuplet_bracket_up(),
    )


def brake_drum_staff_position() -> baca.Suite:
    """
    Sets brake drum staff position and stem direction.
    """
    return baca.chunk(baca.staff_position(0), baca.stem_up())


def purpleheart_staff_positions(argument) -> baca.Suite:
    """
    Sets staff position, stem direction, tuplet bracket direction,
    tuplet bracket staff padding.
    """
    assert isinstance(argument, list), repr(argument)
    assert all(_ in (-2, 0, 2) for _ in argument), repr(argument)
    return baca.chunk(
        baca.stem_down(),
        baca.tuplet_bracket_up(),
        baca.tuplet_bracket_staff_padding(0.5),
        baca.staff_positions(
            argument,
            allow_repeats=True,
        ),
    )


def slate_staff_position() -> baca.Suite:
    """
    Sets slate staff position (1), stem down, tuplet bracket up.
    """
    return baca.chunk(
        baca.staff_position(1),
        baca.stem_down(),
        baca.tuplet_bracket_up(),
    )


def tam_tam_staff_position() -> baca.Suite:
    """
    Sets tam-tam staff position (0), stem down, tuplet bracket up.
    """
    return baca.chunk(
        baca.staff_position(0),
        baca.stem_down(),
        baca.tuplet_bracket_up(),
    )


def triangle_staff_position() -> baca.Suite:
    """
    Sets triangle position and stem direction.
    """
    return baca.chunk(baca.staff_position(1), baca.stem_up())


def whisk_staff_position() -> baca.Suite:
    """
    Sets whisk staff position (0), stem down and tuplet bracket up.
    """
    return baca.chunk(
        baca.staff_position(0),
        baca.stem_down(),
        baca.tuplet_bracket_up(),
    )


_always_make_global_rests = True

# _global_rests_in_topmost_staff = True
_global_rests_in_every_staff = True

part_manifest = baca.PartManifest(
    baca.Part(section="BassFlute", section_abbreviation="BFL"),
    baca.Part(section="PercussionI", section_abbreviation="PERC1"),
    baca.Part(section="PercussionII", section_abbreviation="PERC2"),
    baca.Part(section="Harp", section_abbreviation="HP"),
    baca.Part(section="Viola", section_abbreviation="VA"),
    baca.Part(section="CelloI", section_abbreviation="VC1"),
    baca.Part(section="CelloII", section_abbreviation="VC2"),
    baca.Part(section="ContrabassI", section_abbreviation="CB1"),
    baca.Part(section="ContrabassII", section_abbreviation="CB2"),
)

voice_abbreviations = {
    "bfl": "Bass_Flute_Music_Voice",
    "bflr": "Bass_Flute_Rest_Voice",
    "bflx": ["Bass_Flute_Music_Voice", "Bass_Flute_Rest_Voice"],
    "perc1": "Percussion_I_Music_Voice",
    "perc1r": "Percussion_I_Rest_Voice",
    "perc1x": [
        "Percussion_I_Music_Voice",
        "Percussion_I_Rest_Voice",
    ],
    "perc2": "Percussion_II_Music_Voice",
    "perc2r": "Percussion_II_Rest_Voice",
    "perc2x": [
        "Percussion_II_Music_Voice",
        "Percussion_II_Rest_Voice",
    ],
    "hp": "Harp_Music_Voice",
    "hpr": "Harp_Rest_Voice",
    "hpx": ["Harp_Music_Voice", "Harp_Rest_Voice"],
    "va": "Viola_Music_Voice",
    "var": "Viola_Rest_Voice",
    "vax": ["Viola_Music_Voice", "Viola_Rest_Voice"],
    "vc1": "Cello_I_Music_Voice",
    "vc1r": "Cello_I_Rest_Voice",
    "vc1x": ["Cello_I_Music_Voice", "Cello_I_Rest_Voice"],
    "vc2": "Cello_II_Music_Voice",
    "vc2r": "Cello_II_Rest_Voice",
    "vc2x": ["Cello_II_Music_Voice", "Cello_II_Rest_Voice"],
    "cb1": "Contrabass_I_Music_Voice",
    "cb1r": "Contrabass_I_Rest_Voice",
    "cb1x": [
        "Contrabass_I_Music_Voice",
        "Contrabass_I_Rest_Voice",
    ],
    "cb2": "Contrabass_II_Music_Voice",
    "cb2r": "Contrabass_II_Rest_Voice",
    "cb2x": [
        "Contrabass_II_Music_Voice",
        "Contrabass_II_Rest_Voice",
    ],
    "tutti": [
        "Bass_Flute_Music_Voice",
        "Percussion_I_Music_Voice",
        "Percussion_II_Music_Voice",
        "Harp_Music_Voice",
        "Viola_Music_Voice",
        "Cello_I_Music_Voice",
        "Cello_II_Music_Voice",
        "Contrabass_I_Music_Voice",
        "Contrabass_II_Music_Voice",
    ],
}


def make_empty_score():
    site = "harmony.ScoreTemplate.__call__()"
    tag = abjad.Tag(site)
    # GLOBAL CONTEXT
    global_context = baca.score.make_global_context()

    # BASS FLUTE
    bass_flute_music_voice = abjad.Voice(name="Bass_Flute_Music_Voice", tag=tag)
    bass_flute_music_staff = abjad.Staff(
        [bass_flute_music_voice],
        simultaneous=True,
        name="Bass_Flute_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        bass_flute_music_staff,
        "default_instrument",
        instruments["BassFlute"],
    )
    abjad.annotate(bass_flute_music_staff, "default_clef", abjad.Clef("treble"))
    baca.score.attach_lilypond_tag("BassFlute", bass_flute_music_staff)

    # PERCUSSION 1
    percussion_1_music_voice = abjad.Voice(name="Percussion_I_Music_Voice", tag=tag)
    percussion_1_music_staff = abjad.Staff(
        [percussion_1_music_voice],
        simultaneous=True,
        name="Percussion_I_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        percussion_1_music_staff,
        "default_instrument",
        instruments["Percussion"],
    )
    abjad.annotate(percussion_1_music_staff, "default_clef", abjad.Clef("treble"))
    baca.score.attach_lilypond_tag("PercussionI", percussion_1_music_staff)

    # PERCUSSION 2
    percussion_2_music_voice = abjad.Voice(name="Percussion_II_Music_Voice", tag=tag)
    percussion_2_music_staff = abjad.Staff(
        [percussion_2_music_voice],
        simultaneous=True,
        name="Percussion_II_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        percussion_2_music_staff,
        "default_instrument",
        instruments["Percussion"],
    )
    abjad.annotate(percussion_2_music_staff, "default_clef", abjad.Clef("treble"))
    baca.score.attach_lilypond_tag("PercussionII", percussion_2_music_staff)

    # HARP
    harp_music_voice = abjad.Voice(name="Harp_Music_Voice", tag=tag)
    harp_music_staff = abjad.Staff(
        [harp_music_voice],
        simultaneous=True,
        name="Harp_Music_Staff",
        tag=tag,
    )
    abjad.annotate(harp_music_staff, "default_instrument", instruments["Harp"])
    abjad.annotate(harp_music_staff, "default_clef", abjad.Clef("treble"))
    baca.score.attach_lilypond_tag("Harp", harp_music_staff)

    # VIOLA
    viola_music_voice = abjad.Voice(name="Viola_Music_Voice", tag=tag)
    viola_music_staff = abjad.Staff(
        [viola_music_voice],
        simultaneous=True,
        name="Viola_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        viola_music_staff,
        "default_instrument",
        instruments["Viola"],
    )
    abjad.annotate(viola_music_staff, "default_clef", abjad.Clef("alto"))
    baca.score.attach_lilypond_tag("Viola", viola_music_staff)

    # CELLO 1
    cello_1_music_voice = abjad.Voice(name="Cello_I_Music_Voice", tag=tag)
    cello_1_music_staff = abjad.Staff(
        [cello_1_music_voice],
        simultaneous=True,
        name="Cello_I_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        cello_1_music_staff,
        "default_instrument",
        instruments["Cello"],
    )
    abjad.annotate(cello_1_music_staff, "default_clef", abjad.Clef("bass"))
    baca.score.attach_lilypond_tag("CelloI", cello_1_music_staff)

    # CELLO 2
    cello_2_music_voice = abjad.Voice(name="Cello_II_Music_Voice", tag=tag)
    cello_2_music_staff = abjad.Staff(
        [cello_2_music_voice],
        simultaneous=True,
        name="Cello_II_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        cello_2_music_staff,
        "default_instrument",
        instruments["Cello"],
    )
    abjad.annotate(cello_2_music_staff, "default_clef", abjad.Clef("bass"))
    baca.score.attach_lilypond_tag("CelloII", cello_2_music_staff)

    # CONTRABASS 1
    contrabass_1_music_voice = abjad.Voice(name="Contrabass_I_Music_Voice", tag=tag)
    contrabass_1_music_staff = abjad.Staff(
        [contrabass_1_music_voice],
        simultaneous=True,
        name="Contrabass_I_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        contrabass_1_music_staff,
        "default_instrument",
        instruments["Contrabass"],
    )
    abjad.annotate(contrabass_1_music_staff, "default_clef", abjad.Clef("bass"))
    baca.score.attach_lilypond_tag("ContrabassI", contrabass_1_music_staff)

    # CONTRABASS 2
    contrabass_2_music_voice = abjad.Voice(name="Contrabass_II_Music_Voice", tag=tag)
    contrabass_2_music_staff = abjad.Staff(
        [contrabass_2_music_voice],
        simultaneous=True,
        name="Contrabass_II_Music_Staff",
        tag=tag,
    )
    abjad.annotate(
        contrabass_2_music_staff,
        "default_instrument",
        instruments["Contrabass"],
    )
    abjad.annotate(contrabass_2_music_staff, "default_clef", abjad.Clef("bass"))
    baca.score.attach_lilypond_tag("ContrabassII", contrabass_2_music_staff)

    # WIND SECTION STAFF GROUP
    wind_section_staff_group = abjad.StaffGroup(
        [bass_flute_music_staff],
        lilypond_type="WindSectionStaffGroup",
        name="Wind_Section_Staff_Group",
        tag=tag,
    )

    # PERCUSSION SECTION STAFF GROUP
    percussion_section_staff_group = abjad.StaffGroup(
        [
            percussion_1_music_staff,
            percussion_2_music_staff,
            harp_music_staff,
        ],
        lilypond_type="PercussionSectionStaffGroup",
        name="Percussion_Section_Staff_Group",
        tag=tag,
    )

    # STRING SECTION STAFF GROUP
    string_section_staff_group = abjad.StaffGroup(
        [
            viola_music_staff,
            cello_1_music_staff,
            cello_2_music_staff,
            contrabass_1_music_staff,
            contrabass_2_music_staff,
        ],
        lilypond_type="StringSectionStaffGroup",
        name="String_Section_Staff_Group",
        tag=tag,
    )

    # MUSIC CONTEXT
    music_context = abjad.Context(
        [
            wind_section_staff_group,
            percussion_section_staff_group,
            string_section_staff_group,
        ],
        lilypond_type="MusicContext",
        simultaneous=True,
        name="Music_Context",
        tag=tag,
    )

    # SCORE
    score = abjad.Score([global_context, music_context], name="Score", tag=tag)
    baca.score.assert_lilypond_identifiers(score)
    baca.score.assert_unique_context_names(score)
    baca.score.assert_matching_custom_context_names(score)
    return score


def margin_markup(
    key,
    *,
    alert=None,
    context="Staff",
    selector=baca.selectors.leaf(0),
):
    """
    Makes tagged margin markup indicator command.
    """
    margin_markup = margin_markups[key]
    command = baca.margin_markup(
        margin_markup,
        alert=alert,
        context=context,
        selector=selector,
    )
    return baca.not_parts(command)
