import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [L] #####################################
###############################################################################

stage_markup = (
    ("[L.1]", 1),
    ("[▶M.1]", 2, "darkgreen"),
    ("[L.2-3]", 3),
    ("[◀J.6]", 10, "darkgreen"),
    ("[L.4-5]", 11),
    ("[L.6-8]", 13),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (5, 4),
        (3, 4), (5, 4), (3, 4), (5, 4), (3, 4), (5, 4), (1, 4),
        (6, 4),
        (3, 4), (4, 4),
        (3, 4), (3, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "L",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(3 - 1)),
    baca.metronome_mark("4.=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("2=4", baca.skip(10 - 1)),
    baca.metronome_mark("96", baca.skip(11 - 1)),
    baca.metronome_mark("8=4", baca.skip(11 - 1)),
)

maker(
    "Global_Skips",
    baca.chunk(
        baca.bar_line_x_extent((-1, 3), baca.skip(0)),
        baca.bar_line_x_extent((-2, 2), baca.skip(-1), after=True),
        baca.volta(),
        measures=(11, 12),
    ),
    baca.chunk(
        baca.bar_line_x_extent((-1, 3), baca.skip(0)),
        baca.only_score(
            baca.bar_line_x_extent((-2, 2), baca.skip(-1), after=True),
        ),
        baca.volta(),
        measures=(13, 15),
    ),
)

maker(
    "Global_Rests",
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
    baca.staff_lines(3),
)

maker(
    ("perc1", 3),
    baca.staff_lines(5),
)

maker(
    ("perc1", 10),
    baca.staff_lines(1),
)

# perc2

maker(
    ("perc2", 2),
    baca.staff_lines(3),
)

maker(
    ("perc2", 3),
    baca.staff_lines(1),
)

# hp

# va

# vc1

# vc2

# cb1

# cb2
