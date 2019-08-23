import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [R] #####################################
###############################################################################

stage_markup = (
    ("[R.1-2]", 1),
    ("[▶S.1]", 3, "darkgreen"),
    ("[◀P.7-8]", 4, "darkgreen"),
    ("[◀Q.1]", 6, "darkgreen"),
    ("[R.3]", 8),
    ("[R.4-6]", 9),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[7],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (3, 4), (4, 4), (3, 4), (3, 4), (6, 4), (1, 4),
        (4, 4), (3, 4), (4, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "R",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(3 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("2=4", baca.skip(6 - 1)),
    baca.metronome_mark("72", baca.skip(8 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(7 - 1)),
)

# bfl

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(1),
)

maker(
    ("perc1", 3),
    baca.staff_lines(3),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 6),
    baca.staff_lines(5),
)

maker(
    ("perc1", 8),
    baca.staff_lines(1),
)

# perc2

maker(
    ("perc2", 3),
    baca.staff_lines(3),
)

maker(
    ("perc2", 4),
    baca.staff_lines(1),
)

# hp

# va

# vc1

# vc2

# cb1

# cb2
