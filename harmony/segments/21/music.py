import abjad
import baca

from harmony import library as harmony

#########################################################################################
######################################### 21 [U] ########################################
#########################################################################################

stage_markup = (
    ("[▶W.4]", 1, "#darkgreen"),
    ("[U.1]", 2),
    ("[▶W.4]", 4, "#darkgreen"),
    ("[U.2]", 5),
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
        (6, 4),
        (5, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "U",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "U",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.open_volta(baca.selectors.skip(1 - 1)),
    baca.close_volta(baca.selectors.skip(3 - 1)),
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(5 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 2),
    harmony.sixteenths(
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
        abjad.tweak(3).bound_details__right__padding,
        alteration="m2",
        map=baca.selectors.runs((1, 2)),
    ),
)

commands(
    ("bfl", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("<B3 Dqf4>"),
    baca.markup(
        baca.levine_multiphonic(42),
        match=[0],
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
)

commands(
    ("bfl", 5),
    harmony.sixteenths(
        [4, -4],
    ),
    baca.pitch("E5"),
    baca.dynamic("mp"),
    baca.text_spanner(
        "A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    harmony.sixteenths(
        [4, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    ),
    harmony.purpleheart_staff_positions([2, -2, 0]),
    baca.dynamic("p"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, -4, 4, -4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (5, 4)]),
        extra_counts=[0, -8],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.new(
        harmony.bass_drum_staff_position(),
        selector=baca.selectors.pleaf(0),
    ),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
    ),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.dynamic("mp-ancora"),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.tweak(6).staff_padding,
        ),
        selector=baca.selectors.pleaf(1),
    ),
)

commands(
    ("perc1", 5),
    harmony.sixteenths(
        [4, -4],
    ),
    harmony.brake_drum_staff_position(),
)

commands(
    ("perc1", (4, 5)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.selectors.leaves((2, None)),
    ),
)

# perc2

commands(
    ("perc2", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, -8, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (5, 4)]),
        extra_counts=[0, -8],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.pitch(
        "E4",
        baca.selectors.plt(0),
    ),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves((None, 2)),
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        harmony.bass_drum_staff_position(),
        baca.dynamic("mp"),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.tweak(6).staff_padding,
        ),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc2", 2),
    harmony.sixteenths(
        [-4, 4],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.new(
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.tweak(10.5).staff_padding,
        ),
        selector=baca.selectors.leaves((2, None)),
    ),
)

commands(
    ("perc2", 4),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
    ),
)

commands(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [6, 3, 7, 4],
    ),
    harmony.bass_drum_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.tweak(6).staff_padding,
    ),
)

# hp

commands(
    ("hp", [1, 4]),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.new(
        baca.dynamic("f"),
        match=[0],
    ),
    baca.new(
        baca.dynamic(
            "f-ancora",
            abjad.tweak(-0.9).self_alignment_X,
        ),
        match=[1],
    ),
    baca.markup(
        r"\baca-xyl-markup",
        abjad.tweak(4).staff_padding,
        match=[0],
    ),
)

commands(
    ("hp", 5),
    harmony.sixteenths(
        [-12, 4, 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (4, 4)]),
        extra_counts=[0, 4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.pitches("F5 E5 Eb5"),
    baca.flageolet(
        baca.selectors.pheads(),
    ),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("f"),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=lambda _: baca.Selection(_).leaves()[-3:].rleak(),
    ),
)

commands(
    ("hp", (1, 5)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
    ),
)

commands(
    ("va", 2),
    harmony.sixteenths(
        [-4, 4],
    ),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

commands(
    ("va", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("E4"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "P4 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        left_broken=True,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("va", 5),
    harmony.sixteenths(
        [-6, 1, -10, 1, "-"],
        extra_counts=[1],
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.note_head_style_harmonic(),
    baca.dynamic("mf"),
    baca.pizzicato_spanner(
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        selector=lambda _: baca.Selection(_).tleaves().rleak().rleak(),
    ),
)

commands(
    ("va", [2, 5]),
    baca.pitch("Bb3"),
)

# vc1

commands(
    ("vc1", [1, 4]),
    harmony.sixteenths(
        [-8, 4, 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(2, 4), (4, 4)]),
        extra_counts=[0, -4],
        denominator=None,
    ),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("vc1", 5),
    harmony.sixteenths(
        [3, 7, 4, 6],
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("vc1", [2, 5]),
    baca.clef("treble"),
    baca.pitch("Aqf4"),
    baca.markup(r"\baca-eleven-e-flat"),
)

# vc2

commands(
    ("vc2", [1, 4]),
    baca.make_notes(),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("vc2", 5),
    harmony.sixteenths(
        [7, 4, 6, 3],
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("vc2", [2, 5]),
    baca.clef("treble"),
    baca.pitch("F4"),
)

# cb1

commands(
    ("cb1", [1, 4]),
    harmony.sixteenths(
        [-8, 4, 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(2, 4), (4, 4)]),
        extra_counts=[0, -4],
        denominator=None,
    ),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("cb1", 5),
    harmony.sixteenths(
        [4, 6, 3, 7],
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("cb1", [2, 5]),
    baca.clef("treble"),
    baca.pitch("Dtqf4"),
    baca.markup(r"\baca-seven-e-flat"),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
)

commands(
    ("cb2", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        match=[0],
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "mf >o",
        bookend=False,
        match=[1],
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", 5),
    harmony.sixteenths(
        [6, 3, 7, 4],
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("cb2", [2, 5]),
    baca.pitch("Eb2"),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
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

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
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
        preamble=baca.interpret.nonfirst_preamble.split("\n"),
    )
    baca.build.make_segment_pdf(lilypond_file, metadata, persist, timing)
