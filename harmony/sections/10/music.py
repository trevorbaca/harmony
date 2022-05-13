import abjad
import baca

from harmony import library

#########################################################################################
######################################### 10 [J] ########################################
#########################################################################################

stage_markup = (
    ("[J.1]", 1),
    ("[▶K.1]", 2, "#darkgreen"),
    ("[◀I.1]", 3, "#darkgreen"),
    ("[J.2-5]", 4),
    ("[◀I.1]", 8, "#darkgreen"),
    ("[J.6]", 10),
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
        (4, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "J",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "J",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
    baca.close_volta(lambda _: baca.select.skip(_, 2 - 1)),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("2.=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("2.=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 8 - 1)),
    baca.metronome_mark("3:2(8)=4", lambda _: baca.select.skip(_, 8 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 10 - 1)),
    baca.metronome_mark("2.=4", lambda _: baca.select.skip(_, 10 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 9 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eight",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 9 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("bfl", 2),
    library.make_sixteenths(
        [-2, 4, -2, -4, 4],
    ),
)

commands(
    ("bfl", 3),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("bfl", (4, 6)),
    baca.make_mmrests(),
)

commands(
    ("bfl", 7),
    library.make_sixteenths(
        ["-", 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("bfl", 8),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("bfl", 9),
    baca.make_mmrests(),
)

commands(
    ("bfl", 10),
    library.make_appoggiato_rhythm(
        counts=[9, 0],
        divisions=[12, 12],
        prefix_talea=[-1],
        prefix_counts=[1, 0],
    ),
)

commands(
    ("bfl", (11, 13)),
    library.make_sixteenths(
        [12],
        written_dotted_wholes=([0], 2),
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 14),
    library.make_sixteenths(
        [12, 8, 3, 1],
        written_dotted_wholes=([0], 2),
        invisible=[1, 2, 3],
    ),
)

commands(
    ("bfl", 15),
    library.make_appoggiato_rhythm(
        counts=[9],
        incise=True,
    ),
)

# PERC1

commands(
    ("perc1", 1),
    baca.make_mmrests(),
)

commands(
    ("perc1", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("perc1", 3),
    library.make_sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
)

commands(
    ("perc1", (4, 6)),
    baca.make_mmrests(),
)

commands(
    ("perc1", 7),
    library.make_sixteenths(
        ["-", 2, -2, 2, -2],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("perc1", 8),
    library.make_sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
)

commands(
    ("perc1", 9),
    baca.make_mmrests(),
)

commands(
    ("perc1", (10, 14)),
    baca.make_notes(),
)

commands(
    ("perc1", 15),
    baca.make_mmrests(),
)

# PERC2

commands(
    ("perc2", (1, 7)),
    baca.make_notes(),
)

commands(
    ("perc2", (8, 9)),
    baca.make_mmrests(),
)

commands(
    ("perc2", (10, 15)),
    baca.make_notes(),
)

# HP

commands(
    ("hp", 1),
    baca.make_mmrests(),
)

commands(
    ("hp", (2, 8)),
    baca.make_notes(),
)

commands(
    ("hp", 9),
    baca.make_mmrests(),
)

commands(
    ("hp", (10, 12)),
    baca.make_notes(),
)

commands(
    ("hp", (13, 15)),
    baca.make_mmrests(),
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
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("va", 3),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("va", (4, 7)),
    baca.make_mmrests(),
)

commands(
    ("va", 8),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("va", 9),
    baca.make_mmrests(),
)

commands(
    ("va", 10),
    library.make_sixteenths(
        [12, 1, 1, 1],
    ),
)

commands(
    ("va", (11, 14)),
    library.make_tuplet([11 * (1,)]),
)

commands(
    ("va", 15),
    baca.make_notes(),
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
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc1", 3),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("vc1", (4, 7)),
    baca.make_mmrests(),
)

commands(
    ("vc1", 8),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("vc1", 9),
    baca.make_mmrests(),
)

commands(
    ("vc1", (10, 11)),
    library.make_sixteenths(
        [13, 1, 1, 1],
    ),
)

commands(
    ("vc1", (12, 14)),
    library.make_tuplet(
        [10 * (1,)],
        denominator=(1, 4),
    ),
)

commands(
    ("vc1", 15),
    baca.make_notes(),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [3, "-"],
    ),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc2", 3),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("vc2", (4, 7)),
    baca.make_mmrests(),
)

commands(
    ("vc2", 8),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("vc2", 9),
    baca.make_mmrests(),
)

commands(
    ("vc2", (10, 12)),
    library.make_sixteenths(
        [14, 1, 1, 1],
    ),
)

commands(
    ("vc2", (13, 14)),
    library.make_tuplet(
        [9 * (1,)],
        denominator=(1, 4),
    ),
)

commands(
    ("vc2", 15),
    baca.make_notes(),
)

# CB1

commands(
    ("cb1", 1),
    library.make_sixteenths(
        [3, "-"],
    ),
)

commands(
    ("cb1", (2, 8)),
    baca.make_notes(),
)

commands(
    ("cb1", 9),
    baca.make_mmrests(),
)

commands(
    ("cb1", (10, 15)),
    baca.make_notes(),
)

# CB2

commands(
    ("cb2", 1),
    baca.make_mmrests(),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("cb2", 3),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("cb2", (4, 7)),
    baca.make_mmrests(),
)

commands(
    ("cb2", 8),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)
commands(
    ("cb2", 9),
    baca.make_mmrests(),
)

commands(
    ("cb2", (10, 12)),
    library.make_sixteenths(
        [16, 1, 1, 1],
    ),
)

commands(
    ("cb2", (13, 14)),
    library.make_tuplet(
        [7 * (1,)],
        denominator=(1, 4),
    ),
)

commands(
    ("cb2", 15),
    baca.make_notes(),
)

# phantom

commands(
    ["bfl", "perc1", "perc2", "hp", "va", "vc1", "vc2", "cb1", "cb2"],
    baca.append_phantom_measure(),
)

# after

commands(
    ["bfl", "perc1", "perc2", "hp", "va", "vc1", "vc2", "cb1", "cb2"],
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 1),
    baca.pitch("Eb3"),
    baca.dynamic("mf"),
)

commands(
    ("bfl", (1, 2)),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.select.leaves(_)[2:8],
    ),
)

commands(
    ("bfl", (2, 3)),
    baca.pitch("E3"),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.select.leaves(_)[4:9],
    ),
)

commands(
    ("bfl", 7),
    baca.pitch("F3"),
    baca.dynamic("mf"),
)

commands(
    ("bfl", 8),
    baca.pitch("E3"),
)

commands(
    ("bfl", (7, 8)),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
)

commands(
    ("bfl", 10),
    baca.pitch(
        "G3",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_g,
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: abjad.select.partition_by_counts(
            baca.pleaves(_, grace=False), [2, 1]
        ),
    ),
    baca.text_spanner(
        r"\harmony-g-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("bfl", (11, 13)),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=11,
        pieces=lambda _: baca.select.lparts(_, [1, 1]),
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        measures=12,
        pieces=lambda _: baca.select.lparts(_, [1, 1]),
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=13,
        pieces=lambda _: baca.select.lparts(_, [1, 1]),
    ),
)

commands(
    ("bfl", (11, 12)),
    baca.pitch(
        "G4",
        lambda _: baca.select.leaves(_, grace=False),
    ),
)

commands(
    ("bfl", 14),
    baca.hairpin(
        "o< mp >o niente",
        measures=14,
        pieces=lambda _: baca.select.lparts(_, [1, 3]),
    ),
)

commands(
    ("bfl", (13, 14)),
    baca.pitch(
        "G#4",
        lambda _: baca.select.leaves(_, grace=False),
    ),
)

commands(
    ("bfl", 15),
    baca.pitches(
        "A3",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a, -9),
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pleaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("bfl", (1, 15)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 2),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 3),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 7),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
)

