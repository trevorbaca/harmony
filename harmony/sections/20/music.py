import abjad
import baca

from harmony import library

#########################################################################################
######################################### 20 [T] ########################################
#########################################################################################

stage_markup = (
    ("[>U.1]", 1, "#darkgreen"),
    ("[>V.3]", 2, "#darkgreen"),
    ("[T.1-8]", 3),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.section_accumulation_defaults(),
    instruments=library.instruments(),
    margin_markups=library.margin_markups(),
    metronome_marks=library.metronome_marks(),
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
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("4:5(2)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("5:4(4)=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 3 - 1)),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        [-4, 2, 2],
        written_quarters=([0], 1),
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 2),
    library.make_sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", (3, 10)),
    library.make_sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_phjc_rhythm(
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    ),
)

commands(
    ("perc1", 2),
    library.make_sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("perc1", (3, 10)),
    library.make_sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_sixteenths(
        [-4, 4],
    ),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [-4, 4, -4],
    ),
)

commands(
    ("perc2", (3, 10)),
    library.make_sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        ["-", 4, 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
)

commands(
    ("hp", 2),
    library.make_sixteenths(
        [-4, 4, -4],
    ),
)

commands(
    ("hp", (3, 10)),
    library.make_sixteenths(
        [2, -20, 2, -24],
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [-4, 4],
    ),
)

commands(
    ("va", 2),
    library.make_sixteenths(
        [2, "+"],
        extra_counts=[1],
        after_graces=[1],
    ),
)

commands(
    ("va", (3, 8)),
    library.make_sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("va", (9, 10)),
    library.make_sixteenths(
        [-4, 2, -4, 6, 6, 6, 6],
        extra_counts=[2, 0, 0, 0, 0, 0, 0, 0],
        denominator=None,
    ),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("vc1", 2),
    library.make_sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc1", (3, 10)),
    library.make_sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [10, "+"],
        extra_counts=[2],
        denominator=None,
        after_graces=[1],
    ),
)

commands(
    ("vc2", (3, 10)),
    library.make_sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
)

# CB1

commands(
    ("cb1", 1),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("cb1", 2),
    library.make_sixteenths(
        [3, "+"],
        after_graces=[1],
    ),
)

commands(
    ("cb1", (3, 10)),
    library.make_sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("cb2", 2),
    baca.make_skeleton(
        "r4 c16. r32 r8 c16. r32 r8",
    ),
)

commands(
    ("cb2", (3, 10)),
    library.make_sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
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
    baca.pitch("E5"),
    baca.hairpin(
        "o< f >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        alteration="m2",
        map=lambda _: baca.select.runs(_)[:1],
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="m2",
        map=lambda _: baca.select.runs(_)[1:2],
    ),
)

commands(
    ("bfl", 2),
    baca.pitch("Gqs5"),
    baca.hairpin(
        "o< mp >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="A5",
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("bfl", (3, 10)),
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
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< pp >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
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
    library.bass_drum_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("perc2", 2),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", (3, 10)),
    baca.tuplet_bracket_staff_padding(3),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
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
    baca.tuplet_bracket_up(),
    baca.pitches("F5 E5 Eb5"),
    baca.flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", 2),
    baca.clef("bass"),
    baca.pitch("D1"),
    baca.ottava_bassa(),
    baca.ottava_bracket_staff_padding(8),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
)

commands(
    ("hp", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[1:],
    ),
)

commands(
    ("hp", (3, 10)),
    baca.clef("treble"),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
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
    baca.pitch("Bb3"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("va", 2),
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
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.new(
        baca.tuplet_bracket_staff_padding(2),
        library.bridge_staff_position(),
        selector=lambda _: baca.rleaves(_, count=2),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("va", (9, 10)),
    baca.accent(),
    baca.stem_tremolo(),
    baca.new(
        baca.clef("alto"),
        baca.staff_lines(5),
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
    baca.new(
        baca.pitch("E3"),
        baca.dls_staff_padding(4),
        selector=lambda _: baca.select.plts(_)[1:],
    ),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.phead(_, 1),
    ),
    baca.scp_spanner(
        "P4 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:]),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:]),
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
    baca.note_head_style_harmonic(),
    baca.pitch("F#5"),
    baca.hairpin(
        "o< mp >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
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
        lambda _: baca.select.rest(_, -1),
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
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
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
        lambda _: baca.select.leaves(_)[1:],
    ),
)

commands(
    ("cb2", (2, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
    ),
)

commands(
    ("cb2", 10),
    baca.rest_extra_offset(
        (-1.5, 0),
        lambda _: baca.select.rest(_, -1),
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
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
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
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
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
