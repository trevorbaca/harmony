import pathlib

import abjad
import baca

import harmony

###############################################################################
##################################### [N] #####################################
###############################################################################

stage_markup = (
    ("[N.1-2]", 1),
    ("[▶O.1]", 4, "#darkgreen"),
    ("[◀M.1]", 5, "#darkgreen"),
    ("[N.3-6]", 6),
    ("[▶P.1]", 11, "#darkgreen"),
)

maker = baca.SegmentMaker(
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
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=pathlib.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (1, 4),
        (3, 4),
    ],
    transpose_score=True,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "N",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "N",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
    baca.global_fermata("short", baca.selectors.rest(10 - 1)),
)

cerulean = [1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"]

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-fourteen",
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
            r"\harmony-text-fifteen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(10 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 2),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
    baca.pitches(
        harmony.warble_pitches,
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
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [-1, 3, 4, -4, 4],
    ),
    baca.pitch("E3"),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TODO: promote to harmony.sixteenths():
    baca.repeat_tie(
        baca.selectors.pleaf(-1),
    ),
    baca.pitch("B4"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.lparts([1, 2 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("bfl", 6),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-1),
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
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", 9),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-2),
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
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", (6, 9)),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", 11),
    harmony.sixteenths(
        [3, -1, 8],
    ),
    baca.pitch("D5"),
    baca.dynamic("p"),
    baca.text_spanner(
        "A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("bfl", (1, 11)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", (1, 2)),
    harmony.sixteenths(
        [2, "-", 2],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 4),
    harmony.sixteenths(
        [-1, 3, 4, -4, 4],
    ),
    harmony.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 4)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc1", 5),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.selectors.runs((None, 1)),
    ),
    baca.staff_position(
        0,
        baca.selectors.runs((1, None)),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.rest(0),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.rest(1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(
        ["-", 2],
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        [41, -7, "+"],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (6, 11)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", (1, 2)),
    harmony.sixteenths(
        [-22, 1, -3, 1, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        '"ff"',
        selector=baca.selectors.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc2", (1, 4)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc2", 5),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.selectors.runs((None, 1)),
    ),
    baca.staff_position(
        0,
        baca.selectors.runs((1, None)),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.rest(0),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.rest(1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

maker(
    ("perc2", (6, 9)),
    baca.staff_lines(1),
    harmony.sixteenths(
        cerulean,
        extra_counts=[2],
        denominator=None,
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.hairpin(
        # '"ff" "ff" "ff" "f" "f" mf mp p pp',
        '"ff" "ff" "f" "f" mf mp p pp',
        pieces=baca.selectors.plts((1, None)),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 11),
    harmony.sixteenths(
        [21, -14, 18, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (6, 11)),
    baca.dls_staff_padding(6),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], 5),
    baca.new(
        baca.dots_extra_offset((1, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=harmony.rests_filter_duration((">=", (1, 2))),
    ),
)

# hp

maker(
    ("hp", (1, 2)),
    baca.clef("bass"),
    harmony.sixteenths(
        [22, "-"],
    ),
    baca.pitch("E1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(7),
)

maker(
    ("hp", 4),
    baca.clef("treble"),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f-ancora"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("hp", 5),
    harmony.sixteenths(
        [-4, 4, 8, -4],
    ),
    baca.clef("bass"),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (4, 5)),
    baca.dls_staff_padding(4),
)

maker(
    ("hp", (6, 9)),
    harmony.sixteenths(
        [54, "-"],
    ),
    baca.pitch("E1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
)

maker(
    ("hp", 11),
    harmony.sixteenths(
        [21, -14, 18, "-"],
    ),
    baca.pitch("F1"),
    baca.dynamic("p"),
)

maker(
    ("hp", (6, 11)),
    baca.dls_staff_padding(7),
)

# va

maker(
    ("va", (1, 2)),
    harmony.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("D#3", "E3"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        # abjad.tweak((-3, 0)).extra_offset,
        # abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        ["-", 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(2, 4), (2, 4)]),
        extra_counts=[0, 4],
        denominator=None,
    ),
)

maker(
    ("va", 5),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 7],
        rest_from=1,
    ),
)

maker(
    ("va", (4, 5)),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("Db3"),
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.accent(
        baca.selectors.pheads((None, 3)),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_d_flat_3,
        ),
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.pleaves((None, 4), grace=False),
    ),
)

maker(
    ("va", (6, 9)),
    harmony.sixteenths(
        [16, -12, 4, -16, 4, -8, 4],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("D#3", "E3"),
        map=baca.selectors.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("va", 11),
    harmony.sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("va", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc1

maker(
    ("vc1", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-16, 1, -16, 1, -6],
        extra_counts=[1],
    ),
    harmony.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        '"ff" "ff"',
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

maker(
    ("vc1", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("vc1", 5),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("C3"),
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_c_3,
        ),
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

maker(
    ("vc1", (4, 5)),
    baca.dls_staff_padding(4),
)

maker(
    ("vc1", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        cerulean,
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "ff" "f" "f" mf mp p',
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

maker(
    ("vc1", 9),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-4, 3, -1, 3, -1, -8, 3, -1],
        extra_counts=[0, 8],
    ),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("vc1", 11),
    harmony.sixteenths(
        [3, -1, 7, -1],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

maker(
    ("vc1", [9, 11]),
    baca.pitch("D#3"),
)

maker(
    ("vc1", (9, 11)),
    baca.dls_staff_padding(4),
)

# vc2

maker(
    ("vc2", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-9, 1, -11, 1, -3, 1, "-"],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "ff"',
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

maker(
    ("vc2", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
)

maker(
    ("vc2", 5),
    harmony.sixteenths(
        [-8, 2, -6],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        harmony.bridge_staff_position(),
        selector=baca.selectors.leaf(1),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic('"ff"'),
)

maker(
    ("vc2", (6, 9)),
    harmony.sixteenths(
        cerulean,
    ),
    harmony.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        '"ff" "ff" "f" mf mp p pp',
        pieces=baca.selectors.plts(),
    ),
)

maker(
    ("vc2", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((1, -3)),
    ),
)

maker(
    ("vc2", (5, 9)),
    baca.dls_staff_padding(6),
)

maker(
    ("vc2", 11),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [3, -1, 7, -1],
    ),
    baca.pitch("C#3"),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("F2", "E2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        # abjad.tweak((-3, 0)).extra_offset,
        # abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("cb1", 5),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("B2"),
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_b_2,
        ),
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

maker(
    ("cb1", (6, 9)),
    harmony.sixteenths(
        [16, -8, 4, -16, 4, -12, 4],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("F2", "E2"),
        map=baca.selectors.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", 11),
    harmony.sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("cb1", (1, 11)),
    baca.dls_staff_padding(4),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("D#2", "E2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        # abjad.tweak((-3, 0)).extra_offset,
        # abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("cb2", 5),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.pitch("B2"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (6, 9)),
    harmony.sixteenths(
        [16, -12, 4, -8, 4, -16, 4],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("D#2", "E2"),
        map=baca.selectors.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", 11),
    harmony.sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("cb2", (1, 11)),
    baca.dls_staff_padding(4),
)

# va, cb1, cb2


maker(
    (["va", "cb1", "cb2"], 1),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.tleaves(),
    ),
    baca.scp_spanner(
        "T1 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    (["va", "cb1", "cb2"], (6, 9)),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.run(0),
    ),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.run(1),
    ),
    baca.hairpin(
        "o< f",
        selector=baca.selectors.run(2),
    ),
    baca.hairpin(
        "o< ff",
        selector=baca.selectors.run(3),
    ),
    baca.scp_spanner(
        "T1 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        map=baca.selectors.runs(),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    (["va", "cb1", "cb2"], 11),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.dynamic(
        "ppp",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)
