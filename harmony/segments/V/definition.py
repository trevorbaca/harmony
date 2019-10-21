import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [V] #####################################
###############################################################################

stage_markup = (
    ("[V.1-3]", 1),
    ("[◀T.1]", 4, "darkgreen"),
    ("[V.4-5]", 5),
    ("[V.6]", 12),
    ("[◀T.2]", 13, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    deactivate=[
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
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

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("bfl", (5, 10)),
    harmony.sixteenths(
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.leaves(),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("bfl", 13),
    harmony.sixteenths(
        [-12, 4, "-"],
        extra_counts=[1],
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# perc1

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< pp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(9.25).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 4),
    harmony.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (5, 10)),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(9.25).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 12),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc1", 13),
    harmony.sixteenths(
        [-8, 8, "-"],
        extra_counts=[2],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 3),
    harmony.sixteenths(
        [-4, 4, -4],
    ),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 4),
    harmony.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
)

maker(
    ("perc2", (5, 10)),
    harmony.sixteenths(
        [4, -8],
    ),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 13),
    harmony.sixteenths(
        [2, "-"],
        extra_counts=[1],
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.flageolet(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
)

maker(
    ("hp", 3),
    baca.clef("bass"),
    harmony.sixteenths(
        [-4, 4, -4],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.laissez_vibrer(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("p"),
)

maker(
    ("hp", 4),
    baca.clef("treble"),
    harmony.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        literal=True,
    ),
)

maker(
    ("hp", (5, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        [4, -8],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.pheads(),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("hp", 13),
    harmony.sixteenths(
        ["-", 6],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[-1:].rleak(),
    ),
)

# va

maker(
    ("va", (1, 3)),
    harmony.sixteenths(
        [32],
        extra_counts=[1],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2, 4],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
    ),
)

maker(
    ("va", (5, 10)),
    baca.clef("alto"),
    harmony.sixteenths(
        [18, 13, 9, 6, 3, 2, 2, 2, 2, 2, 3, 3, 6, "+"],
        extra_counts=[1],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 3)),
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 12),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2],
        mock=True,
    ),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

maker(
    ("va", 13),
    harmony.sixteenths(
        [-20, 2, "-"],
        extra_counts=[2],
    ),
)

# vc1

maker(
    ("vc1", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

maker(
    ("vc1", (5, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.leaves(),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc1", (4, 5)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[:9],
    ),
)

maker(
    ("vc1", 13),
    harmony.sixteenths(
        [3, -7, 3, "-"],
        extra_counts=[1],
    ),
)

# vc2

maker(
    ("vc2", (1, 3)),
    harmony.sixteenths(
        [46],
        extra_counts=[2],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2, 4],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
)

maker(
    ("vc2", (5, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        [18, 14, 12, 6, 4, 2, 2, 2, 2, 4, 6, 12, "+"],
        extra_counts=[2],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 3)),
        selector=baca.leaves(),
    ),
)

maker(
    ("vc2", 12),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2],
        mock=True,
    ),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

maker(
    ("vc2", 13),
    harmony.sixteenths(
        [-4, 3, "-"],
        extra_counts=[1],
    ),
)

# cb1

maker(
    ("cb1", (1, 3)),
    harmony.sixteenths(
        [27],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2, 4],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

maker(
    ("cb1", (5, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.leaves(),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", 13),
    harmony.sixteenths(
        [-4, 3, -7, 2],
    ),
)

# cb2

maker(
    ("cb2", 3),
    baca.skeleton(
        "r4 c16. r32 r8 c16. r32 r8",
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=baca.leaf(1),
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

maker(
    ("cb2", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[1:].rleak(),
    ),
)

maker(
    ("cb2", (5, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        [9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, "+"],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 3)),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", 12),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2],
        mock=True,
    ),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

maker(
    ("cb2", 13),
    harmony.sixteenths(
        [3, -5, 3, -5],
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1"], 4),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 13),
    baca.staff_lines(1),
    baca.clef("percussion"),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)
