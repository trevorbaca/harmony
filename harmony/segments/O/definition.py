import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [O] #####################################
###############################################################################

stage_markup = (
    ("[O.1-2]", 1),
    ("[◀L.3]", 3, "darkgreen"),
    ("[◀L.4]", 4, "darkgreen"),
    ("[O.3-4]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (3, 4), (3, 4),
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (2, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "O",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
)

# bfl

# perc1

maker(
    ("perc1", 3),
    baca.staff_lines(5),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

# perc2

maker(
    ("perc2", 5),
    baca.staff_lines(3),
)

# hp

# va

# vc1

# vc2

# cb1

# cb2
