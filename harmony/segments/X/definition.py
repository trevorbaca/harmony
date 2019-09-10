import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [X] #####################################
###############################################################################

stage_markup = (
    ("[X.1-3]", 1),
    ("[◀V.6]", 4, "darkgreen"),
    ("[X.4-5]", 5),
    ("[X.6-8]", 7),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (4, 4), (3, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (5, 4),
    ],
    transpose_score=True,
    validate_measure_count=9,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "X",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(4 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("48", baca.skip(5 - 1)),
    baca.metronome_mark("4.=4", baca.skip(5 - 1)),
)

# bfl

maker(
    ("bfl", (1, 3)),
    harmony.sixteenths([2, 3, -3]),
    baca.staff_position(0, not_yet_pitched=True),
    baca.hairpin(
        "niente o< mf >o",
        pieces=baca.lparts([1, 2 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(5.5).staff_padding,
        pieces=baca.lparts([1, 2 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("bfl", (5, 8)),
    harmony.sixteenths([2, 2, -2]),
    baca.staff_position(0, not_yet_pitched=True),
    baca.hairpin(
        "niente o< p >o",
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(5.5).staff_padding,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# perc1

maker(
    ("perc1", (1, 3)),
    harmony.sixteenths([5, -3]),
    harmony.slate_staff_position(),
    baca.markup(r"\baca-slate-scrape-markup", literal=True),
    baca.dynamic("mp"),
)

maker(
    ("perc1", (5, 8)),
    harmony.sixteenths([3, -3]),
    harmony.slate_staff_position(),
    baca.markup(r"\baca-slate-scrape-markup", literal=True),
    baca.dynamic("p"),
)

maker(
    ("perc1", 9),
    harmony.sixteenths([19, -1]),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "p >o niente",
    ),
    harmony.tam_tam_staff_position(),
    baca.markup(r"\baca-tam-tam-markup", literal=True),
)

# perc2

maker(
    ("perc2", (1, 3)),
    harmony.sixteenths([2, -8, 2, -3, 2, -8]),
    harmony.bass_drum_staff_position(),
    baca.markup(r"\baca-bd-superball-markup", literal=True),
    baca.hairpin(
        "o<| mf",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("perc2", 5),
    baca.staff_lines(3),
    harmony.sixteenths([1, -99]),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
    baca.accent(),
    baca.dynamic("f"),
)

maker(
    ("perc2", 9),
    harmony.sixteenths([1, -99]),
    baca.accent(),
    baca.dynamic("f-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# hp

maker(
    ("hp", (1, 3)),
    harmony.sixteenths([1, -9, 1, -4, 1, -9]),
    baca.markup(r"\baca-pdlt-markup", literal=True),
    baca.dynamic("mf", selector=baca.pheads().get([0], 3)),
    baca.dynamic("mp", selector=baca.pheads().get([1], 3)),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("hp", (5, 8)),
    harmony.sixteenths([3, -3]),
    baca.markup(r"\baca-whisk-markup", literal=True),
    baca.dynamic("p"),
)

# va

maker(
    ("va", 1),
    baca.clef("alto"),
)

maker(
    ("va", (5, 9)),
    harmony.tessera_3(4),
)

# vc1

maker(
    ("vc1", 1),
    baca.clef("bass"),
)

maker(
    ("vc1", (5, 9)),
    harmony.tessera_3(3),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("bass"),
)

maker(
    ("vc2", (5, 9)),
    harmony.tessera_3(2),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
)

maker(
    ("cb1", (5, 9)),
    harmony.tessera_3(1),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
)

maker(
    ("cb2", (5, 9)),
    harmony.tessera_3(0),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 3)),
    baca.staff_lines(5),
    harmony.sixteenths(
        [2, 2, -10],
        None,
        rmakers.repeat_tie(baca.pleaves().get([1], 2)),
    ),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.staff_position(0, not_yet_pitched=True),
    baca.note_head_style_harmonic(),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 9)),
    baca.staff_position(0, not_yet_pitched=True),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
    baca.dynamic("pp"),
    baca.label(abjad.label().with_durations(denominator=16)),
)
