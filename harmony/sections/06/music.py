import abjad
import baca

from harmony import library

#########################################################################################
######################################### 06 [F] ########################################
#########################################################################################

stage_markup = (
    ("[F.1]", 1),
    ("[>G.1]", 3, "#darkgreen"),
    ("[F.2]", 4),
    ("[>G.1]", 5, "#darkgreen"),
    ("[F.3-4]", 6),
    ("[<C.4]", 8, "#darkgreen"),
    ("[F.5-6]", 10),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (5, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (3, 4),
        (1, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

commands(
    "GlobalSkips",
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("2=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 8 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 8 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 10 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 10 - 1)),
)

commands(
    "GlobalRests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 2 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 9 - 1)),
)

# text

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-four",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 2 - 1),
        ),
    ),
)

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-five",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 9 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", (1, 2)),
    baca.make_mmrests_flat(),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


commands(
    ("bfl", 3),
    library.make_sixteenths(
        [2, 2, -6, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 4),
    library.make_sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


commands(
    ("bfl", 5),
    library.make_sixteenths(
        [2, 2, -6, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 6),
    library.make_sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 8), (5, 8)])
    return result


commands(
    ("bfl", 7),
    library.make_sixteenths(
        [-6, -4, 1, -5, 1, -1],
        preprocessor=preprocessor,
        extra_counts=[0, 2],
        denominator=None,
    ),
)

commands(
    ("bfl", 8),
    library.make_sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
)

commands(
    ("bfl", (9, 15)),
    baca.make_mmrests(),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_sixteenths(
        [16, "-", 1],
    ),
)

commands(
    ("perc1", 2),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 3),
    library.make_sixteenths(
        [-15, 1],
    ),
)

commands(
    ("perc1", 4),
    library.make_sixteenths(
        [-3, 6, "-"],
    ),
)

commands(
    ("perc1", 5),
    library.make_sixteenths(
        [-15, 1],
    ),
)

commands(
    ("perc1", 6),
    library.make_sixteenths(
        ["-", 1],
    ),
)

commands(
    ("perc1", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 8),
    library.make_phjc_rhythm(
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    ),
)

commands(
    ("perc1", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 10),
    library.make_sixteenths(
        [2, "-"],
    ),
)

commands(
    ("perc1", 11),
    library.make_sixteenths(
        ["-", 3, -4],
    ),
)

commands(
    ("perc1", (12, 14)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 15),
    library.make_sixteenths(
        ["-", 5, -1],
    ),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_sixteenths(
        [16, "-"],
    ),
)

commands(
    ("perc2", 2),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 3),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("perc2", 4),
    library.make_sixteenths(
        [9, "-"],
    ),
)

commands(
    ("perc2", 5),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("perc2", (6, 7)),
    library.make_sixteenths(
        [-19, 1, "-"],
    ),
)

commands(
    ("perc2", 8),
    library.make_phjc_rhythm(
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    ),
)

commands(
    ("perc2", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 10),
    library.make_sixteenths(
        [1, "-"],
    ),
)

commands(
    ("perc2", 11),
    library.make_sixteenths(
        ["-", 1, -1],
    ),
)

commands(
    ("perc2", (12, 13)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 14),
    library.make_sixteenths(
        ["-", 1, -2],
    ),
)

commands(
    ("perc2", 15),
    library.make_sixteenths(
        ["-", 1, -5],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [-10, 6, "-"],
    ),
)

commands(
    ("hp", 2),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 3),
    library.make_sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(11, 16), (5, 16)])
    return result


commands(
    ("hp", 4),
    library.make_sixteenths(
        [9, "-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    ),
)

commands(
    ("hp", 5),
    library.make_sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("hp", 6),
    library.make_sixteenths(
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 8), (5, 8)])
    return result


commands(
    ("hp", 7),
    library.make_sixteenths(
        ["-", 9, -2],
        preprocessor=preprocessor,
        extra_counts=[0, 2],
        denominator=None,
    ),
)

commands(
    ("hp", 8),
    library.make_sixteenths(
        [10, -2],
    ),
)

commands(
    ("hp", 9),
    baca.make_mmrests(),
)

commands(
    ("hp", 10),
    library.make_sixteenths(
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 11),
    library.make_sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 12),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 13),
    library.make_sixteenths(
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 14),
    library.make_sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(11, 16), (5, 16)])
    return result


