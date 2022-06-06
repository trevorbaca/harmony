import abjad
import baca

from harmony import library

#########################################################################################
######################################### 05 [E] ########################################
#########################################################################################

stage_markup = (
    ("[>F.3]", 1, "#darkgreen"),
    ("[<C.4]", 2, "#darkgreen"),
    ("[<D.1]", 3, "#darkgreen"),
    ("[E.1-2]", 4),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (5, 4),
        (3, 4),
        (3, 4),
        (6, 4),
        (6, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    commands.manifests(),
    commands.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

skips = score["Skips"]
manifests = commands.manifests()

for index, item in (
    (1 - 1, "48"),
    (1 - 1, "4.=4"),
    (2 - 1, "57 3/5"),
    (2 - 1, "6:5(4)=4"),
    (3 - 1, "72"),
    (3 - 1, "5:4(4)=4"),
    (4 - 1, "96"),
    (4 - 1, "4:3(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

# BFL

commands(
    ("bfl", 1),
    baca.make_mmrests(),
)

commands(
    ("bfl", 2),
    library.make_sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
)

commands(
    ("bfl", 3),
    library.make_tessera_1(
        6,
        gap=True,
    ),
)

commands(
    ("bfl", 4),
    library.make_sixteenths(
        [1, 1, "-"],
    ),
)

commands(
    ("bfl", 5),
    library.make_sixteenths(
        [-3, 1, 1, "-"],
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_sixteenths(
        [-19, 1],
    ),
)

commands(
    ("perc1", 2),
    library.make_phjc_rhythm(
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    ),
)

commands(
    ("perc1", 3),
    library.make_phjc_rhythm(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
)

commands(
    ("perc1", 4),
    baca.make_mmrests(),
)

commands(
    ("perc1", 5),
    library.make_sixteenths(
        [-3, "+"],
    ),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_sixteenths(
        [4, 4, "-", 1],
    ),
)

commands(
    ("perc2", 2),
    library.make_phjc_rhythm(
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    ),
)

commands(
    ("perc2", 3),
    library.make_phjc_rhythm(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
)

commands(
    ("perc2", 4),
    baca.make_mmrests(),
)

commands(
    ("perc2", 5),
    library.make_sixteenths(
        [-3, "+"],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [-2, 2, "-", 2],
    ),
)

commands(
    ("hp", 2),
    library.make_sixteenths(
        [10, -2],
    ),
)

commands(
    ("hp", 3),
    library.make_tessera_1(5),
)

commands(
    ("hp", 4),
    library.make_sixteenths(
        [4, 4, 8],
        fuse=True,
        do_not_rewrite_meter=True,
        after_graces=[1],
    ),
)

commands(
    ("hp", 5),
    library.make_sixteenths(
        ["-", 12, -8],
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [-1, 2, "-"],
    ),
)

commands(
    ("va", 2),
    baca.make_mmrests(),
)

commands(
    ("va", 3),
    library.make_sixteenths(
        [-4, 3, -1, 3, -1, 3, -1],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
)

commands(
    ("va", 4),
    library.make_sixteenths(
        [3, -1, 3, -1, "-"],
    ),
)

commands(
    ("va", 5),
    library.make_sixteenths(
        [6, -2, -8, 6, -2],
    ),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [-1, 2, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (2, 4)])
    return result


commands(
    ("vc1", 2),
    library.make_sixteenths(
        [1, -3, 1, -2, 3, -1, 3, -1],
        preprocessor=preprocessor,
        extra_counts=[1, 2],
        denominator=None,
    ),
)

commands(
    ("vc1", 3),
    library.make_tessera_1(
        3,
        gap=True,
    ),
)

commands(
    ("vc1", (4, 5)),
    library.make_sixteenths(
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    ),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [-1, 2, "-"],
    ),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("vc2", 3),
    library.make_tessera_1(
        2,
        gap=True,
    ),
)

commands(
    ("vc2", (4, 5)),
    library.make_sixteenths(
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    ),
)

# CB1

commands(
    ("cb1", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb1", 2),
    library.make_sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
)

commands(
    ("cb1", 3),
    library.make_tessera_1(1),
)

commands(
    ("cb1", (4, 5)),
    library.make_sixteenths(
        [15, 1, 1, 1, 6, 1, 1, 1, 12, 1, 1, 1, "+"],
    ),
)

# CB2

commands(
    ("cb2", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb2", 3),
    library.make_tessera_1(0),
)

commands(
    ("cb2", (4, 5)),
    library.make_sixteenths(
        [11, 1, 1, 1, 11, 1, 1, 1, 7, 1, 1, 1, "+"],
    ),
)

# anchor notes

commands(
    ["perc1", "perc2", "va", "vc1", "vc2", "cb1", "cb2"],
    baca.append_anchor_note(),
)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 2),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("bfl", 3),
    baca.pitch("F#3"),
    baca.hairpin(
        "pp p",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("bfl", 4),
    baca.pitch("F3"),
    baca.note_head_style_harmonic(),
    baca.dynamic("ff"),
    baca.markup(
        r"\baca-jet-whistle-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("bfl", 5),
    baca.pitch("E3"),
    baca.note_head_style_harmonic(),
    baca.dynamic(
        "ff-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
    baca.markup(
        r"\baca-jet-whistle-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6 + 1),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([-2, 0, -2, 0, 0]),
    baca.hairpin(
        "p < f",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 3),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc1", (2, 3)),
    baca.dls_staff_padding(5.5),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
)

commands(
    ("perc1", 5),
    library.triangle_staff_position(),
    baca.flat_glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-triangle-small-beater-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

# perc2

commands(
    ("perc2", 1),
    baca.staff_lines(
        1,
        lambda _: abjad.select.leaf(_, 2),
    ),
    baca.new(
        library.purpleheart_staff_positions([0]),
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
    baca.new(
        library.brake_drum_staff_position(),
        baca.accent(),
        baca.damp(),
        baca.dynamic("mf"),
        baca.dls_staff_padding(6 + 1),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 7"),
        ),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        left_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([-2, 0, 0, -2, 0]),
    baca.hairpin(
        "p < f",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 3),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc2", (2, 3)),
    baca.dls_staff_padding(5.5),
)

commands(
    ("perc2", 4),
    baca.staff_lines(1),
)

commands(
    ("perc2", 5),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# hp

commands(
    ("hp", 1),
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
    ("hp", 2),
    baca.clef("bass"),
    baca.clef_whiteout(2),
    baca.pitch("G1"),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
)

commands(
    ("hp", 3),
    baca.clef("treble"),
    baca.pitch("C#4"),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        "pp p",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", 4),
    baca.pitches("F4 D4 A4 G3 B3 E3"),
    baca.glissando(),
    baca.hairpin(
        '"f" >o niente',
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-tuning-key-glissando-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
    baca.dls_staff_padding(6.5),
)

commands(
    ("hp", 5),
    baca.pitch("Eb4"),
    baca.damp(
        lambda _: baca.select.rest(_, -1),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    baca.clef("alto"),
    baca.staff_lines(5),
    baca.pitch("Eb3"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("va", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("va", 3),
    baca.clef("alto"),
    baca.staff_lines(5),
    baca.dynamic("mf"),
)

commands(
    ("va", (3, 4)),
    baca.pitch("F3"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[1:12],
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[1:12],
    ),
)

commands(
    ("va", 5),
    baca.pitch("Eb3"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("va", (1, 5)),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("treble"),
    baca.pitch("E4"),
    baca.dynamic("f"),
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
    ("vc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.new(
        library.bridge_staff_position(),
        baca.accent(),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.pleaves(_)[:2],
    ),
    baca.dynamic("ppp"),
    baca.dls_staff_padding(
        6,
        lambda _: baca.select.leaves(_)[:3],
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
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        baca.staff_lines(5),
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
)

commands(
    ("vc1", 3),
    baca.hairpin(
        "p mp",
        bookend=False,
        pieces=lambda _: baca.select.plts(_)[1:],
    ),
)

commands(
    ("vc1", (2, 3)),
    baca.new(
        baca.pitch("F#3"),
        baca.accent(),
        selector=lambda _: baca.select.pheads(_)[2:],
    ),
    baca.dynamic(
        "mf",
        selector=lambda _: baca.select.pleaf(_, 2),
    ),
    baca.tuplet_bracket_up(
        lambda _: baca.select.leaves(_)[3:],
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[4:11],
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
    ),
    baca.dls_staff_padding(
        4,
        lambda _: baca.select.leaves(_)[4:-1],
    ),
)

commands(
    ("vc1", (4, 5)),
    # TODO: promote into rhythm
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.staff_positions(
        [2, 3, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 8],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.dls_staff_padding(
        5.5,
        lambda _: baca.select.lleak(baca.select.leaves(_)),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("treble"),
    baca.pitch("Eqf4"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", 2),
    baca.clef("bass"),
    baca.new(
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=lambda _: baca.select.runs(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.new(
        baca.hairpin("mf >o niente"),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        ),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", 3),
    baca.pitch("F3"),
    baca.accent(),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", (1, 3)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc2", (4, 5)),
    # TODO: promote into rhythm
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.staff_positions(
        [2, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 3, 8],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.dls_staff_padding(5.5),
)

# cb1

commands(
    ("cb1", 1),
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
    ("cb1", 2),
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
        "pp ppp",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("cb1", 3),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        "pp p mp",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(
        4,
        lambda _: baca.select.plts(_)[:-1],
    ),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.markup(r"\baca-eleven-e"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak X-offset 2.5"),
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", (4, 5)),
    baca.clef("bass"),
    # TODO: promote into rhythm
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.staff_positions(
        [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.dls_staff_padding(
        5.5,
        lambda _: baca.select.lleak(baca.select.leaves(_)),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.flat_glissando(
        "E1",
        left_broken=True,
    ),
    baca.hairpin(
        "o< f",
        left_broken=True,
    ),
    baca.scp_spanner(
        "(T1) -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.lparts(_, [2, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 2),
    baca.new(
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=lambda _: baca.select.runs(_),
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
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
        ),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb2", 3),
    baca.clef("treble"),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        "pp p",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb2", (4, 5)),
    baca.clef("bass"),
    # TODO: promote into rhythm
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.staff_positions(
        [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
)

commands(
    ("cb2", (1, 5)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb2, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.hairpin(
        '! o< "f"',
        measures=4,
    ),
    baca.hairpin(
        '"f" >o niente',
        measures=5,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.alternate_bow_strokes(
        lambda _: [
            x for x in baca.pheads(_) if abjad.get.duration(x) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
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
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
