import abjad
import baca

from harmony import library

#########################################################################################
######################################### 17 [Q] ########################################
#########################################################################################

stage_markup = (
    ("[Q.1]", 1),
    ("[▶S.1]", 2, "#darkgreen"),
    ("[◀O.4]", 4, "#darkgreen"),
    ("[Q.2]", 5),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (6, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (5, 4),
        (1, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "Q",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "Q",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("2=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("2=4", lambda _: baca.select.skip(_, 5 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("short", lambda _: baca.select.rest(_, 3 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 6 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-sixteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 6 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        [4, 4, "-"],
    ),
)

commands(
    ("bfl", 2),
    library.make_warble_rhythm(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
)

commands(
    ("bfl", 3),
    baca.make_mmrests(),
)

commands(
    ("bfl", 4),
    library.make_sixteenths(
        [-4, 8],
    ),
)

commands(
    ("bfl", 5),
    library.make_sixteenths(
        [4, "-"],
    ),
)

commands(
    ("bfl", 6),
    baca.make_mmrests(),
)

# PERC1

commands(
    ("perc1", 1),
    baca.make_notes(),
)

commands(
    ("perc1", 2),
    library.make_appoggiato_rhythm(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
)

commands(
    ("perc1", 3),
    baca.make_mmrests(),
)

commands(
    ("perc1", 4),
    library.make_sixteenths(
        ["+"],
    ),
)

commands(
    ("perc1", 5),
    library.make_sixteenths(
        [-16, 4],
    ),
)

commands(
    ("perc1", 6),
    baca.make_mmrests(),
)

# PERC2

commands(
    ("perc2", 1),
    baca.make_notes(),
)

commands(
    ("perc2", 2),
    library.make_appoggiato_rhythm(
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
    ),
)

commands(
    ("perc2", (3, 4)),
    baca.make_mmrests(),
)

commands(
    ("perc2", 5),
    library.make_sixteenths(
        [-16, 4],
    ),
)

commands(
    ("perc2", 6),
    baca.make_mmrests(),
)

# HP

commands(
    ("hp", 1),
    baca.make_notes(),
)

commands(
    ("hp", (2, 3)),
    baca.make_mmrests(),
)

commands(
    ("hp", 4),
    library.make_sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 5),
    library.make_sixteenths(
        [-16, 4],
    ),
)

commands(
    ("hp", 6),
    baca.make_mmrests(),
)

# VA

commands(
    ("va", (1, 2)),
    baca.make_notes(),
)

commands(
    ("va", 3),
    baca.make_mmrests(),
)

commands(
    ("va", 4),
    library.make_sixteenths(
        ["+"],
    ),
)

commands(
    ("va", 5),
    baca.make_repeat_tied_notes(),
)

commands(
    ("va", 6),
    baca.make_mmrests(),
)

# VC1

commands(
    ("vc1", 1),
    library.make_tessera_2(
        3,
        rest_plts=[0],
    ),
)

commands(
    ("vc1", 2),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests(),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        ["+", -1],
    ),
)

commands(
    ("vc1", 5),
    library.make_tessera_2(
        3,
        advance=24,
    ),
)

commands(
    ("vc1", 6),
    baca.make_mmrests(),
)

# VC2

commands(
    ("vc2", 1),
    library.make_tessera_2(
        2,
        rest_plts=[0],
    ),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests(),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        ["+", -1],
    ),
)

commands(
    ("vc2", 5),
    library.make_tessera_2(
        2,
        advance=24,
    ),
)

commands(
    ("vc2", 6),
    baca.make_mmrests(),
)

# CB1

commands(
    ("cb1", 1),
    library.make_tessera_2(
        1,
        rest_plts=[0],
    ),
)

commands(
    ("cb1", 2),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("cb1", 3),
    baca.make_mmrests(),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        ["+", -1],
    ),
)

commands(
    ("cb1", 5),
    library.make_tessera_2(
        1,
        advance=24,
    ),
)

commands(
    ("cb1", 6),
    baca.make_mmrests(),
)

# CB2

commands(
    ("cb2", 1),
    library.make_tessera_2(0),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("cb2", 3),
    baca.make_mmrests(),
)

commands(
    ("cb2", 4),
    library.make_sixteenths(
        ["+", -1],
    ),
)

commands(
    ("cb2", 5),
    library.make_tessera_2(
        0,
        advance=24,
    ),
)

commands(
    ("cb2", 6),
    baca.make_mmrests(),
)

# phantom & reapply

music_voices = [_ for _ in voice_names if "Music_Voice" in _]

commands(
    music_voices,
    baca.append_phantom_measure(),
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 1),
    baca.pitch("D5"),
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
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("bfl", 2),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -3),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_),
            (3, 4),
        ),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("bfl", 4),
    baca.pitch("F#5"),
    baca.dynamic("p"),
)

commands(
    ("bfl", 5),
    baca.pitch(
        "F#5",
        lambda _: abjad.select.run(_, 0),
    ),
)

commands(
    ("bfl", (4, 5)),
    baca.new(
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 9"),
        ),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
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
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 2),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 2, grace=False),
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    library.slate_staff_position(),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 5),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

# perc2

commands(
    ("perc2", 1),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 2),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 2, grace=False),
    ),
)

commands(
    ("perc2", 4),
    baca.staff_lines(1),
)

commands(
    ("perc2", 5),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
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
        map=lambda _: [
            x
            for x in abjad.select.rests(_)
            if abjad.get.duration(x) >= abjad.Duration((1, 2))
        ],
    ),
)

# hp

commands(
    ("hp", 1),
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
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f-ancora"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("hp", 5),
    baca.clef("bass"),
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
    baca.pitch("D4"),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        left_broken=True,
    ),
)

commands(
    ("va", 4),
    baca.pitch("F4"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("va", 5),
    baca.pitch("D4"),
    baca.hairpin(
        "pp >o niente",
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", 4),
    baca.clef("bass"),
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
    ("vc1", 5),
    baca.pitch("E3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", 4),
    baca.clef("bass"),
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
    ("vc2", 5),
    baca.pitch("D3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
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
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 4),
    baca.clef("bass"),
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
    ("cb1", 5),
    baca.pitch("E3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
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
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 4),
    baca.clef("bass"),
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
    ("cb2", 5),
    baca.pitch("D3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
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
    # TODO: promote to library.make_sixteenths()
    baca.invisible_music(
        lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -3,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        lambda _: baca.select.pleaf(_, -1),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.hairpin(
        "p < f",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 5),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], [1, 5]),
    baca.triple_staccato(lambda _: baca.select.pheads(_)),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_section(
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
        fermata_measure_empty_overrides=[3, 6],
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
