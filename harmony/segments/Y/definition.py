import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Y] #####################################
###############################################################################

stage_markup = (
    ("[▶AA.1]", 1, "darkgreen"),
    ("[Y.1]", 2),
    ("[◀X.6]", 3, "darkgreen"),
    ("[Y.2]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[4, 11],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (6, 4), (4, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Y",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(4 - 1)),
    baca.global_fermata("fermata", baca.rest(11 - 1)),
)

# bfl

# perc1

# perc2

maker(
    ("perc2", 2),
    baca.staff_lines(1),
)

maker(
    ("perc2", 3),
    baca.staff_lines(3),
)

maker(
    ("perc2", 5),
    baca.staff_lines(1),
)

# hp

# va

# vc1

# vc2

# cb1

# cb2
