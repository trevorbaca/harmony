import abjad
import baca

from harmony import library

#########################################################################################
######################################### 24 [X] ########################################
#########################################################################################

stage_markup = (
    ("[X.1-3]", 1),
    ("[◀V.6]", 4, "#darkgreen"),
    ("[X.4-5]", 5),
    ("[X.6-8]", 7),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (4, 4),
        (4, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "X",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "X",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(5 - 1)),
)

# bfl

commands(
    ("bfl", (1, 3)),
    library.sixteenths(
        [2, 3, -3],
    ),
    baca.pitch("F5"),
    baca.hairpin(
        "niente o< mf >o",
        pieces=baca.selectors.lparts([1, 2 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=baca.selectors.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 9"),
        pieces=baca.selectors.lparts([1, 2 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
)

commands(
    ("bfl", (5, 9)),
    library.sixteenths(
        [2, 2, -2],
    ),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=baca.selectors.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
)

commands(
    ("bfl", (1, 9)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 3)),
    library.sixteenths(
        [5, -3],
    ),
    library.slate_staff_position(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 4),
    baca.make_notes(),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (5, 9)),
    library.sixteenths(
        [3, -3],
    ),
    library.slate_staff_position(),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 9)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 3)),
    library.sixteenths(
        [2, -8, 2, -3, 2, -8],
    ),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o<| mf",
        map=baca.selectors.rleak_runs(),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 5),
    baca.staff_lines(3),
    library.sixteenths(
        [1, "-"],
    ),
    library.purpleheart_staff_positions([2]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(4, 4), (4, 4), (4, 4), (1, 4)])
    return result


commands(
    ("perc2", (7, 9)),
    baca.staff_lines(1),
    library.sixteenths(
        [16, 16, 16, -4, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 0, 0, 2],
        denominator=None,
    ),
    baca.new(
        library.tam_tam_staff_position(),
        baca.flat_glissando(),
        selector=baca.selectors.run(0),
    ),
    baca.new(
        library.purpleheart_staff_positions([2]),
        selector=baca.selectors.leaves((-2, None)),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads([0, 2]),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves((None, -2)),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.new(
        baca.dynamic("ff"),
        baca.dls_staff_padding(5),
        selector=baca.selectors.pleaf(-1),
    ),
    baca.staff_lines(
        3,
        selector=baca.selectors.leaf(-2),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=baca.selectors.leaf(-1),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=baca.selectors.leaves((-1, None), rleak=True),
    ),
)

# hp

commands(
    ("hp", (1, 3)),
    library.sixteenths(
        [1, -9, 1, -4, 1, -9],
    ),
    baca.pitch("A4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "mf",
        selector=baca.selectors.pheads(([0], 3)),
    ),
    baca.dynamic(
        "mp",
        selector=baca.selectors.pheads(([1], 3)),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (5, 9)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [3, -3],
    ),
    library.whisk_staff_position(),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# va

commands(
    ("va", (1, 3)),
    baca.clef("alto"),
    baca.pitch("F4"),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="M2",
        map=baca.selectors.rleak_runs(),
    ),
)

commands(
    ("va", 4),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

commands(
    ("va", (5, 9)),
    library.tessera_3(4),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 -> P3 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

# vc1


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
    return result


commands(
    ("vc1", (1, 3)),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=[5],
        invisible=[6],
        tie=[6],
    ),
    baca.tuplet_bracket_down(),
    baca.new(
        baca.pitch("F4"),
        baca.triple_staccato(),
        selector=baca.selectors.pheads([0, 1, 2, -2, -1]),
    ),
    # NOTE: text spanner must currently come before pitched trill spanner
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((5, 12)),
    ),
    baca.new(
        baca.pitch("F4"),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=baca.selectors.lparts([1, 1 + 1]),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="M2",
        ),
        map=baca.selectors.rleak_runs(1, -1),
    ),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: abjad.select.get(
            abjad.select.runs(baca.rleak(abjad.select.leaves(_))), [0, -1]
        ),
    ),
)

commands(
    ("vc1", 4),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("F4"),
    baca.triple_staccato(),
)

commands(
    ("vc1", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((2, None)),
    ),
)

commands(
    ("vc1", (5, 9)),
    library.tessera_3(3),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

# vc2

commands(
    ("vc2", (1, 3)),
    baca.clef("treble"),
    baca.pitch("F4"),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="M2",
        map=baca.selectors.rleak_runs(),
    ),
    # NOTE: current clef / after-grace contention:
    baca.clef(
        "bass",
        baca.selectors.leaf(-1),
    ),
)

commands(
    ("vc2", 4),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

commands(
    ("vc2", (5, 9)),
    library.tessera_3(2),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

# cb1


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
    return result


commands(
    ("cb1", (1, 3)),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=[5],
        invisible=[6],
        tie=[6],
    ),
    baca.tuplet_bracket_down(),
    baca.new(
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.triple_staccato(),
        selector=baca.selectors.pheads([0, 1, 2, -2, -1]),
    ),
    # NOTE: text spanner must currently come before pitched trill spanner
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((5, 12)),
    ),
    baca.new(
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=baca.selectors.lparts([1, 1 + 1]),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="m2",
        ),
        map=baca.selectors.rleak_runs(1, -1),
    ),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: abjad.select.get(
            abjad.select.runs(baca.rleak(abjad.select.leaves(_))), [0, -1]
        ),
    ),
)

commands(
    ("cb1", 4),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch(
        "E4",
        do_not_transpose=True,
    ),
    baca.triple_staccato(),
)

commands(
    ("cb1", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((2, None)),
    ),
)

commands(
    ("cb1", (5, 9)),
    library.tessera_3(1),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

# cb2

commands(
    ("cb2", (1, 3)),
    baca.clef("treble"),
    baca.pitch(
        "E4",
        do_not_transpose=True,
    ),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="m2",
        map=baca.selectors.rleak_runs(),
    ),
    # NOTE: current clef / after-grace contention:
    baca.clef(
        "bass",
        baca.selectors.leaf(-1),
    ),
)

commands(
    ("cb2", 4),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

commands(
    ("cb2", (5, 9)),
    library.tessera_3(0),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "O -> P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc2", "cb2"], (1, 3)),
    baca.new(
        baca.staff_lines(5),
        match=[0, 1],
    ),
    library.sixteenths(
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    ),
    baca.hairpin(
        "niente o<| mp |>o",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
)

# va, vc2, cb2

commands(
    (["va", "vc2", "cb2"], 4),
    baca.new(
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=baca.selectors.leaves(),
        ),
        match=[0, 1],
    ),
    baca.new(
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=baca.selectors.leaves(),
        ),
        match=[2],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 9)),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.chunk(
        baca.accent(
            baca.selectors.pheads(),
        ),
        baca.flat_glissando(),
    ),
    baca.dynamic("pp"),
    baca.hairpin(
        "(pp) < f",
        measures=(7, 8),
        selector=baca.selectors.rleaves(),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 9)),
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
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)