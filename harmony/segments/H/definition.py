import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [H] #####################################
###############################################################################

stage_markup = (
    ("[H.1-6]", 1),
    ("[H.7-8]", 8),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[7],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (4, 4), (3, 4), (4, 4), (3, 4), (4, 4), (1, 4),
        (3, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=9,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "H",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(1 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("short", baca.rest(7 - 1)),
)

# bfl

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(1),
)

maker(
    ("perc1", (1, 6)),
    harmony.sixteenths([1, -11, -1, 1, -14]),
    baca.accent(baca.pheads()),
    baca.dynamic("f-ancora", abjad.tweak(-0.75).self_alignment_X),
    baca.markup(r"\baca-brake-drum-markup", literal=True),
)

# perc2

maker(
    ("perc2", (1, 6)),
    baca.make_notes(),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaf(-1)),
)

maker(
    ("perc2", (8, 9)),
    baca.make_notes(),
    baca.flat_glissando(hide_middle_stems=True),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        #written_dotted_halves=([0, 1], 3),
    ),
    baca.pitch("<A4 B4 C5>", mock=True),
    baca.stem_tremolo(baca.pleaves()),
    baca.markup(r"\baca-bisb-markup", literal=True),
    baca.hairpin(
        "p < mf > p",
        measures=1,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < f > p",
        measures=3,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff > p",
        measures=5,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("hp", (8, 9)),
    baca.make_notes(),
    baca.pitch("<A4 B4 C5>", mock=True),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("pp"),
)

# va

maker(
    ("va", (1, 9)),
    baca.pitch(
        "<B3 C4 D4>",
        baca.plts(exclude=abjad.const.HIDDEN),
        mock=True,
    ),
)

# vc1

maker(
    ("vc1", (1, 9)),
    baca.pitch(
        "<C3 D3 E3>",
        baca.plts(exclude=abjad.const.HIDDEN),
        mock=True,
    ),
)

# vc2

maker(
    ("vc2", (1, 9)),
    baca.pitch(
        "<C3 D3 E3>",
        baca.plts(exclude=abjad.const.HIDDEN),
        mock=True,
    ),
)

# cb1

maker(
    ("cb1", (1, 9)),
    baca.pitch(
        "<C2 D2 E2>",
        baca.plts(exclude=abjad.const.HIDDEN),
        mock=True,
        ),
)

# cb2

maker(
    ("cb2", (1, 9)),
    baca.pitch(
        "<C2 D2 E2>",
        baca.plts(exclude=abjad.const.HIDDEN),
        mock=True,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 6)),
    harmony.tuplet([(1,), (1, 1)]),
    baca.stem_tremolo(baca.pleaves(exclude=abjad.const.HIDDEN)),
    baca.markup(r"\baca-quasi-bisb-markup", literal=True),
    baca.hairpin(
        "p < mf > p",
        measures=2,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff >o niente",
        measures=6,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 9)),
    baca.make_notes(),
    baca.stem_tremolo(baca.pleaves(exclude=abjad.const.HIDDEN)),
    baca.markup(r"\baca-quasi-bisb-ancora-markup", literal=True),
    baca.dynamic("pp"),
)