commands(
    ("perc1", 8),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("perc1", (3, 8)),
    library.slate_staff_position(),
)

commands(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[2:]),
    ),
)

commands(
    ("perc1", (10, 14)),
    library.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pheads(_), [0, -1]),
    ),
    baca.dynamic("p"),
    baca.hairpin(
        "(p) >o niente",
        measures=14,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 15)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 7)),
    library.bass_drum_staff_position(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("perc2", (10, 15)),
    baca.new(
        library.bass_drum_staff_position(),
        baca.flat_glissando(
            right_broken=True,
        ),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.phead(_, 0),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

# hp

commands(
    ("hp", (2, 12)),
    baca.clef("bass"),
    baca.new(
        baca.pitch("F#3"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        measures=(2, 3),
    ),
    baca.new(
        baca.pitch("<F#3 Gb3>"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        measures=(4, 11),
    ),
    baca.new(
        baca.pitch("F#3"),
        measures=12,
    ),
    baca.dynamic("mf"),
    baca.text_spanner(
        "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
        " -> 0 pul. / beat",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        measures=(4, 7),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.text_spanner(
        "0 pul. / beat -> 8 pul. / beat -> 0 pul. / beat",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        measures=(10, 11),
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(mf) >o niente",
        measures=12,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\harmony-rh-bow-markup",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.markup(
        r"\harmony-rh-bow-plus-lh-bow-markup",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        measures=4,
    ),
    baca.markup(
        r"\harmony-rh-bow-only-markup",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        measures=12,
    ),
)

commands(
    ("hp", (1, 13)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    baca.pitch("C4"),
)

commands(
    ("va", 2),
    baca.clef("treble"),
    baca.pitch("A5"),
    baca.trill_spanner(),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("va", [3, 8]),
    baca.new(
        baca.clef("alto"),
        match=[0],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", (10, 15)),
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.tuplet_bracket_up(),
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 1),
    ),
    baca.pitches(
        "F#4 D3",
        lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
    ),
    baca.staff_positions(
        [
            0,
            2,
            -1,
            1,
            -2,
            1,
            0,
            2,
            -1,
            1,
            -2,
            1,
            -1,
            1,
            -2,
            0,
            -3,
            0,
            -1,
            1,
            -2,
            0,
            -3,
            0,
            -2,
            0,
            -3,
            -1,
            -4,
            -1,
            -2,
            0,
            -3,
            -1,
            -4,
            -1,
            -3,
            -1,
            -4,
            -2,
            -5,
            -2,
            -3,
            -1,
            -4,
            -2,
            -5,
            -2,
        ],
        lambda _: baca.select.plts(_)[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.mgroups(_, [3, 4]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [3, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.pitch("B4"),
)

commands(
    ("vc1", 2),
    baca.pitch("Gqs6"),
    baca.trill_spanner(),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", [3, 8]),
    baca.pitch("B4"),
)

commands(
    ("vc1", (10, 15)),
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 1),
    ),
    baca.clef("bass"),
    baca.pitches(
        "F#3 D2",
        lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
    ),
    baca.staff_positions(
        [
            -1,
            1,
            -2,
            0,
            -3,
            0,
            -1,
            1,
            -2,
            0,
            -3,
            0,
            -2,
            0,
            -3,
            -1,
            -4,
            -1,
            -2,
            0,
            -3,
            -1,
            -4,
            -1,
            -3,
            -1,
            -4,
            -2,
            -5,
            -2,
            -3,
            -1,
            -4,
            -2,
            -5,
            -2,
            -4,
            -2,
            -5,
            -3,
            -6,
            -3,
            -4,
            -2,
            -5,
            -3,
            -6,
            -3,
        ],
        lambda _: baca.select.plts(_)[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.mgroups(_, [3, 4]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [3, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.pitch("Dqs4"),
)

commands(
    ("vc2", 2),
    baca.pitch("F#5"),
    baca.trill_spanner(),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", [3, 8]),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
    ),
)

commands(
    ("vc2", (10, 15)),
    baca.untie(
        lambda _: baca.select.pleaves(_),
    ),
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 1),
    ),
    baca.clef("bass"),
    baca.pitches(
        "F#3 D2",
        lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
    ),
    baca.staff_positions(
        [
            -1,
            1,
            -2,
            0,
            -3,
            0,
            -2,
            0,
            -3,
            -1,
            -4,
            -1,
            -2,
            0,
            -3,
            -1,
            -4,
            -1,
            -3,
            -1,
            -4,
            -2,
            -5,
            -2,
            -3,
            -1,
            -4,
            -2,
            -5,
            -2,
            -4,
            -2,
            -5,
            -3,
            -6,
            -3,
            -4,
            -2,
            -5,
            -3,
            -6,
            -3,
        ],
        lambda _: baca.select.plts(_)[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.mgroups(_, [3, 4]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [3, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.pitch("F3"),
)

commands(
    ("cb1", (2, 12)),
    baca.pitch("F#1"),
    baca.flat_glissando(),
    baca.dynamic("pp"),
    baca.hairpin(
        "(pp) >o niente o< mf >o niente",
        measures=(12, 15),
        pieces=lambda _: baca.mgroups(_, [1, 1, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 =| (T1) -> T2 -> T1 -> T3 -> T1 =| (T1) -> P2 -> T3 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.mgroups(_, [2, 1, 1, 1, 1, 2, 1, 1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("cb1", (13, 15)),
    baca.interpolate_pitches("F#2", "D2"),
    baca.glissando(
        hide_middle_note_heads=True,
    ),
    baca.scp_spanner(
        "T4 -> O -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [1, 2]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb2

commands(
    ("cb2", 2),
    baca.pitch(
        "Dqf6",
        do_not_transpose=True,
    ),
    baca.trill_spanner(),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", [3, 8]),
    baca.new(
        baca.clef("bass"),
        match=[0],
    ),
    baca.pitch("A1"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", (10, 15)),
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 1),
    ),
    baca.tuplet_bracket_up(),
    baca.pitches(
        "F#3 D2",
        lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
    ),
    baca.staff_positions(
        [
            5,
            6,
            3,
            5,
            2,
            5,
            3,
            5,
            2,
            4,
            1,
            4,
            3,
            5,
            2,
            4,
            1,
            4,
            2,
            4,
            1,
            3,
            0,
            3,
            2,
            4,
            1,
            3,
            0,
            3,
            1,
            3,
            0,
            2,
            -1,
            2,
            1,
            3,
            0,
            2,
            -1,
            2,
        ],
        lambda _: baca.select.plts(_)[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.mgroups(_, [3, 4]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T4 -> P1 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [3, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# va, vc1, vc2, cb1

commands(
    (["va", "vc1", "vc2", "cb1"], 1),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
        match=[0, 1, 2],
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
        match=[3],
    ),
    baca.hairpin(
        "mp >o niente",
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
)


# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb2"], 2),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb2"], [3, 8]),
    baca.stop_on_string(
        lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 15)),
    baca.dls_staff_padding(4),
)

commands(
    (["va", "vc1", "vc2", "cb2"], (10, 15)),
    baca.tuplet_bracket_staff_padding(2),
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
        fermata_measure_empty_overrides=[9],
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
