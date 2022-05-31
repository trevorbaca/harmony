import abjad
import baca

from harmony import library

#########################################################################################
######################################### 03 [C] ########################################
#########################################################################################

stage_markup = (
    ("[C.1]", 1),
    ("[>D.1]", 2, "#darkgreen"),
    ("[>F.3]", 4, "#darkgreen"),
    ("[C.2-4]", 6),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    margin_markups=library.margin_markups(),
    metronome_marks=library.metronome_marks(),
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
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

commands(
    "GlobalSkips",
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("4:5(2)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("5:4(4)=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("4.=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 6 - 1)),
)

commands(
    "GlobalRests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 3 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 5 - 1)),
)

# text

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-two",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 3 - 1),
        ),
    ),
)

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-three",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 5 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        library.cerulean()[1:],
    ),
)

commands(
    ("bfl", 2),
    library.make_tessera_1(
        6,
        gap=True,
    ),
)

commands(
    ("bfl", (3, 5)),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", (6, 8)),
    library.make_sixteenths(
        library.cerulean()[2:],
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_phjc_rhythm(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
)

commands(
    ("perc1", 2),
    library.make_phjc_rhythm(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
)

commands(
    ("perc1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 4),
    library.make_sixteenths(
        [-19, 1],
    ),
)

commands(
    ("perc1", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", (6, 8)),
    library.make_phjc_rhythm(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, -2, -1],
    ),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_phjc_rhythm(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    ),
)

commands(
    ("perc2", 2),
    library.make_phjc_rhythm(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
)

commands(
    ("perc2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 4),
    library.make_sixteenths(
        [-19, 1],
    ),
)

commands(
    ("perc2", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", (6, 8)),
    library.make_phjc_rhythm(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_except=[0, 1, 4, -2, -1],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [10, "-"],
    ),
)

commands(
    ("hp", 2),
    library.make_tessera_1(5),
)

commands(
    ("hp", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 4),
    library.make_sixteenths(
        [-2, 2, "-", 2],
    ),
)

commands(
    ("hp", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", (6, 8)),
    library.make_sixteenths(
        [18, -12, 16, -4],
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        library.cerulean()[1:],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("va", 2),
    library.make_tessera_1(
        4,
        gap=True,
    ),
)

commands(
    ("va", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("va", 4),
    library.make_sixteenths(
        [-1, 2, "-"],
    ),
)

commands(
    ("va", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("va", (6, 8)),
    library.make_sixteenths(
        library.cerulean()[2:],
        extra_counts=[2],
        denominator=None,
    ),
)

# VC1

commands(
    ("vc1", 1),
    baca.make_skeleton(
        r"r4 \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
)

commands(
    ("vc1", 2),
    library.make_tessera_1(
        3,
        gap=True,
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests(),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        [-1, 2, "-"],
    ),
)

commands(
    ("vc1", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", (6, 7)),
    library.make_sixteenths(
        library.cerulean()[2:],
        extra_counts=[1],
    ),
)

commands(
    ("vc1", 8),
    baca.make_skeleton(
        r"\times 4/5 { c16 r8. c16 } \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("vc2", 2),
    library.make_tessera_1(
        2,
        gap=True,
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests(),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        [-1, 2, "-"],
    ),
)

commands(
    ("vc2", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", (6, 8)),
    library.make_sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
)

# CB1

commands(
    ("cb1", 1),
    library.make_sixteenths(
        library.cerulean()[1:],
    ),
)

commands(
    ("cb1", 2),
    library.make_tessera_1(1),
)

commands(
    ("cb1", 3),
    baca.make_mmrests(),
)

commands(
    ("cb1", 4),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb1", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", (6, 8)),
    library.make_sixteenths(
        library.cerulean()[2:],
    ),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb2", 2),
    library.make_tessera_1(0),
)

commands(
    ("cb2", 3),
    baca.make_mmrests(),
)

commands(
    ("cb2", 4),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb2", 5),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", (6, 8)),
    library.make_sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
)

# anchor notes

commands(
    ["bfl", "vc1"],
    baca.append_anchor_note(),
)

# reapply

music_voices = [_ for _ in voice_names if "MusicVoice" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 1),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        argument=r"\baca-cov-markup =|",
    ),
)

commands(
    ("bfl", 2),
    baca.pitch("F#3"),
)

commands(
    ("bfl", (6, 8)),
    baca.pitch("F3"),
    baca.dynamic(
        "mf-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc1", 2),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(5.5),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (6, 8)),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        measures=6,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.hairpin(
        "p < f",
        measures=8,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dls_staff_padding(5.5),
)

# perc2

commands(
    ("perc2", 1),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc2", 2),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(5.5),
)


commands(
    ("perc2", 4),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.damp(
        lambda _: baca.select.ptail(_, -1),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (6, 8)),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        measures=6,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.hairpin(
        "p < f",
        measures=8,
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
    ("hp", 1),
    baca.clef("bass"),
    baca.pitch("G1"),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
)

commands(
    ("hp", 2),
    baca.clef("treble"),
    baca.pitch("C#4"),
    baca.dls_staff_padding(5),
)

commands(
    ("hp", 4),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (6, 8)),
    baca.clef("bass"),
    baca.pitch("G1"),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.pheads(_),
    ),
)

# va

commands(
    ("va", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        '"ff"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("va", 2),
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
    baca.pitch("Eb3"),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("va", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        '"ff" "f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(6),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("bass"),
    baca.tuplet_number_text(
        r"\markup 5:4",
        lambda _: abjad.select.leaf(_, 1),
    ),
    baca.tuplet_bracket_up(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("mf"),
)

commands(
    ("vc1", 2),
    baca.hairpin(
        "p mp",
        bookend=False,
        pieces=lambda _: baca.select.plts(_)[1:],
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.pitch("F#3"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[2:9],
    ),
)

commands(
    ("vc1", 4),
    baca.clef("treble"),
    baca.pitch("E4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
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
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.hairpin(
        # '"ff" "f" mf mp p pp ppp ppp',
        '"f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.rleaves(_, count=3)[1:],
    ),
)

commands(
    ("vc1", 8),
    baca.tuplet_number_text(
        r"\markup 5:4",
        lambda _: baca.select.leaves(_),
    ),
    baca.new(
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
    baca.staff_lines(
        5,
        lambda _: abjad.select.leaf(_, 3),
    ),
    baca.new(
        baca.flag_extra_offset((-2, 0)),
        baca.note_head_extra_offset((-2, 0)),
        baca.script_extra_offset((-2, 0)),
        baca.stem_extra_offset((-2, 0)),
        baca.stem_tremolo_extra_offset((-2, 0)),
        selector=lambda _: abjad.select.leaf(_, 2),
    ),
    baca.new(
        baca.tuplet_bracket_up(),
        baca.dls_staff_padding(4.5),
        selector=lambda _: baca.select.leaves(_)[-5:],
    ),
    baca.pitch(
        "F#3",
        lambda _: baca.select.leaves(_)[4:],
    ),
    baca.accent(
        lambda _: baca.pheads(abjad.select.leaves(_)[4:]),
    ),
    baca.dynamic(
        "mf",
        selector=lambda _: baca.select.phead(_, -2),
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("bass"),
    baca.interpolate_pitches("G2", "F2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        ),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", 2),
    baca.pitch("F3"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("vc2", 4),
    baca.clef("treble"),
    baca.pitch("Eqf4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", (6, 8)),
    baca.clef("bass"),
    baca.new(
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
        map=lambda _: baca.select.runs(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
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
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        '"ff"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
    baca.rest_extra_offset(
        (-0.75, 0),
        lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("cb1", 2),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.note_head_style_harmonic(),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
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
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf > p",
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
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
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        '"ff" "f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(6),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
    baca.interpolate_pitches("G2", "F#2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        ),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb2", 2),
    baca.clef("treble"),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 4),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "p < f",
    ),
    baca.scp_spanner(
        "T1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.lparts(_, [2, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", (6, 8)),
    baca.new(
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
        map=lambda _: baca.select.runs(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
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
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        "pp p mp mf f",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
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