commands(
    ("hp", 15),
    library.make_sixteenths(
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [3, "-"],
    ),
)

commands(
    ("va", 2),
    baca.make_mmrests_flat(),
)

commands(
    ("va", 3),
    library.make_appoggiato_rhythm(
        counts=[9],
    ),
)

commands(
    ("va", 4),
    library.make_sixteenths(
        [8, "-", 2, -3],
        tie=[0],
    ),
)

commands(
    ("va", 5),
    library.make_appoggiato_rhythm(
        counts=[9],
    ),
)

commands(
    ("va", (6, 7)),
    library.make_sixteenths(
        [-1, 2, "-", 3, -2],
    ),
)

commands(
    ("va", (8, 9)),
    baca.make_mmrests_flat(),
)

commands(
    ("va", (10, 15)),
    library.make_sixteenths(
        [-5, 2, -5, 3, -10, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [3, "-"],
    ),
)

commands(
    ("vc1", 2),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", 3),
    library.make_appoggiato_rhythm(
        counts=[7],
    ),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        [8, "-", 2, -3],
        tie=[0],
    ),
)

commands(
    ("vc1", 5),
    library.make_appoggiato_rhythm(
        counts=[7],
    ),
)

commands(
    ("vc1", (6, 7)),
    library.make_sixteenths(
        [-1, 2, "-", 3, -2],
    ),
)

commands(
    ("vc1", 8),
    library.make_sixteenths(
        [1, -3, 1, "-"],
        extra_counts=[1],
    ),
)

commands(
    ("vc1", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", (10, 15)),
    library.make_sixteenths(
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
)

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [3, "-"],
    ),
)

commands(
    ("vc2", 2),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", 3),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        [8, "-", 2, -3],
        tie=[0],
    ),
)

commands(
    ("vc2", 5),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("vc2", (6, 7)),
    library.make_sixteenths(
        [-1, 2, "-", 3, -2],
    ),
)

commands(
    ("vc2", 8),
    library.make_sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("vc2", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", (10, 15)),
    library.make_sixteenths(
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
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
    baca.make_mmrests(),
)

commands(
    ("cb1", 3),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        [8, "-", 5],
        tie=[0],
    ),
)

commands(
    ("cb1", (5, 7)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb1", 8),
    library.make_sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
)

commands(
    ("cb1", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", (10, 15)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
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
    baca.make_mmrests(),
)

commands(
    ("cb2", 3),
    library.make_sixteenths(
        ["-", 4, 4, 4],
    ),
)

commands(
    ("cb2", (4, 7)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb2", 8),
    library.make_sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb2", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", (10, 15)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

# anchor notes

commands(
    ["hp", "va", "vc1", "vc2", "cb1", "cb2"],
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
    ("bfl", 3),
    baca.pitch(
        "Bb5",
        lambda _: baca.select.runs(_)[:1],
    ),
    baca.pitch(
        "E5",
        lambda _: baca.select.runs(_)[1:],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-2:]),
    ),
)

commands(
    ("bfl", 4),
    baca.pitch("E5"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("bfl", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:7]),
    ),
)


commands(
    ("bfl", 5),
    baca.pitch(
        "Bb5",
        lambda _: baca.select.runs(_)[:1],
    ),
    baca.pitch(
        "E5",
        lambda _: baca.select.runs(_)[1:],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-2:]),
    ),
)

commands(
    ("bfl", 6),
    baca.pitch("E5"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("bfl", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:7]),
    ),
)

commands(
    ("bfl", (3, 6)),
    baca.tuplet_bracket_up(),
)


commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

