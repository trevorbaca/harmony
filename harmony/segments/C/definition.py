import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [C] #####################################
###############################################################################

stage_markup = (
    ("[C.1]", 1),
    ("[▶D.1]", 2, "darkgreen"),
    ("[▶F.3]", 3, "darkgreen"),
    ("[C.2-4]", 4),

)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4),
        (3, 4), (1, 4), (3, 4), (1, 4),
        (5, 4), (4, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "C",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("4.=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(5 - 1)),
)

# bfl

# perc1

# perc2

# hp

maker(
    ("hp", 1),
    baca.clef("bass"),
    harmony.durata([5, -2]),
    baca.chunk(
        baca.staff_position(-14, not_yet_pitched=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(),
    baca.articulation(r"baca-damp", baca.rest(0)),
)

# va

# vc1

# vc2

maker(
    ("vc2", 1),
    harmony.durata([5, -2], grace=True, untie=True),
    baca.interpolate_staff_positions(0, 1, not_yet_pitched=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

# cb1

# cb2

maker(
    ("cb2", 1),
    harmony.durata([5, -2], grace=True, untie=True),
    baca.interpolate_staff_positions(-7, -6, not_yet_pitched=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)
