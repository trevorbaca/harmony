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
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
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

# perc2

# hp

# va

# vc1

# vc2

# cb1

# cb2
