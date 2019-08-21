import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [F] #####################################
###############################################################################

stage_markup = (
    ("[F.1]", 1),
    ("[G.1]", 3, "darkgreen"),
    ("[F.2]", 4),
    ("[G.1]", 5, "darkgreen"),
    ("[F.3-4]", 6),
    ("[C.4]", 8, "darkgreen"),
    ("[F.5-6]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (1, 4),
        (4, 4), (4, 4), (4, 4),
        (5, 4), (4, 4), (3, 4), (1, 4),
        (5, 4), (4, 4), (5, 4), (4, 4), (5, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "F",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(3 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(8 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(9 - 1)),
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
