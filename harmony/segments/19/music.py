import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [S] #####################################
###############################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[◀R.1]", 2, "#darkgreen"),
    ("[S.2-3]", 4),
    ("[▶T.1]", 11, "#darkgreen"),
    ("[S.4]", 12),
    ("[▶T.1]", 13, "#darkgreen"),
)

maker = baca.SegmentMaker(
    **baca.segments(),
    activate=[
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *baca.tags.instrument_color_tags(),
        *baca.tags.margin_markup_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[3, 10],
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    parts_metric_modulation_multiplier=(0.525, 0.525),
    score_template=harmony.ScoreTemplate(),
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (5, 4),
        (4, 4),
    ],
    transpose_score=True,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "S",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "S",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.open_volta(baca.selectors.skip(1 - 1)),
    baca.close_volta(baca.selectors.skip(2 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(12 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(12 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(13 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(10 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eighteen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-nineteen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(10 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-5),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((3, 4)),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", 9),
    harmony.sixteenths(
        [4, 4, 4, -4, 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(2, 4), (2, 4)]),
        extra_counts=[4],
        denominator=None,
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("bfl", 12),
    harmony.warble(
        extra_counts=[2],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-5),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((3, 4)),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", [11, 13]),
    harmony.sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.selectors.rleak_runs(),
    ),
)

maker(
    ("bfl", (1, 13)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(2),
    ),
    baca.dls_staff_padding(
        5,
        baca.selectors.leaves(grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(2, grace=False),
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(
        baca.selectors.phead(1),
    ),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.pleaves((1, None), rleak=True),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (4, 8)),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[1, 19, 1, 15],
        counts=[0, 5, 0, 6, 0, 7, 0, 8, 0, 9],
        rest_after=True,
    ),
    baca.dynamic(
        "ff-sempre",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.rest(1),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(1, grace=False),
    ),
)

maker(
    ("perc1", 9),
    harmony.appoggiato(
        divisions=[16],
        counts=[19],
        rest_after=True,
    ),
)

maker(
    ("perc1", (4, 9)),
    harmony.purpleheart_staff_positions([2]),
)

maker(
    ("perc1", 12),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[20],
        counts=[25],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(0),
    ),
    baca.dls_staff_padding(
        5,
        baca.selectors.leaves(grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", [11, 13]),
    baca.staff_lines(1),
    harmony.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
    harmony.slate_staff_position(),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    harmony.appoggiato(
        divisions=[4, 1, 11],
        counts=[0, 0, 4],
        rest_after=[-2, -1],
    ),
    baca.new(
        harmony.purpleheart_staff_positions([0]),
        selector=baca.selectors.pleaves((None, 1)),
    ),
    baca.new(
        harmony.purpleheart_staff_positions([2]),
        selector=baca.selectors.pleaves((1, None)),
    ),
    baca.dynamic(
        "ff-ancora",
        selector=baca.selectors.rest(1),
    ),
    baca.dls_staff_padding(5),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("p"),
    baca.dynamic(
        "f",
        selector=baca.selectors.phead(1),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (4, 8)),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[1, 19, 1, 15],
        counts=[0, 4, 0, 5, 0, 6, 0, 7, 0, 8],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(1, grace=False),
    ),
)

maker(
    ("perc2", 9),
    harmony.appoggiato(
        divisions=[16],
        counts=[18],
        rest_after=True,
    ),
)

maker(
    ("perc2", (4, 9)),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff-sempre",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.rest(1),
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("perc2", 11),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 12),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[20],
        counts=[24],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(0),
    ),
    baca.dls_staff_padding(
        5,
        baca.selectors.leaves(grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

maker(
    ("perc2", 13),
    baca.staff_lines(1),
    baca.skeleton(
        r"r4. \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
    harmony.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        right_broken=True,
        selector=lambda _: baca.Selection(_).leaves()[-1:].rleak(),
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], [1, (4, 9), 12]),
    baca.new(
        baca.dots_extra_offset((1, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=harmony.rests_filter_duration((">=", (1, 2))),
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        [-4, 2, "-"],
    ),
    baca.pitch("G4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (1, 2)),
    baca.dls_staff_padding(4),
)

maker(
    ("hp", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("hp", [5, 7, 9]),
    baca.make_notes(),
)

maker(
    ("hp", (4, 9)),
    baca.pitch("<G6 A6 Bb6>"),
    baca.ottava(),
    baca.ottava_bracket_staff_padding(5.5),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(3).X_offset,
        literal=True,
    ),
)

maker(
    ("hp", 12),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.pitch("<G6 A6 Bb6>"),
    baca.ottava(),
    baca.ottava_bracket_staff_padding(5.5),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).X_offset,
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", [11, 13]),
    harmony.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

# va

maker(
    ("va", 2),
    harmony.sixteenths(
        [-4, -4, 2, 2, 2, 2, 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, 4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.tuplet_bracket_up(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o niente o<| mp |>o",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.tleaves(),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.Selection(_).leaves()[-1:].rleak()[-1],
    ),
)

maker(
    ("va", [(1, 2), (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("va", 12),
    baca.clef("treble"),
)

maker(
    ("va", [11, 13]),
    harmony.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
)

# vc1

maker(("vc1", 1), baca.clef("treble"))

maker(
    ("vc1", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("vc1", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("vc1", 12),
    baca.clef("treble"),
)

maker(
    ("vc1", [11, 13]),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

# vc2

maker(
    ("vc2", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("vc2", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("vc2", 12),
    baca.clef("treble"),
)

maker(
    ("vc2", [11, 13]),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
    baca.new(
        baca.rest_extra_offset(
            (-1.5, 0),
            baca.selectors.rest(-1),
        ),
        match=[0],
    ),
)

# cb1

maker(
    ("cb1", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<B5 C6 Db6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("cb1", 2),
    baca.clef("bass"),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("cb1", 4),
    baca.clef("treble"),
)

maker(
    ("cb1", 12),
    baca.clef("treble"),
)

maker(
    ("cb1", [11, 13]),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

# cb2

maker(
    ("cb2", 1),
    harmony.sixteenths(
        [-4, 2, 2, 2, 2],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.tuplet_bracket_up(),
)

maker(
    ("cb2", 2),
    harmony.sixteenths(
        [2, 2, 6, 2, -4],
        untie=True,
        written_quarters=[0],
        invisible=[1],
    ),
)

maker(
    ("cb2", (1, 2)),
    baca.pitch(
        "E5",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.lparts([1, 1, 1, 1, 1, 1, 2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    # TODO: text spanner currently must precede pitched trill spanner; fix
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((1, 8)),
    ),
    baca.trill_spanner(
        alteration="Fqs5",
    ),
)

maker(
    ("cb2", (4, 9)),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<A#5 B5 C6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("cb2", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("cb2", [11, 13]),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

maker(
    ("cb2", 12),
    harmony.sixteenths(
        [3, -1, -8, "-", 3, -1, -8],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(2, 4), (1, 4), (2, 4)]),
        extra_counts=[4],
        denominator=None,
    ),
)

maker(
    ("cb2", (11, 13)),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
)

maker(
    ("cb2", (12, 13)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves()[4:].rleak(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1"], 1),
    harmony.sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
    # TODO: promote to harmony.sixteenths()
    baca.invisible_music(
        baca.selectors.pleaves(([1], 2)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=baca.selectors.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -3,
        baca.selectors.pleaf(1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        baca.selectors.pleaf(-1),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["vc1", "vc2", "cb1"], 2),
    harmony.sixteenths(
        [-4, 6, 2, -4],
        untie=True,
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.selectors.lparts([2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[0, 1],
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], [5, 7, 9]),
    baca.make_notes(),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 9)),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< fff-scratch",
    ),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 12),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "fff-scratch",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 12),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 13)),
    baca.dls_staff_padding(6),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(maker, runtime=baca.segments(runtime=True))
