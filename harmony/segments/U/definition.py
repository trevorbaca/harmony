import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [U] #####################################
###############################################################################

stage_markup = (
    ("[▶W.4]", 1, "darkgreen"),
    ("[U.1]", 2),
    ("[▶W.4]", 4, "darkgreen"),
    ("[U.2]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (3, 4), (1, 4),
        (4, 4), (5, 5),
    ],
    transpose_score=True,
    validate_measure_count=5,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "U",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.chunk(
        baca.bar_line_x_extent((-1, 3), baca.skip(0)),
        baca.volta(),
        measures=(1, 3),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
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
