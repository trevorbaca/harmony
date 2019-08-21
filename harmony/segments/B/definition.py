import abjad
import baca
import harmony
import os


###############################################################################
##################################### [B] #####################################
###############################################################################

stage_markup = (
    ("[B.1-5]", 1),
    ("[A.2]", 6, "darkgreen"),
    ("[C.1]", 7, "blue"),
    ("[B.6]", 8),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (5, 4), (4, 4), (5, 4), (4, 4),
        (5, 4), (3, 4),
        (5, 4), (5, 4), (5, 4), (5, 4),
        (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=12,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "B",
        baca.skip(1 - 1),
        abjad.tweak((0, 9)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(8)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(6 - 1)),
    baca.metronome_mark("4.=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(7 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("5:4(8)=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(12 - 1)),
)

# bfl

# perc1

# perc2

maker(
    ("perc2", (1, 5)),
    baca.make_repeat_tied_notes(),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    # TODO: specify staff position instead of pitch:
    baca.flat_glissando(0, hide_middle_stems=True),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("p"),
)

# hp

# va

divisions = [4, 5, 3, 3, 3, 4]

maker(
    ("va", (1, 5)),
    harmony.string_appoggiato(divisions, [2, 3, 4, 5, 6, 7]),
)

# vc1

maker(
    ("vc1", (1, 5)),
    harmony.string_appoggiato(divisions, [3, 4, 5, 6, 7], rotation=-1, rest=1),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc2

maker(
    ("vc2", (1, 5)),
    harmony.string_appoggiato(divisions, [4, 5, 6, 7], rotation=-2, rest=2),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb1

maker(
    ("cb1", (1, 5)),
    harmony.string_appoggiato(divisions, [5, 6, 7], rotation=-3, rest=3),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb2

maker(
    ("cb2", (1, 5)),
    harmony.string_appoggiato(divisions, [6, 7], rotation=-4, rest=4),
    baca.staff_position(0, not_yet_pitched=True),
)
