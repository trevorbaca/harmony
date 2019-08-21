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
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
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

# perc2

# hp

# va

# vc1

# vc2

# cb1

# cb2
