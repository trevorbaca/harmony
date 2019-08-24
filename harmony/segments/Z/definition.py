import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Z] #####################################
###############################################################################

stage_markup = (
    ("[Z.1-2]", 1),
    ("[▶CC.1]", 4, "darkgreen"),
    ("[Z.3-5]", 5),
    ("[◀X.6]", 8, "darkgreen"),
    ("[◀Y.2]", 9, "darkgreen"),
    ("[Z.6]", 10),
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
        (4, 4), (4, 4), (1, 4),
        (6, 4), (4, 4), (4, 4), (4, 4), (4, 4), (6, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Z",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(4 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("96", baca.skip(5 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(8 - 1)),
    baca.metronome_mark("2=4", baca.skip(8 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(9 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(9 - 1)),
    baca.metronome_mark("96", baca.skip(10 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# bfl

# perc1

# perc2

maker(
    ("perc2", 8),
    baca.staff_lines(3),
)

maker(
    ("perc2", 9),
    baca.staff_lines(1),
)

# hp

# va

# vc1

# vc2

# cb1

# cb2
