import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [K] #####################################
###############################################################################

stage_markup = (
    ("[▶L.1]", 1, "darkgreen"),
    ("[K.1]", 2),
    ("[K.2-3]", 4),
    ("[◀I.1]", 6, "darkgreen"),
    ("[▶L.4]", 7, "darkgreen"),
    ("[▶L.6]", 8, "darkgreen"),
    ("[K.4]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (4, 4), (1, 4),
        (4, 4), (4, 4), (6, 4), (3, 4), (3, 4), (1, 4),
        (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "K",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("8=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(6 - 1)),
    baca.metronome_mark("8=4", baca.skip(6 - 1)),
    baca.metronome_mark("96", baca.skip(7 - 1)),
    baca.metronome_mark("4.=4", baca.skip(7 - 1)),
    baca.metronome_mark("72", baca.skip(10 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# bfl

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(5),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
    harmony.sixteenths([-8, 2, 2, "-"]),
    baca.repeat_tie(baca.pleaf(-1)),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(r"\baca-triangle-markup", literal=True),
)

maker(
    ("perc1", (4, 5)),
    harmony.sixteenths([2, 2, 8, 2, 2, 2, 2, 8, 2, -2]),
    baca.flat_glissando(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< p > pp -- (pp) < mp > pp -- !",
        bookend=False,
        pieces=baca.lparts([1, 1, 2, 1, 1, 3, 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("perc1", 10),
    harmony.sixteenths([2, 2, 4, 2, 2, 2, 2]),
    baca.stem_tremolo(baca.pheads()),
    baca.flat_glissando(),
    harmony.triangle_staff_position(),
    baca.hairpin(
        "o< p > pp -- ! < p > pp < p >o niente",
        abjad.tweak(10).staff_padding,
        pieces=baca.lparts([1, 1, 1, 1, 1, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

# perc2

maker(
    ("perc2", 2),
    harmony.sixteenths([-2, 10, "-"]),
    harmony.tam_tam_staff_position(),
    baca.accent(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp"),
)

maker(
    ("perc2", (4, 5)),
    harmony.sixteenths([14, -4, 12, -2]),
    harmony.tam_tam_staff_position(),
    baca.accent(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

maker(
    ("perc2", 10),
    harmony.sixteenths([6, -4, 4, -2]),
    harmony.tam_tam_staff_position(),
    baca.accent(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp"),
)

# hp

maker(
    ("hp", 2),
    harmony.sixteenths([-2, 10, "-"]),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.accent(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp"),
)

maker(
    ("hp", (4, 5)),
    harmony.sixteenths([14, -4, 12, -2]),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.accent(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

maker(
    ("hp", 10),
    harmony.sixteenths([6, -4, 4, -2]),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.accent(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp"),
)

# va

# vc1

# vc2

# cb1

# cb2

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths([-8, 2, 2, "-"]),
    baca.repeat_tie(baca.pleaf(-1)),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.note_head_style_harmonic(),
    baca.trill_spanner("M2", harmonic=True),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 5)),
    harmony.sixteenths([2, 2, 8, 2, 2, 2, 2, 8, 2, -2]),
    baca.hairpin(
        "o< mp > pp -- (pp) < mp > pp -- !",
        bookend=False,
        pieces=baca.lparts([1, 1, 2, 1, 1, 3, 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.flat_glissando(),
    baca.note_head_style_harmonic(),
    baca.trill_spanner("M2", harmonic=True),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 10),
    harmony.sixteenths([2, 2, 4, 2, 2, 2, 2]),
    baca.hairpin(
        "o< mp > pp -- ! < mp > pp < mp >o niente",
        pieces=baca.lparts([1, 1, 1, 1, 1, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.flat_glissando(),
    baca.note_head_style_harmonic(),
    baca.trill_spanner("M2", harmonic=True),
)
