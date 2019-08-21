import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [M] #####################################
###############################################################################

stage_markup = (
    ("[M.1]", 1),
    ("[M.2]", 3),
    ("[◀J.6]", 4, "darkgreen"),
    ("[◀L.4]", 5, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (1, 4), (6, 4),
        (6, 4), (3, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=6,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "M",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.skip(4 - 1)),
    baca.metronome_mark("96", baca.skip(5 - 1)),
    baca.metronome_mark("8=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("short", baca.rest(6 - 1)),
)

# bfl

# perc1

# perc2

# hp

# va

# vc1

# vc2

# cb1

# cb2
