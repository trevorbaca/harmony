import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [G] #####################################
###############################################################################

stage_markup = (
    ("[G.1]", 1),
    ("[▶H.1]", 2, "darkgreen"),
    ("[G.2-3]", 4),
    ("[◀F.3]", 6, "darkgreen"),
    ("[▶I.1]", 7, "darkgreen"),
    ("[G.4]", 8),
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
        (4, 4), (4, 4), (5, 4), (6, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "G",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(2 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(4 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("48", baca.skip(5 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("144", baca.skip(6 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(7 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(7 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# bfl

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
)

maker(
    ("perc1", 4),
    baca.staff_lines(3),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
)

maker(
    ("perc1", 8),
    baca.staff_lines(3),
)

# perc2

# hp

# va

# vc1

# vc2

# cb1

# cb2
