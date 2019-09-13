import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [D] #####################################
###############################################################################

stage_markup = (
    ("[D.1-6]", 1),
    ("[D.7]", 8),
    ("[◀B.6]", 9, "darkgreen"),
    ("[D.8]", 10),

)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[7, 10],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (1, 4),
        (3, 4), (5, 4), (1, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "D",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(9 - 1)),
    baca.metronome_mark("8=4", baca.skip(9 - 1)),
    baca.metronome_mark("72", baca.skip(11 - 1)),
    baca.metronome_mark("2=4", baca.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(7 - 1)),
    baca.global_fermata("short", baca.rest(10 - 1)),
)

# bfl

maker(
    ("bfl", (1, 6)),
    harmony.tessera_1(6, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("bfl", 8),
    harmony.tessera_1(6, advance=72, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("bfl", 11),
    harmony.tessera_1(6, advance=72 + 12, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

# perc1

maker(
    ("perc1", (1, 6)),
    harmony.phjc([1, 2, 1], [2, 2, 2, 2, 2, 2, 2, 1],
        rmakers.force_rest(baca.tuplets().exclude([0, 1, 2, -4, -3, -2])),
        extra_counts=[2],
    ),
    baca.new(
        baca.staff_positions([0, -2, 0, -2, 0], allow_repeats=True),
        measures=(1, 2),
    ),
    baca.new(
        baca.staff_positions([0, 2, 0, 2, 2], allow_repeats=True),
        measures=(5, 6),
    ),
    baca.dynamic("f-ancora", abjad.tweak(-0.75).self_alignment_X, measures=5),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 8),
    harmony.phjc([2, 1, 1], [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
    ),
    baca.staff_positions([0, -2, 0, -2, 0], allow_repeats=True),
    baca.dynamic("p"),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 11),
    harmony.phjc([1, 1, 2], [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
    ),
    baca.staff_positions([0, -2, 0, 0, -2], allow_repeats=True),
    baca.dynamic("f"),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

# perc2

maker(
    ("perc2", 1),
    harmony.phjc([1, 2], [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
    baca.staff_positions([0, -2, 0, -2, 0], allow_repeats=True),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc2", (5, 6)),
    harmony.train([2], rmakers.force_rest(baca.leaf(0))),
    baca.staff_position(2),
    baca.accent(baca.pheads()),
    baca.dynamic("f-ancora", abjad.tweak(-0.75).self_alignment_X),
    baca.dls_staff_padding(5),
)

maker(
    ("perc2", 8),
    harmony.train([2], rmakers.force_rest(baca.leaves()[:3])),
    baca.staff_position(2),
    baca.accent(baca.pheads()),
    baca.dynamic("p"),
    baca.dls_staff_padding(5),
)

maker(
    ("perc2", 9),
    baca.staff_lines(1),
)

maker(
    ("perc2", 11),
    baca.staff_lines(3),
    harmony.train([2], rmakers.force_rest(baca.leaves()[:1])),
    baca.staff_position(2),
    baca.accent(baca.pheads()),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("hp", 8),
    harmony.tessera_1(5, advance=72),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("hp", 11),
    harmony.tessera_1(5, advance=72 + 12),
    baca.staff_position(0, not_yet_pitched=True),
)

# va

maker(
    ("va", (1, 6)),
    harmony.tessera_1(4, gap=True),
)

maker(
    ("va", 8),
    harmony.tessera_1(4, advance=72, gap=True),
)

maker(
    ("va", 9),
    baca.clef("alto"),
    baca.staff_lines(5),
)

maker(
    ("va", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.tessera_1(4, advance=72 + 12, gap=True),
)

maker(
    ("va", [(1, 6), 8, 11]),
    baca.staff_position(0),
)

# vc1

maker(
    ("vc1", (1, 6)),
    baca.staff_lines(5),
    baca.clef("bass"),
    harmony.tessera_1(3, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("vc1", 8),
    harmony.tessera_1(3, advance=72, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("vc1", 11),
    harmony.tessera_1(3, advance=72 + 12, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc2

maker(
    ("vc2", (1, 6)),
    baca.staff_lines(5),
    harmony.tessera_1(2, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("vc2", 8),
    harmony.tessera_1(2, advance=72, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("vc2", 11),
    harmony.tessera_1(2, advance=72 + 12, gap=True),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc1, vc2

maker(
    (["vc1", "vc2"], [(1, 6), 8, 11]),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", (1, 6)),
    baca.staff_lines(5),
    baca.clef("treble"),
    harmony.tessera_1(1),
    baca.staff_position(0, not_yet_pitched=True),
    baca.markup(r"\baca-pizz-markup", literal=True),
)

maker(
    ("cb1", 8),
    harmony.tessera_1(1, advance=72),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("cb1", 11),
    harmony.tessera_1(1, advance=72 + 12),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb2

maker(
    ("cb2", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.staff_position(0, not_yet_pitched=True),
    baca.markup(r"\baca-pizz-markup", literal=True),
)

maker(
    ("cb2", 8),
    harmony.tessera_1(0, advance=72),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("cb2", 11),
    harmony.tessera_1(0, advance=72 + 12),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb1, cb2

maker(
    (["cb1", "cb2"], [(1, 6), 8, 11]),
    baca.note_head_style_harmonic(),
)

# bfl, hp, va, vc1, vc2, cb1, cb2

maker(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1", "cb2"], [(1, 6), 8, 11]),
    baca.accent(baca.pheads()),
    ###baca.label(abjad.label().with_durations(denominator=16)),
)
