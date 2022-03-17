import abjad
import baca

from harmony import library

#########################################################################################
######################################### 03 [C] ########################################
#########################################################################################

stage_markup = (
    ("[C.1]", 1),
    ("[▶D.1]", 2, "#darkgreen"),
    ("[▶F.3]", 4, "#darkgreen"),
    ("[C.2-4]", 6),
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
        (1, 4),
        (5, 4),
        (1, 4),
        (5, 4),
        (4, 4),
        (3, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "C",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "C",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
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
    baca.metronome_mark("48", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(6 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(5 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-two",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-three",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(5 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    library.sixteenths(
        library.cerulean[1:],
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
    ),
)

commands(
    ("bfl", 2),
    library.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
)

commands(
    ("bfl", (6, 8)),
    library.sixteenths(
        library.cerulean[2:],
    ),
    baca.pitch("F3"),
    baca.dynamic(
        "mf-sempre",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    library.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("perc1", 2),
    library.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(5.5),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    library.sixteenths(
        [-19, 1],
    ),
    library.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", (6, 8)),
    baca.staff_lines(3),
    library.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, -2, -1],
    ),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        measures=6,
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "p < f",
        measures=8,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(5.5),
)

# perc2

commands(
    ("perc2", 1),
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
        selector=baca.selectors.tleaves(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(5).staff_padding,
    ),
)

commands(
    ("perc2", 2),
    library.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(5.5),
)


commands(
    ("perc2", 4),
    baca.staff_lines(1),
    library.sixteenths(
        [-19, 1],
    ),
    library.brake_drum_staff_position(),
    baca.damp(
        baca.selectors.ptail(-1),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc2", (6, 8)),
    baca.staff_lines(3),
    library.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_except=[0, 1, 4, -2, -1],
    ),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        measures=6,
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "p < f",
        measures=8,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(5 + 1).staff_padding,
    ),
)

# hp

commands(
    ("hp", 1),
    baca.clef("bass"),
    library.sixteenths(
        [10, "-"],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
)

commands(
    ("hp", 2),
    baca.clef("treble"),
    library.tessera_1(5),
    baca.pitch("C#4"),
    baca.dls_staff_padding(5),
)

commands(
    ("hp", 4),
    library.sixteenths(
        [-2, 2, "-", 2],
    ),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.tweak(4).staff_padding,
    ),
)

commands(
    ("hp", (6, 8)),
    baca.clef("bass"),
    library.sixteenths(
        [18, -12, 16, -4],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.pheads(),
    ),
)

# va

commands(
    ("va", 1),
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
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

commands(
    ("va", 2),
    library.tessera_1(
        4,
        gap=True,
    ),
    library.bridge_staff_position(),
)

commands(
    ("va", (1, 2)),
    baca.dls_staff_padding(6),
)

commands(
    ("va", 4),
    baca.clef("alto"),
    baca.staff_lines(5),
    library.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("va", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        library.cerulean[2:],
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
    baca.hairpin(
        '"ff" "f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("bass"),
    baca.skeleton(
        r"r4 \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
    baca.tuplet_number_text(
        abjad.Markup(r"\markup 5:4"),
        baca.selectors.leaf(1),
    ),
    baca.tuplet_bracket_up(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("mf"),
)

commands(
    ("vc1", 2),
    library.tessera_1(
        3,
        gap=True,
    ),
    baca.hairpin(
        "p mp",
        bookend=False,
        pieces=baca.selectors.plts((1, None)),
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.pitch("F#3"),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((2, 9)),
    ),
)

commands(
    ("vc1", 4),
    baca.clef("treble"),
    library.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("E4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc1", (1, 4)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", (6, 7)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        library.cerulean[2:],
        extra_counts=[1],
    ),
    baca.new(
        library.bridge_staff_position(),
        baca.dls_staff_padding(6),
        selector=lambda _: baca.rleaves(_, count=3),
    ),
    baca.accent(
        lambda _: baca.pheads(baca.rleaves(_, count=3)),
    ),
    baca.stem_tremolo(
        lambda _: baca.pheads(baca.rleaves(_, count=3)),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.hairpin(
        # '"ff" "f" mf mp p pp ppp ppp',
        '"f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=baca.selectors.plts(),
        selector=lambda _: baca.rleaves(_, count=3)[1:],
    ),
)

commands(
    ("vc1", 8),
    baca.skeleton(
        r"\times 4/5 { c16 r8. c16 } \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
    baca.tuplet_number_text(
        abjad.Markup(r"\markup 5:4"),
        baca.selectors.leaves(),
    ),
    baca.new(
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        selector=baca.selectors.leaf(3),
    ),
    baca.staff_lines(
        5,
        baca.selectors.leaf(3),
    ),
    baca.new(
        baca.flag_extra_offset((-2, 0)),
        baca.note_head_extra_offset((-2, 0)),
        baca.script_extra_offset((-2, 0)),
        baca.stem_extra_offset((-2, 0)),
        baca.stem_tremolo_extra_offset((-2, 0)),
        selector=baca.selectors.leaf(2),
    ),
    baca.new(
        baca.tuplet_bracket_up(),
        baca.dls_staff_padding(4.5),
        selector=baca.selectors.leaves((-5, None)),
    ),
    baca.pitch(
        "F#3",
        baca.selectors.leaves((4, None)),
    ),
    baca.accent(
        lambda _: baca.pheads(abjad.select.leaves(_)[4:]),
    ),
    baca.dynamic(
        "mf",
        selector=baca.selectors.phead(-2),
    ),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        right_broken=True,
        selector=baca.selectors.leaves((4, None), rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.selectors.leaves((4, None), rleak=True),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("bass"),
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
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", 2),
    library.tessera_1(
        2,
        gap=True,
    ),
    baca.pitch("F3"),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("vc2", 4),
    baca.clef("treble"),
    library.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eqf4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", (6, 8)),
    baca.clef("bass"),
    library.sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.hairpin(
            "mf >o niente",
            selector=baca.selectors.rleaves(),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            bookend=False,
            selector=baca.selectors.rleaves(),
        ),
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
)

commands(
    ("vc2", (1, 8)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        library.cerulean[1:],
    ),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(6),
    baca.rest_extra_offset(
        (-0.75, 0),
        baca.selectors.rest(-1),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.tessera_1(1),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(r"\baca-eleven-e"),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 4),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf > p",
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
    ("cb1", (2, 4)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        library.cerulean[2:],
    ),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
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
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb2", 2),
    baca.clef("treble"),
    library.tessera_1(0),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 4),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "p < f",
    ),
    baca.scp_spanner(
        "T1 -> P2 -> O",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.lparts([2, 3]),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", (6, 8)),
    library.sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.hairpin(
            "mf >o niente",
            selector=baca.selectors.rleaves(),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            bookend=False,
            selector=baca.selectors.rleaves(),
        ),
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
)

commands(
    ("cb2", (1, 8)),
    baca.dls_staff_padding(4),
)

# bfl, hp, va, vc2, cb1, cb2

commands(
    (["bfl", "hp", "va", "vc2", "cb1", "cb2"], 2),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "pp p mp mf f",
        bookend=False,
        pieces=baca.selectors.plts(),
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
        fermata_measure_empty_overrides=[3, 5],
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
