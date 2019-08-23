import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [N] #####################################
###############################################################################

stage_markup = (
    ("[N.1-2]", 1),
    ("[▶O.1]", 4, "darkgreen"),
    ("[◀M.1]", 5, "darkgreen"),
    ("[N.3-6]", 6),
    ("[▶P.1]", 11, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 10],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (1, 4),
        (4, 4), (5, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (1, 4),
        (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "N",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(5 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(6 - 1)),
    baca.metronome_mark("96", baca.skip(11 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("short", baca.rest(10 - 1)),
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
