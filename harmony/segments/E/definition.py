import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [E] #####################################
###############################################################################

stage_markup = (
    ("[▶F.3]", 1, "darkgreen"),
    ("[◀C.4]", 2, "darkgreen"),
    ("[◀D.1]", 3, "darkgreen"),
    ("[E.1-2]", 4),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (3, 4), (4, 4),
        (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=5,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "E",
        baca.skip(4 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("72", baca.skip(3 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(4 - 1)),
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
