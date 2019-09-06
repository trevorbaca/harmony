import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Q] #####################################
###############################################################################

stage_markup = (
    ("[Q.1]", 1),
    ("[▶S.1]", 2, "darkgreen"),
    ("[◀O.4]", 4, "darkgreen"),
    ("[Q.2]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 6],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (4, 4), (1, 4), (2, 4), (5, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=6,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Q",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(2 - 1)),
    baca.metronome_mark("8=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(5 - 1)),
    baca.metronome_mark("2=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(6 - 1)),
)

# bfl

# perc1

maker(
    ("perc1", 1),
    baca.make_notes(),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.markup(r"\baca-glockenspiel-markup", literal=True),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
)

maker(
    ("perc1", 2),
    baca.chunk(
        baca.clef("percussion"),
        baca.clef_shift("percussion"),
    ),
    baca.staff_lines(3),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 5),
    harmony.sixteenths([-16, 4]),
    baca.chunk(
        baca.clef("treble"),
        baca.clef_shift("treble"),
    ),
    baca.staff_lines(5),
    baca.markup(r"\baca-glockenspiel-markup", literal=True),
    baca.laissez_vibrer(),
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# perc2

maker(
    ("perc2", 1),
    baca.make_notes(),
    baca.clef("percussion"),
    baca.markup(r"\baca-tam-tam-markup", literal=True),
    baca.laissez_vibrer(),
    harmony.tam_tam_staff_position(),
    baca.accent(),
    baca.dynamic("mp"),
)

maker(
    ("perc2", 2),
    baca.staff_lines(3),
)

maker(
    ("perc2", 5),
    harmony.sixteenths([-16, 4]),
    baca.staff_lines(1),
    baca.markup(r"\baca-tam-tam-markup", literal=True),
    baca.laissez_vibrer(),
    harmony.tam_tam_staff_position(),
    baca.accent(),
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# hp

maker(
    ("hp", 1),
    baca.make_notes(),
    baca.laissez_vibrer(),
    baca.staff_position(-6, not_yet_pitched=True),
    baca.dynamic("mp"),
    baca.accent(),
)

maker(
    ("hp", 5),
    harmony.sixteenths([-16, 4]),
    baca.laissez_vibrer(),
    baca.staff_position(-6, not_yet_pitched=True),
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
    baca.accent(),
)

# va

maker(
    ("va", 1),
    baca.make_notes(),
    baca.staff_position(0, not_yet_pitched=True),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", 5),
    baca.make_repeat_tied_notes(),
    baca.staff_position(0, not_yet_pitched=True),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-1).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

maker(
    ("vc1", 1),
    harmony.tessera_2(3, rmakers.force_rest(baca.plt(0))),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("vc1", 5),
    harmony.tessera_2(3, advance=24),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc2

maker(
    ("vc2", 1),
    harmony.tessera_2(2, rmakers.force_rest(baca.plt(0))),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("vc2", 5),
    harmony.tessera_2(2, advance=24),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb1

maker(
    ("cb1", 1),
    harmony.tessera_2(1, rmakers.force_rest(baca.plt(0))),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("cb1", 5),
    harmony.tessera_2(1, advance=24),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb2

maker(
    ("cb2", 1),
    harmony.tessera_2(0),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("cb2", 5),
    harmony.tessera_2(0, advance=24),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.hairpin(
        "p < f",
        selector=baca.tleaves(),
    ),
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], 5),
    baca.dynamic("p"),
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], [1, 5]),
    baca.triple_staccato(baca.pheads()),
    baca.label(abjad.label().with_durations(denominator=16)),
)