commands(
    ("bfl", (7, 8)),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

# perc1

commands(
    ("perc1", 1),
    baca.new(
        library.triangle_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.pleaves(_)[:1],
    ),
    baca.damp(
        lambda _: baca.select.rest(_, 0),
    ),
    baca.new(
        library.bass_drum_staff_position(),
        baca.damp(),
        baca.dynamic("mp"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    ("perc1", 3),
    baca.staff_lines(3),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 5),
    baca.staff_lines(3),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 6),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 8),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([-2, 0, -2, 0, 0]),
    baca.dynamic("f"),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 10),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o< mf",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 11),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o< f",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("perc1", 15),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o< ff",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("perc1", (10, 15)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    baca.new(
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.pleaves(_),
    ),
    baca.damp(
        lambda _: baca.select.rest(_, 0),
    ),
)

commands(
    ("perc2", 3),
    library.tam_tam_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("perc2", 4),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    library.tam_tam_staff_position(),
    baca.dynamic("mp"),
)

commands(
    ("perc2", 5),
    library.tam_tam_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("p"),
)

commands(
    ("perc2", (6, 7)),
    library.brake_drum_staff_position(),
    baca.damp(
        lambda _: baca.select.ptail(_, -1),
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (1, 7)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 8),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([-2, 0, 0, -2, 0]),
    baca.dynamic("f"),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc2", 10),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc2", 11),
    library.brake_drum_staff_position(),
)

commands(
    ("perc2", 14),
    library.brake_drum_staff_position(),
)

commands(
    ("perc2", 15),
    library.brake_drum_staff_position(),
)

commands(
    ("perc2", (10, 15)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
)

commands(
    ("hp", 3),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        map=lambda _: baca.select.clparts(_, [3]),
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
    baca.dls_staff_padding(6),
)


commands(
    ("hp", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.pitch(
        "E1",
        lambda _: baca.select.plt(_, 0),
    ),
    baca.damp(
        lambda _: baca.select.rest(_, 0),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(
        7,
        lambda _: baca.select.plt(_, 0),
    ),
    baca.chunk(
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=lambda _: baca.select.rest(_, -1),
        ),
        baca.new(
            library.whisk_staff_position(),
            selector=lambda _: baca.select.pleaves(_)[-2:],
        ),
        baca.hairpin(
            'o< "f" >o',
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.pleaves(_)[-2:],
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, -2),
        ),
    ),
)

commands(
    ("hp", 5),
    library.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        map=lambda _: baca.select.clparts(_, [3]),
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.dls_staff_padding(
        6,
        lambda _: baca.lleaves(_, count=2),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.tuplet_bracket_up(),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:8]),
    ),
)

commands(
    ("hp", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mf"),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dls_staff_padding(4),
)


commands(
    ("hp", 7),
    baca.clef("bass"),
)

commands(
    ("hp", (7, 8)),
    baca.pitch("G1"),
    baca.new(
        baca.damp(
            lambda _: baca.select.rest(_, -1),
            abjad.Tweak(r"- \tweak direction #down"),
        ),
        measures=7,
    ),
    baca.new(
        baca.damp(
            lambda _: baca.select.rest(_, -1),
        ),
        measures=8,
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
    ),
)

commands(
    ("hp", 10),
    baca.clef("treble"),
)

commands(
    ("hp", (10, 11)),
    baca.pitches("F#4 G#4"),
)

commands(
    ("hp", (10, 14)),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_, exclude=baca.enums.HIDDEN),
    ),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("hp", (13, 14)),
    baca.pitches("F#4 G#4"),
)

commands(
    ("hp", (10, 14)),
    baca.hairpin(
        "mf f ff fff",
        bookend=False,
        pieces=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
    baca.dls_staff_padding(4),
)


commands(
    ("hp", 15),
    baca.tuplet_bracket_up(),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=lambda _: baca.select.rest(_, -1),
    ),
    baca.new(
        library.whisk_staff_position(),
        selector=lambda _: baca.select.pleaves(_)[-2:],
    ),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        forbid_al_niente_to_bar_line=True,
    #        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
    #        right_broken=True,
    #        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[-2:]),
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(
        6,
        lambda _: baca.select.leaves(_)[-3:],
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.pleaf(_, -2),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
)

# va

commands(
    ("va", 1),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("va", 3),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_b_flat(),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.rleak(baca.tleaves(_, grace=False), count=2),
    ),
)

