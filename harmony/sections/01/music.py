import abjad
import baca

from harmony import library

#########################################################################################
######################################### 01 [A] ########################################
#########################################################################################

stage_markup = (
    ("[A.1]", 1),
    ("[A.2]", 2),
    ("[▶C.1]", 3, "#darkgreen"),
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
        (5, 4),
        (3, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "A",
            lambda _: baca.select.skip(_, 2 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "A",
            lambda _: baca.select.skip(_, 2 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.open_volta(lambda _: baca.select.skip(_, 2 - 1)),
    baca.close_volta(lambda _: baca.select.skip(_, 3 - 1), site="after"),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("3:5(4)=4", lambda _: baca.select.skip(_, 3 - 1)),
)

# bfl

commands(
    ("bfl", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        library.margin_markup("Bfl."),
        baca.start_markup(r"\harmony-bass-flute-markup"),
    ),
    library.appoggiato(
        divisions=[16, 8, 12, 8],
        counts=[9, 6, 8, 4],
        incise=True,
    ),
    baca.pitch(
        "A3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_a,
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads([0, 2], grace=False),
    ),
    baca.dynamic(
        "mf-mp",
        selector=baca.selectors.pheads([1, 3], grace=False),
    ),
    baca.dls_staff_padding(5),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.dots_x_extent_false(
        baca.selectors.leaves(grace=False),
    ),
)

commands(
    ("bfl", 3),
    library.sixteenths(
        library.cerulean[1:],
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.dls_staff_padding(3),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        argument=r"\baca-cov-markup =|",
    ),
)

# perc1

commands(
    "perc1",
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 1),
    library.margin_markup("Perc. I"),
    baca.start_markup(r"\harmony-percussion-i-markup"),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        ["-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.selectors.leaves((-2, None)),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 2),
    library.sixteenths(
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o<| mf",
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:1]),
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.selectors.leaves((-2, None)),
    ),
)

commands(
    ("perc1", [1, 2]),
    baca.breathe(),
)

commands(
    ("perc1", (1, 2)),
    library.bass_drum_staff_position(),
)

commands(
    ("perc1", 3),
    baca.staff_lines(3),
    library.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
    ),
)

# perc2

commands(
    ("perc2", (1, 2)),
    baca.suite(
        library.margin_markup("Perc. II"),
        baca.start_markup(r"\harmony-percussion-ii-markup"),
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    ),
    library.slate_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 3),
    baca.staff_lines(3),
    library.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    ),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
    ),
)

# hp

commands(
    ("hp", (1, 2)),
    baca.suite(
        library.margin_markup("Hp."),
        baca.start_markup(r"\harmony-harp-markup"),
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    ),
    library.whisk_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("hp", 3),
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [10, "-"],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "mf-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
)

# va

commands(
    ("va", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        library.margin_markup("Va."),
        baca.start_markup(r"\harmony-viola-markup"),
    ),
    library.appoggiato(
        divisions=[16, 8, 12, 8],
        incise=True,
    ),
    baca.pitch("Gqf4"),
    baca.markup(
        r"\baca-seven-a",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("va", 3),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        library.cerulean[1:],
        extra_counts=[2],
        denominator=None,
    ),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("sfp"),
    baca.dls_staff_padding(6),
)

# vc1

commands(
    ("vc1", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        library.margin_markup("Vc. I"),
        baca.start_markup(r"\harmony-cello-i-markup"),
    ),
    baca.skeleton(
        r"c4 \times 5/3 { c4 c4 c4 } \times 5/3 { c4 c4 c4 }",
    ),
    baca.repeat_tie(
        baca.selectors.leaves([1, 4]),
    ),
    baca.tuplet_bracket_down(),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.selectors.lparts([4, 5]),
        selector=lambda _: baca.rleaves(_, count=2),
    ),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 ->",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("vc1", 3),
    baca.clef(
        "percussion",
        baca.selectors.leaf(1),
    ),
    baca.staff_lines(
        1,
        baca.selectors.leaf(1),
    ),
    library.sixteenths(
        [5, -5, 1, -4],
        extra_counts=[1],
    ),
    baca.new(
        library.bridge_staff_position(),
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic("sfp"),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("vc1", (1, 3)),
    baca.new(
        baca.pitch("A2"),
        baca.accent(),
        baca.stem_tremolo(),
        baca.dls_staff_padding(6),
        selector=baca.selectors.pheads((None, -1)),
    ),
    baca.new(
        baca.dls_staff_padding(6),
        selector=baca.selectors.pheads((-1, None)),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((2, -2)),
    ),
)

# vc2

commands(
    ("vc2", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        library.margin_markup("Vc. II"),
        baca.start_markup(r"\harmony-cello-ii-markup"),
    ),
    library.appoggiato(
        divisions=[16, 8, 12, 8],
        incise=True,
    ),
    baca.pitch("B3"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("vc2", 3),
    library.sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", (1, 3)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        library.margin_markup("Cb. I"),
        baca.start_markup(r"\harmony-contrabass-i-markup"),
    ),
    library.sixteenths(
        [18, 6, 10, 4, 6],
    ),
    baca.pitch("A1"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.selectors.lparts([4, 7]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 ->",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        final_piece_spanner=False,
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("cb1", 3),
    baca.staff_lines(1),
    baca.clef("percussion"),
    baca.skeleton(
        r"r4 \times 4/5 { r4. c16 r16 c16 r16 }",
    ),
    baca.tuplet_number_text(r"\markup 5:4"),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("sfp"),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
        right_broken=True,
        selector=baca.selectors.leaves((-4, None), rleak=True),
    ),
)

# cb2

commands(
    ("cb2", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        library.margin_markup("Cb. II"),
        baca.start_markup(r"\harmony-contrabass-ii-markup"),
    ),
    library.appoggiato(
        divisions=[16, 8, 12, 8],
        incise=True,
    ),
    baca.pitch("Dqs3"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
    ),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
        map=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("cb2", 3),
    library.sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F#2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb2", (1, 3)),
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
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily", "header.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
