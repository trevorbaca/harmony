import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [CC] ####################################
###############################################################################

stage_markup = (
    ("[CC.1-2]", 1),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (6, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=3,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "CC",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("very_long", baca.rest(3 - 1)),
)

# bfl

maker(
    ("bfl", (1, 2)),
    harmony.sixteenths(
        [4, 4, 16],
        None,
        rmakers.repeat_tie(baca.pleaves()[1:]),
    ),
    baca.trill_spanner(),
    baca.text_spanner(
        "(T) -> A -> (T)",
        abjad.tweak(5.5).staff_padding,
        measures=1,
        pieces=baca.lparts([1, 1 + 1]),
    ),
    baca.text_spanner(
        "(T) -> A -> (T)",
        abjad.tweak(5.5).staff_padding,
        measures=2,
        pieces=baca.lparts([1, 1 + 1]),
    ),
    baca.hairpin(
        "pp < p > pp",
        pieces=baca.lparts([1, 1 + 1]),
        measures=1,
    ),
    baca.hairpin(
        "ppp < pp >o niente",
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.leaves().rleak(),
        measures=2,
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths([1, -22, 1]),
    harmony.brake_drum_staff_position(),
    baca.markup(r"\baca-brake-drum-markup", literal=True),
    baca.dynamic("f"),
    baca.dynamic("mp", selector=baca.phead(-1)),
    baca.accent(baca.pheads()),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(1),
    harmony.sixteenths([1, -22, 1]),
    harmony.bass_drum_staff_position(),
    baca.markup(r"\baca-bd-struck-markup", literal=True),
    baca.dynamic("mp", selector=baca.pheads()),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(),
    baca.articulation(r"baca-damp", baca.leaves().rleak()[-1]),
)

maker(
    ("perc2", 2),
    harmony.bass_drum_staff_position(),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths([1, -22, 1]),
    baca.markup(r"\baca-soundboard-pizz-markup", literal=True),
    baca.dynamic("f"),
    baca.dynamic("mp", selector=baca.phead(-1)),
    baca.accent(baca.pheads()),
)

# va

# vc1

# vc2

# cb1

# cb2

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    harmony.sixteenths(
        [4, 4, 16],
        None,
        rmakers.repeat_tie(baca.pleaves()[1:]),
    ),
    baca.trill_spanner(),
    baca.hairpin(
        "pp < p > pp",
        pieces=baca.lparts([1, 1 + 1]),
        measures=1,
    ),
    baca.hairpin(
        "ppp < pp >o niente",
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.leaves().rleak(),
        measures=2,
    ),
    baca.staff_position(0, not_yet_pitched=True),
)
