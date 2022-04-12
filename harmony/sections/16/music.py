import abjad
import baca

from harmony import library

#########################################################################################
######################################### 16 [P] ########################################
#########################################################################################

stage_markup = (
    ("[P.1-6]", 1),
    ("[◀O.4]", 8, "#darkgreen"),
    ("[P.7-8]", 9),
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
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "P",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "P",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 7 - 1)),
)

# bfl

commands(
    ("bfl", (1, 6)),
    library.sixteenths(
        library.damp_counts,
    ),
    baca.pitch("D5"),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.text_spanner(
        "A =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 8),
    library.sixteenths(
        ["+"],
    ),
    baca.pitch("F#5"),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
    ),
)

commands(
    ("bfl", (9, 10)),
    library.sixteenths(
        library.damp_counts_curtailed,
    ),
    baca.pitch("D5"),
    baca.new(
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
        measures=9,
    ),
    baca.new(
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        measures=10,
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
    ),
)

commands(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 6)),
    library.sixteenths(
        [41, -7, "+"],
    ),
    baca.flat_glissando(
        hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-2],
        selector=lambda _: abjad.select.run(_, 0),
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
        selector=lambda _: abjad.select.run(_, 1),
    ),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 8),
    library.sixteenths(
        ["+"],
    ),
    library.slate_staff_position(),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (9, 10)),
    library.sixteenths(
        [12, 4, 4, 1, "-"],
    ),
    library.brake_drum_staff_position(),
    baca.flat_glissando(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 6)),
    baca.staff_lines(1),
    library.sixteenths(
        library.duration_color,
    ),
    library.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "pp",
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (9, 10)),
    library.sixteenths(
        library.duration_color,
    ),
    library.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("pp"),
)

commands(
    ("perc2", (1, 10)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", (1, 6)),
    baca.clef("bass"),
    library.sixteenths(
        library.duration_color,
    ),
    baca.pitch("F1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.dls_staff_padding(4 + 3),
)

commands(
    ("hp", 8),
    baca.clef("treble"),
    library.sixteenths(
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
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("hp", (9, 10)),
    baca.clef("bass"),
    library.sixteenths(
        library.duration_color,
    ),
    baca.pitch("F1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4 + 3),
)

# va

commands(
    ("va", (1, 6)),
    library.sixteenths(
        library.glissando_counts,
    ),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("va", 8),
    library.sixteenths(
        ["+"],
    ),
    baca.pitch("F4"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("va", (9, 10)),
    baca.make_repeat_tied_notes(),
    baca.pitch("D4"),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

# vc1

commands(
    ("vc1", (1, 6)),
    library.sixteenths(
        library.damp_counts,
    ),
    baca.pitch("D#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("vc1", 8),
    library.sixteenths(
        ["+", -1],
    ),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc1", (9, 10)),
    library.sixteenths(
        library.damp_counts_curtailed,
    ),
    baca.pitch("D#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

# vc2

commands(
    ("vc2", (1, 6)),
    library.sixteenths(
        library.damp_counts,
    ),
    baca.pitch("C#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("vc2", 8),
    library.sixteenths(
        ["+", -1],
    ),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc2", (9, 10)),
    library.sixteenths(
        library.damp_counts_curtailed,
    ),
    baca.pitch("C#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

# cb1

commands(
    ("cb1", (1, 6)),
    library.sixteenths(
        library.glissando_counts,
    ),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("cb1", 8),
    library.sixteenths(
        ["+", -1],
    ),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", (9, 10)),
    library.sixteenths(
        library.glissando_counts_curtailed,
    ),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

# cb2

commands(
    ("cb2", (1, 6)),
    library.sixteenths(
        library.glissando_counts,
    ),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("cb2", 8),
    library.sixteenths(
        ["+", -1],
    ),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb2", (9, 10)),
    library.sixteenths(
        library.glissando_counts_curtailed,
    ),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
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
