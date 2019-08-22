import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [D] #####################################
###############################################################################

stage_markup = (
    ("[D.1-6]", 1),
    ("[D.7]", 8),
    ("[◀B.6]", 9, "darkgreen"),
    ("[D.8]", 10),

)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (1, 4),
        (3, 4), (5, 4), (1, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "D",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(9 - 1)),
    baca.metronome_mark("8=4", baca.skip(9 - 1)),
    baca.metronome_mark("72", baca.skip(11 - 1)),
    baca.metronome_mark("2=4", baca.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(7 - 1)),
    baca.global_fermata("short", baca.rest(10 - 1)),
)

# bfl

# perc1

# perc2

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
)

# va

# vc1

# vc2

# cb1

# cb2
