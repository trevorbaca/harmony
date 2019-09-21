import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [J] #####################################
###############################################################################

stage_markup = (
    ("[J.1]", 1),
    ("[▶K.1]", 2, "darkgreen"),
    ("[◀I.1]", 3, "darkgreen"),
    ("[J.2-5]", 4),
    ("[◀I.1]", 8, "darkgreen"),
    ("[J.6]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (4, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "J",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("2.=4", baca.skip(10 - 1)),
    baca.metronome_mark(baca.Accelerando(), baca.skip(10 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark(baca.Ritardando(), baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# bfl

maker(
    ("bfl", [10, 15]),
    harmony.appoggiato([99], [9]),
    baca.pitches(
        "D3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=False),
        approximate_pitch=True,
    ),
    baca.pitches(
        "G3 A3 B3 A3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=True),
        approximate_pitch=True,
    ),
)

# perc1

maker(
    ("perc1", (10, 15)),
    baca.make_notes(),
    baca.flat_glissando("D4"),
    baca.dynamic("p"),
    baca.stem_tremolo(baca.pheads().get([0, -1])),
    baca.markup(r"\baca-triangle-markup", literal=True),
)

# perc2

maker(
    ("perc2", (1, 2)),
    baca.make_notes(),
    baca.flat_glissando(-1),
    baca.dynamic("p"),
    baca.stem_tremolo(baca.pheads().get([0, -1])),
    baca.markup(r"\baca-bd-fingertips-markup", literal=True),
)

maker(
    ("perc2", (4, 7)),
    baca.make_notes(),
    baca.flat_glissando(-1),
    baca.dynamic("p-ancora", abjad.tweak(-0.75).self_alignment_X),
    baca.stem_tremolo(baca.pheads().get([0, -1])),
)

maker(
    ("perc2", (10, 15)),
    baca.make_notes(),
    baca.flat_glissando(-1),
    baca.dynamic("p"),
    baca.stem_tremolo(baca.pheads().get([0, -1])),
)

# hp

maker(
    ("hp", [(2, 8), (10, 15)]),
    baca.make_notes(),
)

maker(
    ("hp", (2, 15)),
    baca.clef("bass"),
    baca.flat_glissando("F#3"),
    baca.markup(r"\baca-bow-markup", literal=True),
    baca.dynamic("mf")
)

# va

maker(
    ("va", 10),
    harmony.sixteenths([12, 1, 1, 1]),
)

maker(
    ("va", (11, 14)),
    harmony.tuplet([11 * (1,)]),
)

maker(
    ("va", 15),
    baca.make_notes(),
)

maker(
    ("va", (10, 15)),
    baca.staff_positions([1, 4, 2, 5], approximate_pitch=True),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# vc1

maker(
    ("vc1", (10, 11)),
    harmony.sixteenths([13, 1, 1, 1]),
)

maker(
    ("vc1", (12, 14)),
    harmony.tuplet([10 * (1,)], rmakers.denominator((1, 4))),
)

maker(
    ("vc1", 15),
    baca.make_notes(),
)

maker(
    ("vc1", (10, 15)),
    baca.staff_positions([1, 4, 2, 5], approximate_pitch=True),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# vc2

maker(
    ("vc2", (10, 12)),
    harmony.sixteenths([14, 1, 1, 1]),
)

maker(
    ("vc2", (13, 14)),
    harmony.tuplet([9 * (1,)], rmakers.denominator((1, 4))),
)

maker(
    ("vc2", 15),
    baca.make_notes(),
)

maker(
    ("vc2", (10, 15)),
    baca.staff_positions([1, 4, 2, 5], approximate_pitch=True),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# cb1

maker(
    ("cb1", (10, 12)),
    harmony.sixteenths([15, 1, 1, 1]),
)

maker(
    ("cb1", (13, 14)),
    harmony.tuplet([8 * (1,)], rmakers.denominator((1, 4))),
)

maker(
    ("cb1", 15),
    baca.make_notes(),
)

maker(
    ("cb1", (10, 15)),
    baca.staff_positions([-5, -2, -4, -1], approximate_pitch=True),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# cb2

maker(
    ("cb2", (10, 12)),
    harmony.sixteenths([16, 1, 1, 1]),
)

maker(
    ("cb2", (13, 14)),
    harmony.tuplet([7 * (1,)], rmakers.denominator((1, 4))),
)

maker(
    ("cb2", 15),
    baca.make_notes(),
)

maker(
    ("cb2", (10, 15)),
    baca.staff_positions([-5, -2, -4, -1], approximate_pitch=True),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)
