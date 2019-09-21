import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [BB] ####################################
###############################################################################

stage_markup = (
    ("[BB.1-4]", 1),
    ("[◀Y.2]", 5, "darkgreen"),
    ("[BB.5-8]", 6),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[6],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (2, 4), (2, 4), (2, 4), (2, 4), (6, 4), (1, 4),
        (2, 4), (2, 4), (2, 4), (2, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "BB",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(6 - 1)),
)

# bfl

maker(
    ("bfl", (1, 4)),
    harmony.sixteenths([8, 4, 4, 8, 4, 3, -1]),
    baca.flat_glissando("B3"),
    baca.approximate_pitch(),
    baca.trill_spanner(),
    baca.hairpin(
        "p (p) < mp >",
        pieces=baca.clparts([1]),
    ),
)

maker(
    ("bfl", (7, 10)),
    harmony.sixteenths([4]),
    baca.flat_glissando("B3"),
    baca.approximate_pitch(),
    baca.hairpin(
        "pp < p >",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic("pp", selector=baca.leaves().rleak()[-1]),
    baca.trill_spanner(),
)

# perc1

maker(
    ("perc1", (1, 4)),
    harmony.sixteenths(
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        preprocessor=baca.sequence(),
    ),
    # TODO: semantic staff position (without string constant)
    baca.flat_glissando("D4"),
    baca.approximate_pitch(),
    baca.markup(r"\baca-triangle-markup", literal=True),
    baca.stem_up(),
    baca.stem_tremolo(baca.plts().get([0, -1])),
    baca.hairpin(
        "p < mp > p (p) < mp > p",
        pieces=baca.clparts([1]),
        selector=baca.tleaves(),
    ),
)

maker(
    ("perc1", (7, 10)),
    harmony.sixteenths([4]),
    # TODO: semantic staff position (without string constant)
    baca.flat_glissando("D4"),
    baca.approximate_pitch(),
    baca.markup(r"\baca-triangle-markup", literal=True),
    baca.stem_up(),
    baca.stem_tremolo(baca.plts().get([0, -1])),
    baca.hairpin(
        "pp < p >",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic("pp", selector=baca.leaves().rleak()[-1]),
)

# perc2

maker(
    ("perc2", (1, 4)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.markup(r"\baca-glockenspiel-markup", literal=True),
    harmony.sixteenths([2, -6, -2, 2, -4]),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("perc2", 7),
    baca.staff_lines(5),
    baca.clef("treble"),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
        selector=baca.leaf(0),
    ),
)

maker(
    ("perc2", 10),
    harmony.sixteenths([-2, 2, -8]),
    baca.laissez_vibrer(baca.ptails()),
)

# hp

maker(
    ("hp", (1, 4)),
    baca.clef("bass"),
    harmony.sixteenths([4, -12]),
    baca.laissez_vibrer(baca.ptails()),
)

# va

maker(
    ("va", (1, 4)),
    baca.make_notes(),
    baca.flat_glissando("C4"),
    baca.approximate_pitch(),
    baca.bow_speed_spanner(
        "poc. scr. =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("p"),
)

maker(
    ("va", (7, 10)),
    baca.make_notes(),
    baca.flat_glissando("C4"),
    baca.approximate_pitch(),
    baca.bow_speed_spanner(
        "poc. scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

maker(
    ("vc1", (1, 4)),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths([10, 6]),
    baca.staff_positions([2, -2], approximate_pitch=True),
    baca.glissando(),
)

maker(
    ("vc1", (7, 10)),
    baca.note_head_style_harmonic(),
    harmony.sixteenths([2]),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic("niente", selector=baca.leaves().rleak()[-1]),
    baca.trill_spanner(),
)

# vc2

maker(
    ("vc2", (1, 4)),
    harmony.sixteenths([10, 6]),
    baca.staff_positions([2, -2], approximate_pitch=True),
    baca.glissando(),
)

maker(
    ("vc2", (7, 10)),
    baca.note_head_style_harmonic(),
    harmony.sixteenths([2]),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic("niente", selector=baca.leaves().rleak()[-1]),
    baca.trill_spanner(),
)

# cb1

maker(
    ("cb1", (1, 4)),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.note_head_style_harmonic(),
    harmony.sixteenths([4, 4, -8]),
    baca.hairpin(
        "niente o< mf >o niente",
        map=baca.runs().map(baca.leaves().rleak()),
        pieces=baca.lparts([1, 1 + 1]),
    ),
    baca.trill_spanner(
        map=baca.runs(),
    ),
)

maker(
    ("cb1", (7, 10)),
    baca.note_head_style_harmonic(),
    harmony.sixteenths([2]),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic("niente", selector=baca.leaves().rleak()[-1]),
    baca.trill_spanner(),
)

# cb2

maker(
    ("cb2", (1, 4)),
    baca.make_notes(),
    baca.flat_glissando("E1"),
    baca.approximate_pitch(),
    baca.scp_spanner(
        "scp var. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (7, 10)),
    baca.make_notes(),
    baca.flat_glissando("E1"),
    baca.approximate_pitch(),
    baca.scp_spanner(
        "scp var. =|",
        abjad.tweak(3).staff_padding,
    ),
)
