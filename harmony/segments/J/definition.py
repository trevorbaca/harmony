import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [J] #####################################
###############################################################################

stage_markup = (
    ("[J.1]", 1),
    ("[▶K.1]", 2, "darkgreen"),
    ("[◀I.1]", 3, "darkgreen"),
    ("[J.2-5]", 4),
    ("[◀I.1]", 8, "darkgreen"),
    ("[J.6]", 10),
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
        (6, 4), (4, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "J",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("2.=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
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
