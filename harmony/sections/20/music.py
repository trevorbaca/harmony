import abjad
import baca

from harmony import library

#########################################################################################
######################################### 20 [T] ########################################
#########################################################################################

stage_markup = (
    ("[▶U.1]", 1, "#darkgreen"),
    ("[▶V.3]", 2, "#darkgreen"),
    ("[T.1-8]", 3),
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
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "T",
            baca.selectors.skip(3 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "T",
            baca.selectors.skip(3 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(3 - 1)),
)

# bfl

commands(
    ("bfl", 1),
    library.sixteenths(
        [-4, 2, 2],
        written_quarters=([0], 1),
        invisible_pairs=True,
    ),
    baca.pitch("E5"),
    baca.hairpin(
        "o< f >o niente",
        map=baca.selectors.runs(),
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.trill_spanner(
        alteration="m2",
        map=baca.selectors.runs((None, 1)),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="m2",
        map=baca.selectors.runs((1, 2)),
    ),
)

commands(
    ("bfl", 2),
    library.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("Gqs5"),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.selectors.runs(),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="A5",
        map=baca.selectors.runs(),
    ),
)

commands(
    ("bfl", (3, 10)),
    library.sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("pp-sempre"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(3),
    library.phjc(
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    ),
    library.purpleheart_staff_positions([2, -2, 0]),
    baca.dynamic("p"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(1),
    library.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< pp >o niente",
        map=baca.selectors.runs(),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", (2, 10)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", (3, 10)),
    library.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

# perc2

commands(
    ("perc2", 1),
    library.sixteenths(
        [-4, 4],
    ),
    library.bass_drum_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("perc2", 2),
    library.sixteenths(
        [-4, 4, -4],
    ),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.pheads(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", (3, 10)),
    library.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
    library.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", (1, 10)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        ["-", 4, 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.pitches("F5 E5 Eb5"),
    baca.flageolet(
        baca.selectors.pheads(),
    ),
    baca.laissez_vibrer(
        baca.selectors.pheads(),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", 2),
    baca.clef("bass"),
    library.sixteenths(
        [-4, 4, -4],
    ),
    baca.pitch("D1"),
    baca.ottava_bassa(),
    baca.ottava_bracket_staff_padding(8),
    baca.laissez_vibrer(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
)

commands(
    ("hp", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=baca.selectors.leaves((1, None)),
    ),
)

commands(
    ("hp", (3, 10)),
    baca.clef("treble"),
    library.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (1, 10)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    baca.clef("alto"),
    library.sixteenths(
        [-4, 4],
    ),
    baca.pitch("Bb3"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=baca.selectors.runs(),
    ),
)

commands(
    ("va", 2),
    library.sixteenths(
        [2, "+"],
        extra_counts=[1],
        after_graces=[1],
    ),
    baca.tuplet_bracket_up(),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "o< mf",
    ),
)

commands(
    ("va", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("va", (3, 8)),
    library.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.new(
        baca.tuplet_bracket_staff_padding(2),
        library.bridge_staff_position(),
        selector=lambda _: baca.rleaves(_, count=2),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("va", (9, 10)),
    library.sixteenths(
        [-4, 2, -4, 6, 6, 6, 6],
        extra_counts=[2, 0, 0, 0, 0, 0, 0, 0],
        denominator=None,
    ),
    baca.accent(),
    baca.stem_tremolo(),
    baca.new(
        baca.clef("alto"),
        baca.staff_lines(5),
        selector=baca.selectors.leaf(3),
    ),
    baca.new(
        baca.pitch("E3"),
        baca.dls_staff_padding(4),
        selector=baca.selectors.plts((1, None)),
    ),
    baca.triple_staccato(
        baca.selectors.pheads((1, None)),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.phead(1),
    ),
    baca.scp_spanner(
        "P4 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        right_broken=True,
        selector=baca.selectors.leaves((3, None), rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        right_broken=True,
        selector=baca.selectors.leaves((3, None), rleak=True),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("treble"),
    baca.pitch("Aqf4"),
    baca.markup(r"\baca-eleven-e-flat"),
)

commands(
    ("vc1", 2),
    library.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch("F#5"),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.selectors.runs(),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=baca.selectors.runs(),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", (3, 10)),
    library.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(2),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("treble"),
    baca.pitch("F4"),
)

commands(
    ("vc2", 2),
    library.sixteenths(
        [10, "+"],
        extra_counts=[2],
        denominator=None,
        after_graces=[1],
    ),
    baca.tuplet_bracket_staff_padding(2),
    baca.pitches("Gb4 F4"),
    baca.glissando(),
    baca.hairpin(
        "o< mf",
    ),
)

commands(
    ("vc2", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc2", (3, 10)),
    library.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(2),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("bass"),
    baca.pitch("Dtqf4"),
)

commands(
    ("cb1", 2),
    library.sixteenths(
        [3, "+"],
        after_graces=[1],
    ),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.hairpin(
        "o< mf",
    ),
)

commands(
    ("cb1", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", (3, 10)),
    library.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("cb1", 10),
    baca.rest_extra_offset(
        (-1.5, 0),
        baca.selectors.rest(-1),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
    baca.pitch("Eb2"),
    baca.dls_staff_padding(4),
)

commands(
    ("cb2", 2),
    baca.skeleton(
        "r4 c16. r32 r8 c16. r32 r8",
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=baca.selectors.leaf(1),
    ),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("cb2", (2, 10)),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves((1, None)),
    ),
)

commands(
    ("cb2", (3, 10)),
    library.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

commands(
    ("cb2", (2, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=baca.selectors.leaves((1, None), rleak=True),
    ),
)

commands(
    ("cb2", 10),
    baca.rest_extra_offset(
        (-1.5, 0),
        baca.selectors.rest(-1),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    library.sixteenths(
        [-4, 3, -1],
    ),
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

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], (3, 10)),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        match=[0, 1, 2],
    ),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
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