import abjad
import baca
import harmony
import os


###############################################################################
##################################### [B] #####################################
###############################################################################

stage_markup = (
    ("[B.1]", 1),
    )

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
        ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        ],
    transpose_score=True,
    validate_measure_count=20,
    )

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "B",
        abjad.tweak((0, 9)).extra_offset,
        selector=baca.skip(1 - 1),
        ),
    )

maker(
    "Global_Skips",
    baca.metronome_mark(
        "144",
        selector=baca.skip(1 - 1),
        ),
    )

maker(
    "Global_Rests",
    )
