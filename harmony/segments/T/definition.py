import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [T] #####################################
###############################################################################

stage_markup = (
    ("[▶U.1]", 1, "darkgreen"),
    ("[▶V.3]", 2, "darkgreen"),
    ("[T.1-8]", 3),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "T",
        baca.skip(3 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
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

# perc2

# hp

# va

# vc1

# vc2

# cb1

# cb2

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    baca.staff_lines(1),
)
