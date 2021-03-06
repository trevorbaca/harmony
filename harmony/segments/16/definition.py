import abjad
import baca

import harmony

###############################################################################
##################################### [P] #####################################
###############################################################################

stage_markup = (
    ("[P.1-6]", 1),
    ("[◀O.4]", 8, "#darkgreen"),
    ("[P.7-8]", 9),
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
    fermata_measure_empty_overrides=[7],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
        (3, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "P",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "P",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(7 - 1)),
)

# bfl

maker(
    ("bfl", (1, 6)),
    harmony.sixteenths(
        harmony.damp_counts,
    ),
    baca.pitch("D5"),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
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
    ("bfl", 8),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("F#5"),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
    ),
)

maker(
    ("bfl", (9, 10)),
    harmony.sixteenths(
        harmony.damp_counts_curtailed,
    ),
    baca.pitch("D5"),
    baca.new(
        baca.text_spanner(
            "A =|",
            abjad.tweak(5.5).staff_padding,
            autodetect_right_padding=True,
            bookend=False,
            map=baca.selectors.runs(),
            selector=baca.selectors.rleaves(),
        ),
        measures=9,
    ),
    baca.new(
        baca.text_spanner(
            "A =|",
            abjad.tweak(5.5).staff_padding,
            autodetect_right_padding=True,
            bookend=False,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        measures=10,
        right_broken=True,
        selector=baca.selectors.leaves((1, None), rleak=True),
    ),
)

maker(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", (1, 6)),
    harmony.sixteenths(
        [41, -7, "+"],
    ),
    baca.flat_glissando(
        hide_stem_selector=baca.selectors.pleaves((1, -2)),
        selector=baca.selectors.run(0),
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
        selector=baca.selectors.run(1),
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.slate_staff_position(),
    baca.dynamic(
        '"f"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (9, 10)),
    harmony.sixteenths(
        [12, 4, 4, 1, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.flat_glissando(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", (1, 6)),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.duration_color,
    ),
    harmony.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "pp",
        selector=baca.selectors.pheads(),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (9, 10)),
    harmony.sixteenths(
        harmony.duration_color,
    ),
    harmony.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("pp"),
)

maker(
    ("perc2", (1, 10)),
    baca.dls_staff_padding(6),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("bass"),
    harmony.sixteenths(
        harmony.duration_color,
    ),
    baca.pitch("F1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.pheads(),
    ),
    baca.dls_staff_padding(4 + 3),
)

maker(
    ("hp", 8),
    baca.clef("treble"),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("hp", (9, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        harmony.duration_color,
    ),
    baca.pitch("F1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4 + 3),
)

# va

maker(
    ("va", (1, 6)),
    harmony.sixteenths(
        harmony.glissando_counts,
    ),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(1.5).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("va", 8),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("F4"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("va", (9, 10)),
    baca.make_repeat_tied_notes(),
    baca.pitch("D4"),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

# vc1

maker(
    ("vc1", (1, 6)),
    harmony.sixteenths(
        harmony.damp_counts,
    ),
    baca.pitch("D#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("vc1", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("vc1", (9, 10)),
    harmony.sixteenths(
        harmony.damp_counts_curtailed,
    ),
    baca.pitch("D#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

# vc2

maker(
    ("vc2", (1, 6)),
    harmony.sixteenths(
        harmony.damp_counts,
    ),
    baca.pitch("C#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("vc2", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("vc2", (9, 10)),
    harmony.sixteenths(
        harmony.damp_counts_curtailed,
    ),
    baca.pitch("C#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

# cb1

maker(
    ("cb1", (1, 6)),
    harmony.sixteenths(
        harmony.glissando_counts,
    ),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

maker(
    ("cb1", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb1", (9, 10)),
    harmony.sixteenths(
        harmony.glissando_counts_curtailed,
    ),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

# cb2

maker(
    ("cb2", (1, 6)),
    harmony.sixteenths(
        harmony.glissando_counts,
    ),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

maker(
    ("cb2", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb2", (9, 10)),
    harmony.sixteenths(
        harmony.glissando_counts_curtailed,
    ),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)
