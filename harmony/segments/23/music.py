import abjad
import baca

from harmony import library

#########################################################################################
######################################### 23 [W] ########################################
#########################################################################################

stage_markup = (
    ("[W.1]", 1),
    ("[▶Y.1]", 2, "#darkgreen"),
    ("[W.2-3]", 4),
    ("[W.4]", 6),
    ("[◀V.6]", 7, "#darkgreen"),
    ("[◀T.3]", 8, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (5, 4),
        (6, 4),
        (1, 4),
        (5, 4),
        (5, 4),
        (6, 4),
        (3, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "W",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "W",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(8 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
)

# bfl

commands(
    ("bfl", 2),
    library.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    ),
    baca.pitches(
        library.warble_pitches.rotate(-6),
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
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((4, 5)),
        map=baca.selectors.runs(),
        selector=baca.selectors.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", (4, 6)),
    library.sixteenths(
        [4],
    ),
    baca.pitch("<B3 Dqf4>"),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("mp"),
)

commands(
    ("bfl", 8),
    library.sixteenths(
        [-4, 8, "-"],
        extra_counts=[1],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.selectors.rleak_runs(),
    ),
)

commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    library.sixteenths(
        [-16, 4],
    ),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", (4, 6)),
    library.sixteenths(
        [4, -16, 4, -16, 4, "-"],
    ),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

commands(
    ("perc1", 7),
    baca.make_notes(),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6 + 1).staff_padding,
    ),
)

commands(
    ("perc1", 8),
    library.sixteenths(
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6 + 1).staff_padding,
    ),
)

commands(
    ("perc1", (1, 8)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch(
        "E4",
        baca.selectors.plt(0),
    ),
    baca.laissez_vibrer(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4 + 2).staff_padding,
    ),
)

commands(
    ("perc2", 7),
    library.sixteenths(
        [4, "-"],
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6 + 2).staff_padding,
    ),
)

commands(
    ("perc2", 8),
    library.sixteenths(
        [-2, 2, -8, 2, "-"],
        extra_counts=[1],
    ),
    library.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6 + 2).staff_padding,
    ),
)

commands(
    ("perc2", (7, 8)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
)

commands(
    ("hp", 6),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-xyl-markup",
        abjad.tweak(4).staff_padding,
    ),
)

# va

commands(
    ("va", 1),
    baca.clef("alto"),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E3"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("va", 2),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

commands(
    ("va", (4, 6)),
    library.sixteenths(
        [4],
    ),
    baca.pitch("E3"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P -> T",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([2, 1]),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("va", 7),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("va", 8),
    library.sixteenths(
        [-6, 2, -4, 2, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("bass"),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<A4 B4 C5>"),
    baca.dynamic("pp"),
)

commands(
    ("vc1", (4, 5)),
    library.sixteenths(
        [4],
    ),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves(),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
    return result


commands(
    ("vc1", (6, 7)),
    library.sixteenths(
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4, 0],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((1, None), rleak=True),
    ),
    baca.scp_spanner(
        "T -> P =|",
        abjad.tweak(3).staff_padding,
        pieces=lambda _: baca.Selection(_).mgroups([1, 2]),
    ),
)

commands(
    ("vc1", 8),
    library.sixteenths(
        [-7, 3, -7, 3],
        extra_counts=[1],
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("bass"),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.pitch("Dqf3"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(5).bound_details__right__padding,
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
    ),
)

commands(
    ("vc2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

commands(
    ("vc2", 4),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc2", (5, 6)),
    baca.make_notes(),
)

commands(
    ("vc2", (4, 6)),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("vc2", 7),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc2", 8),
    library.sixteenths(
        [-10, 3, -5, 2],
        extra_counts=[1],
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("bass"),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E1"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
    baca.dynamic("pp"),
)

commands(
    ("cb1", 4),
    baca.clef("bass"),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
    return result


commands(
    ("cb1", (6, 7)),
    library.sixteenths(
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4, 0],
        denominator=True,
    ),
    baca.tuplet_bracket_down(),
    baca.pitch("E1"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((1, None), rleak=True),
    ),
    baca.scp_spanner(
        "T -> P =|",
        abjad.tweak(3).staff_padding,
        pieces=lambda _: baca.Selection(_).mgroups([1, 2]),
    ),
)

commands(
    ("cb1", 8),
    library.sixteenths(
        [1, -14, 1],
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("treble"),
)

commands(
    ("cb2", 2),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

commands(
    ("cb2", (5, 6)),
    library.sixteenths(
        [4],
    ),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "ff >o",
        bookend=False,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "P3 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", 7),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves(),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)


commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 7)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    baca.make_notes(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
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
        fermata_measure_empty_overrides=[3],
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
