import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [AA] ####################################
###############################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[◀X.6]", 3, "darkgreen"),
    ("[AA.2-3]", 4),
    ("[◀Y.2]", 6, "darkgreen"),
    ("[▶CC.1]", 7, "darkgreen"),
    ("[AA.4]", 13),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (1, 4),
        (7, 4), (7, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (7, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "AA",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("2.=4", baca.skip(3 - 1)),
    baca.metronome_mark("144", baca.skip(4 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(6 - 1)),
    baca.metronome_mark("72", baca.skip(7 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("8=4", baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(12 - 1)),
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