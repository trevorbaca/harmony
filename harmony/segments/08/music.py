import abjad
import baca

from harmony import library

#########################################################################################
######################################### 08 [H] ########################################
#########################################################################################

stage_markup = (
    ("[H.1-6]", 1),
    ("[H.7-8]", 8),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
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
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
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

commands(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(1 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("short", baca.selectors.rest(7 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-seven",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(7 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", (8, 9)),
    library.sixteenths(
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

commands(
    ("perc1", (1, 6)),
    baca.staff_lines(1),
    library.sixteenths(
        [1, -11, -1, 1, -14],
    ),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak((0, 0)).X_extent,
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
    ),
)

# perc2

commands(
    ("perc2", (1, 6)),
    baca.make_notes(),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc2", (8, 9)),
    baca.make_notes(),
    library.tam_tam_staff_position(),
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

commands(
    ("hp", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
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
    ),
)

commands(
    ("hp", (8, 9)),
    baca.make_notes(),
    baca.pitch("<C6 Db6 Eb6>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
)

commands(
    ("hp", (1, 9)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", (1, 6)),
    library.sixteenths(
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
    ),
)

commands(
    ("va", (1, 9)),
    baca.pitch(
        "<B4 C5 D5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", 1),
    library.sixteenths(
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

commands(
    ("vc1", (2, 6)),
    library.sixteenths(
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
    ),
)

commands(
    ("vc1", (2, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
)

commands(
    ("vc1", (1, 9)),
    baca.dls_staff_padding(4),
)

# vc2

commands(
    ("vc2", (1, 2)),
    library.sixteenths(
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

commands(
    ("vc2", (3, 6)),
    library.sixteenths(
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
    ),
)

commands(
    ("vc2", (3, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
)

commands(
    ("vc2", (1, 9)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", (1, 3)),
    library.sixteenths(
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

commands(
    ("cb1", (4, 6)),
    library.sixteenths(
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
    ),
)

commands(
    ("cb1", (4, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
        do_not_transpose=True,
    ),
)

commands(
    ("cb1", (1, 9)),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 4)),
    library.sixteenths(
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

commands(
    ("cb2", (5, 6)),
    library.sixteenths(
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
    ),
)

commands(
    ("cb2", (5, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
        do_not_transpose=True,
    ),
)

commands(
    ("cb2", (1, 9)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

commands(
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
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_segment(
        score,
        commands,
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[7],
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