commands(
    ("va", 4),
    baca.new(
        baca.pitch("Eb3"),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        ),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("va", 5),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -9),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
)

commands(
    ("va", (6, 7)),
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
    ("va", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("va", 10),
    baca.clef("alto"),
    baca.staff_lines(5),
)

commands(
    ("va", (10, 15)),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.rleak(
            baca.select.plts(_)[-1:],
        ),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_)[:-1],
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_)[-1:],
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("va", [1, (6, 15)]),
    baca.pitch(
        "Eb3",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
)

commands(
    ("va", (1, 15)),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("treble"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc1", 3),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.rleak(baca.tleaves(_, grace=False), count=2),
    ),
)

commands(
    ("vc1", 4),
    baca.pitch(
        "E4",
        lambda _: baca.select.plt(_, -1),
    ),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.phead(_, -1),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
)

commands(
    ("vc1", 5),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1 - 7),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("vc1", (6, 7)),
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
    ("vc1", (1, 7)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("ppp"),
    baca.dls_staff_padding(6),
)

commands(
    ("vc1", 10),
    baca.clef("treble"),
    baca.staff_lines(5),
)

commands(
    ("vc1", (10, 15)),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_)[:-1],
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_)[-1:],
        right_broken=True,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.hairpin(
        "f >o niente",
        right_broken=True,
        selector=lambda _: baca.select.rleak(
            baca.select.plts(_)[-1:],
        ),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", [1, (6, 7), (10, 15)]),
    baca.pitch(
        "E4",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("treble"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", 3),
    baca.clef("bass"),
    baca.dynamic("p"),
)

commands(
    ("vc2", 4),
    baca.clef(
        "treble",
        lambda _: baca.select.phead(_, -1),
    ),
    baca.new(
        baca.pitch("Eqf4"),
        selector=lambda _: baca.select.plt(_, -1),
    ),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.phead(_, -1),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
)

commands(
    ("vc2", (3, 4)),
    baca.new(
        baca.pitch("B2"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
    ),
)

commands(
    ("vc2", 5),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", (6, 7)),
    baca.clef("treble"),
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
    ("vc2", 8),
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
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", (10, 15)),
    baca.clef("treble"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_)[:-1],
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_)[-1:],
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.rleak(
            baca.select.plts(_)[-1:],
        ),
    ),
)

commands(
    ("vc2", [1, (6, 7), (10, 15)]),
    baca.pitch(
        "Eqf4",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
)

commands(
    ("vc2", (1, 15)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 4]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb1", 3),
    baca.dynamic("p"),
)

commands(
    ("cb1", 4),
    baca.note_head_style_harmonic(
        lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("cb1", (3, 4)),
    baca.new(
        baca.pitch("Bb2"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
    ),
)

commands(
    ("cb1", (4, 7)),
    baca.new(
        baca.flat_glissando("E1"),
        selector=lambda _: abjad.select.run(_, -1),
    ),
    baca.hairpin(
        "o< mf > p < f",
        pieces=lambda _: baca.select.lparts(_, [6, 5, 3, 2]),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.select.lparts(_, [6, 5, 3, 2]),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
)

commands(
    ("cb1", (1, 7)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", 8),
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
    ("cb1", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
)

commands(
    ("cb1", (10, 15)),
    baca.flat_glissando(
        "E1",
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o< mf > p < f > p < ff >o niente",
        pieces=lambda _: baca.mgroups(_, [1, 1, 1, 1, 1, 2]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 -> O -> T1 -> P2 -> T1 -> P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.select.cmgroups(_, [1]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", 1),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [3, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", (3, 7)),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "o< mp > p < f",
        bookend=False,
        pieces=lambda _: baca.mgroups(_, [2, 1, 1, 2]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> O -> T1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.select.lparts(_, [3, 4, 4, 2, 3, 5]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb2", 8),
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
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb2", (10, 15)),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "o< f > p < ff >o niente",
        pieces=lambda _: baca.mgroups(_, [2, 1, 1, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 -> P2 -> T1 -> P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [2, 1, 1, 2]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", (1, 15)),
    baca.dls_staff_padding(4),
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
        fermata_measure_empty_overrides=[2, 9],
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
