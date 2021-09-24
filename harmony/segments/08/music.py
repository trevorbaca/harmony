import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [H] #####################################
###############################################################################

stage_markup = (
    ("[H.1-6]", 1),
    ("[H.7-8]", 8),
)

maker = baca.SegmentMaker(
    **baca.segments(),
    fermata_measure_empty_overrides=[7],
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    parts_metric_modulation_multiplier=(0.525, 0.525),
    score_template=harmony.ScoreTemplate(),
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (3, 4),
    ],
    transpose_score=True,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "H",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "H",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.open_volta(baca.selectors.skip(8 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(1 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("short", baca.selectors.rest(7 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-seven",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(7 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", (8, 9)),
    harmony.sixteenths(
        [-8, -4, 8, -4, 8],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(2, 4), (2, 4), (2, 4)]),
        extra_counts=[0, 4, 4],
        denominator=None,
        do_not_rewrite_meter=True,
    ),
    baca.pitch("Ab3"),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
            right_broken=True,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            right_broken=True,
        ),
        selector=lambda _: baca.Selection(_).leaves()[1:].rleak(),
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
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak((0, 0)).X_extent,
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
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
        baca.selectors.pleaf(-1),
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
        baca.selectors.pleaves([0, -1]),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
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
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=1,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=3,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < ff > p",
        measures=5,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4 + 1).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (8, 9)),
    baca.make_notes(),
    baca.pitch("<C6 Db6 Eb6>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
)

maker(
    ("hp", (1, 9)),
    baca.dls_staff_padding(4),
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
        baca.selectors.pleaves(exclude=baca.const.HIDDEN),
    ),
    baca.dynamic("p"),
    baca.hairpin(
        "(p) < mf > p",
        measures=2,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=4,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("va", (1, 9)),
    baca.pitch(
        "<B4 C5 D5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
    baca.dls_staff_padding(4),
)

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths(
        [4, 4, 4],
    ),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        baca.selectors.leaf(0),
    ),
    baca.pitch("Bb4"),
    baca.espressivo(
        baca.selectors.pheads((1, None)),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        abjad.tweak(4.5).bound_details__right__padding,
        autodetect_right_padding=False,
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
        baca.selectors.pleaves(exclude=baca.const.HIDDEN),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=2,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=4,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("vc1", (2, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
)

maker(
    ("vc1", (1, 9)),
    baca.dls_staff_padding(4),
)

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        ["+", 1],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(3, 4), (4, 4)]),
        do_not_rewrite_meter=True,
        written_wholes=[1],
        invisible=[-1],
    ),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        baca.selectors.leaf(0),
    ),
    baca.pitch("B2"),
    baca.hairpin(
        "(p) >o",
        bookend=False,
        selector=baca.selectors.leaves((-2, None)),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        abjad.tweak(4.5).bound_details__right__padding,
        autodetect_right_padding=False,
        left_broken=True,
        selector=baca.selectors.rleaves(),
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
        baca.selectors.pleaves(exclude=baca.const.HIDDEN),
    ),
    baca.dynamic(
        "p",
        measures=3,
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=4,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("vc2", (3, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
)

maker(
    ("vc2", (1, 9)),
    baca.dls_staff_padding(4),
)

# cb1

maker(
    ("cb1", (1, 3)),
    harmony.sixteenths(
        [4, 4, 8, 4, 4, 8, 4, 4],
    ),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        baca.selectors.leaf(0),
    ),
    baca.pitch(
        "Bb4",
        do_not_transpose=True,
    ),
    baca.espressivo(
        baca.selectors.pheads((1, None)),
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
        baca.selectors.pleaves(exclude=baca.const.HIDDEN),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("cb1", (4, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
        do_not_transpose=True,
    ),
)

maker(
    ("cb1", (1, 9)),
    baca.dls_staff_padding(4),
)

# cb2

maker(
    ("cb2", (1, 4)),
    harmony.sixteenths(
        [12, 16, 12, 15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[-2],
        invisible=[-1],
    ),
    baca.pitch("Bb2"),
    baca.hairpin(
        "(p) >o",
        bookend=False,
        selector=baca.selectors.leaves((-2, None)),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        abjad.tweak(4.5).bound_details__right__padding,
        autodetect_right_padding=False,
        left_broken=True,
        selector=baca.selectors.rleaves(),
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
        baca.selectors.pleaves(exclude=baca.const.HIDDEN),
    ),
    baca.dynamic(
        "p",
        measures=5,
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("cb2", (5, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
        do_not_transpose=True,
    ),
)

maker(
    ("cb2", (1, 9)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 9)),
    baca.make_notes(),
    baca.note_head_style_harmonic(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-quasi-bisb-ancora-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(
        maker,
        **baca.segments(runtime=True),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
    )
