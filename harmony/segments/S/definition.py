import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [S] #####################################
###############################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[◀R.1]", 2, "darkgreen"),
    ("[S.2-3]", 4),
    ("[▶T.1]", 11, "darkgreen"),
    ("[S.4]", 12),
    ("[▶T.1]", 13, "darkgreen"),
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
        (5, 4), (4, 4), (5, 4), (4, 4), (5, 4), (4, 4), (1, 4),
        (4, 4), (5, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "S",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.chunk(
        baca.bar_line_x_extent((-1, 3), baca.skip(0)),
        baca.volta(),
        measures=1,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(11 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(11 - 1)),
    baca.metronome_mark("96", baca.skip(12 - 1)),
    baca.metronome_mark("4.=4", baca.skip(12 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(10 - 1)),
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
