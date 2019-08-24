import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [V] #####################################
###############################################################################

stage_markup = (
    ("[V.1]", 1),
    ("[◀T.1]", 4, "darkgreen"),
    ("[V.4-5]", 5),
    ("[V.6]", 12),
    ("[◀T.2]", 13, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[11],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (3, 4), (4, 4),
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (1, 4),
        (3, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "V",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(4 - 1)),
    baca.metronome_mark("8=4", baca.skip(4 - 1)),
    baca.metronome_mark("72", baca.skip(5 - 1)),
    baca.metronome_mark("2=4", baca.skip(5 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("8=4", baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(11 - 1)),
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

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.staff_lines(1),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 13),
    baca.staff_lines(1),
)
