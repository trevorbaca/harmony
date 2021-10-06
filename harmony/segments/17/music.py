import abjad
import baca

from harmony import library as harmony

#########################################################################################
######################################### 17 [Q] ########################################
#########################################################################################

stage_markup = (
    ("[Q.1]", 1),
    ("[▶S.1]", 2, "#darkgreen"),
    ("[◀O.4]", 4, "#darkgreen"),
    ("[Q.2]", 5),
)

score = harmony.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    time_signatures=[
        (6, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (5, 4),
        (1, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "Q",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "Q",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(5 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("short", baca.selectors.rest(3 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(6 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-sixteen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(6 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    harmony.sixteenths(
        [4, 4, "-"],
    ),
    baca.pitch("D5"),
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
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("bfl", 2),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-3),
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

commands(
    ("bfl", 4),
    harmony.sixteenths(
        [-4, 8],
    ),
    baca.pitch("F#5"),
    baca.dynamic("p"),
)

commands(
    ("bfl", 5),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch(
        "F#5",
        baca.selectors.run(0),
    ),
)

commands(
    ("bfl", (4, 5)),
    baca.new(
        baca.trill_spanner(
            abjad.tweak(2).bound_details__right__padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8 + 1).staff_padding,
        ),
        selector=baca.selectors.runs((None, 1), rleak=True),
    ),
)

commands(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.make_notes(),
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 2),
    baca.clef("percussion"),
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
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(2, grace=False),
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.slate_staff_position(),
    baca.dynamic(
        '"f"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 5),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-16, 4],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

# perc2

commands(
    ("perc2", 1),
    baca.make_notes(),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(2),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(2, grace=False),
    ),
)

commands(
    ("perc2", 4),
    baca.staff_lines(1),
)

commands(
    ("perc2", 5),
    harmony.sixteenths(
        [-16, 4],
    ),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (4, 5)),
    baca.dls_staff_padding(6),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 2),
    baca.new(
        baca.dots_extra_offset((2, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=harmony.rests_filter_duration((">=", (1, 2))),
    ),
)

# hp

commands(
    ("hp", 1),
    baca.make_notes(),
    baca.pitch("Db1"),
    baca.ottava_bassa(),
    baca.ottava_bracket_staff_padding(8),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
)

commands(
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
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

commands(
    ("hp", 5),
    baca.clef("bass"),
    harmony.sixteenths(
        [-16, 4],
    ),
    baca.pitch("Db1"),
    baca.ottava_bassa(),
    baca.ottava_bracket_staff_padding(8),
    baca.laissez_vibrer(),
    baca.dynamic("f-ancora"),
    baca.dls_staff_padding(5),
)

commands(
    ("hp", (1, 5)),
    baca.ottava_bracket_staff_padding(8),
)

# va

commands(
    ("va", (1, 2)),
    baca.make_notes(),
    baca.pitch("D4"),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
        left_broken=True,
    ),
)

commands(
    ("va", 4),
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

commands(
    ("va", 5),
    baca.make_repeat_tied_notes(),
    baca.pitch("D4"),
    baca.hairpin(
        "pp >o niente",
        selector=baca.selectors.rleaves(),
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

commands(
    ("vc1", 1),
    harmony.tessera_2(
        3,
        rest_plts=[0],
    ),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("vc1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("vc1", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.clef("bass"),
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

commands(
    ("vc1", 5),
    harmony.tessera_2(
        3,
        advance=24,
    ),
    baca.pitch("E3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.leaves(),
    ),
)

# vc2

commands(
    ("vc2", 1),
    harmony.tessera_2(
        2,
        rest_plts=[0],
    ),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("vc2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("vc2", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.clef("bass"),
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

commands(
    ("vc2", 5),
    harmony.tessera_2(
        2,
        advance=24,
    ),
    baca.pitch("D3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.leaves(),
    ),
)

# cb1

commands(
    ("cb1", 1),
    harmony.tessera_2(
        1,
        rest_plts=[0],
    ),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<B5 C6 Db6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("cb1", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.clef("bass"),
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

commands(
    ("cb1", 5),
    harmony.tessera_2(
        1,
        advance=24,
    ),
    baca.pitch("E3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.leaves(),
    ),
)

# cb2

commands(
    ("cb2", 1),
    harmony.tessera_2(0),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("cb2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<A#5 B5 C6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("cb2", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.clef("bass"),
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

commands(
    ("cb2", 5),
    harmony.tessera_2(
        0,
        advance=24,
    ),
    baca.pitch("D3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.leaves(),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 2),
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

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.hairpin(
        "p < f",
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 5),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], [1, 5]),
    baca.triple_staccato(baca.selectors.pheads()),
)

if __name__ == "__main__":
    keywords = baca.interpret.make_keyword_dictionary(
        **baca.segment_interpretation_defaults(),
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
        fermata_measure_empty_overrides=[3, 6],
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        score=score,
        stage_markup=stage_markup,
        transpose_score=True,
    )
    lilypond_file_keywords = baca.make_lilypond_file_dictionary(
        include_layout_ly=True,
        includes=["../../stylesheet.ily"],
    )
    metadata, persist, score, timing = baca.build.interpret_segment_revised(
        commands,
        **keywords,
    )
    lilypond_file = baca.build.make_segment_lilypond_file(
        score,
        lilypond_file_keywords=lilypond_file_keywords,
        preamble=baca.interpret.nonfirst_preamble.split("\n"),
    )
    baca.build.make_segment_pdf_revised(lilypond_file, metadata, persist, timing)
