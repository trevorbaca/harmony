import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [H] #####################################
###############################################################################

stage_markup = (
    ("[H.1-6]", 1),
    ("[H.7-8]", 8),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *abjad.tags.instrument_color_tags(),
        *abjad.tags.margin_markup_color_tags(),
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[7],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (4, 4), (3, 4), (4, 4), (3, 4), (4, 4), (1, 4),
        (3, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=9,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "H",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.open_volta(baca.skip(8 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(1 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("short", baca.rest(7 - 1)),
)

# text

maker(
    ("bfl", 7 + 1),
    baca.literal(
        "\\footnote \"(7)\" #'(0 . 0) \\harmony-text-seven",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", (8, 9)),
    harmony.sixteenths(
        [-8, -4, 8, -4, 8],
        preprocessor=baca.sequence().fuse().split_divisions(
            [(2, 4), (2, 4), (2, 4)],
        ),
        extra_counts=[0, 4, 4],
        denominator=None,
        do_not_rewrite_meter=True,
    ),
    baca.pitch("Ab3"),
    baca.dynamic("mp"),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
            right_broken=True,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            right_broken=True,
        ),
        selector=baca.leaves()[1:].rleak(),
    ),
)

# perc1

maker(
    ("perc1", (1, 6)),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -11, -1, 1, -14],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak((0, 0)).X_extent,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", (1, 6)),
    baca.make_notes(),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.stem_tremolo(
        baca.pleaf(-1),
    ),
)

maker(
    ("perc2", (8, 9)),
    baca.make_notes(),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0, 1], 3),
        invisible=([1], 3),
    ),
    baca.pitch("<B5 C6 D6>"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=1,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < f > p",
        measures=3,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff > p",
        measures=5,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", (8, 9)),
    baca.make_notes(),
    baca.pitch("<C6 Db6 Eb6>"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("pp"),
)

# va

maker(
    ("va", (1, 6)),
    harmony.sixteenths(
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    ),
    baca.stem_tremolo(
        baca.pleaves(exclude=abjad.const.HIDDEN),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=2,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff >o niente",
        measures=6,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("va", (1, 9)),
    baca.pitch(
        "<B4 C5 D5>",
        baca.plts(exclude=abjad.const.HIDDEN),
    ),
)

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths(
        [4, 4, 4],
    ),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        baca.leaf(0),
    ),
    baca.pitch("Bb4"),
    baca.espressivo(
        baca.pheads()[1:],
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
    ),
)

maker(
    ("vc1", (2, 6)),
    harmony.sixteenths(
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    ),
    baca.stem_tremolo(
        baca.pleaves(exclude=abjad.const.HIDDEN),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=2,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff >o niente",
        measures=6,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("vc1", (2, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        baca.plts(exclude=abjad.const.HIDDEN),
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        ["+", 1],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 4), (4, 4)]),
        do_not_rewrite_meter=True,
        written_wholes=([1],),
        invisible=([-1],),
    ),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        baca.leaf(0),
    ),
    baca.pitch("B2"),
    baca.hairpin(
        "mp >o niente",
        selector=baca.leaves()[-2:],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        left_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc2", (3, 6)),
    harmony.sixteenths(
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    ),
    baca.stem_tremolo(
        baca.pleaves(exclude=abjad.const.HIDDEN),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff >o niente",
        measures=6,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("vc2", (3, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        baca.plts(exclude=abjad.const.HIDDEN),
    ),
)

# cb1

maker(
    ("cb1", (1, 3)),
    harmony.sixteenths(
        [4, 4, 8, 4, 4, 8, 4, 4],
    ),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        baca.leaf(0),
    ),
    baca.pitch("Bb4"),
    baca.espressivo(
        baca.pheads()[1:],
    ),
)

maker(
    ("cb1", (4, 6)),
    harmony.sixteenths(
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    ),
    baca.stem_tremolo(
        baca.pleaves(exclude=abjad.const.HIDDEN),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "p < ff >o niente",
        measures=6,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("cb1", (4, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        baca.plts(exclude=abjad.const.HIDDEN),
    ),
)

# cb2

maker(
    ("cb2", (1, 4)),
    harmony.sixteenths(
        [12, 16, 12, 15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=([-2],),
        invisible=([-1],),
    ),
    baca.pitch("Bb2"),
    baca.hairpin(
        "mp >o niente",
        selector=baca.leaves()[-2:],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        left_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb2", (5, 6)),
    harmony.sixteenths(
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    ),
    baca.stem_tremolo(
        baca.pleaves(exclude=abjad.const.HIDDEN),
    ),
    baca.hairpin(
        "p < ff >o niente",
        measures=6,
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("cb2", (5, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        baca.plts(exclude=abjad.const.HIDDEN),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 9)),
    baca.make_notes(),
    baca.note_head_style_harmonic(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-quasi-bisb-ancora-markup",
        literal=True,
    ),
)
