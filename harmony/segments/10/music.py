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
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "J",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.close_volta(baca.selectors.skip(2 - 1)),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(10 - 1)),
    baca.metronome_mark("2.=4", baca.selectors.skip(10 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(9 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eight",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(9 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    library.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("Eb3"),
    baca.dynamic("mf"),
)

commands(
    ("bfl", 2),
    library.sixteenths(
        [-2, 4, -2, -4, 4],
    ),
)

commands(
    ("bfl", (1, 2)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.selectors.leaves((2, 8)),
    ),
)

commands(
    ("bfl", 3),
    library.sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("bfl", (2, 3)),
    baca.pitch("E3"),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.selectors.leaves((4, 9)),
    ),
)

commands(
    ("bfl", 7),
    library.sixteenths(
        ["-", 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
)

commands(
    ("bfl", 8),
    baca.pitch("E3"),
    library.sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("bfl", (7, 8)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.selectors.leaves((1, 8)),
    ),
)

commands(
    ("bfl", 10),
    library.appoggiato(
        counts=[9, 0],
        divisions=[12, 12],
        prefix_talea=[-1],
        prefix_counts=[1, 0],
    ),
    baca.pitch(
        "G3",
        baca.selectors.leaves(grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_g,
        baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.Selection(_)
        .pleaves(grace=False)
        .partition_by_counts([2, 1]),
    ),
    baca.text_spanner(
        r"\harmony-g-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("bfl", (11, 13)),
    library.sixteenths(
        [12],
        written_dotted_wholes=([0], 2),
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=11,
        pieces=baca.selectors.lparts([1, 1]),
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        measures=12,
        pieces=baca.selectors.lparts([1, 1]),
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=13,
        pieces=baca.selectors.lparts([1, 1]),
    ),
)

commands(
    ("bfl", (11, 12)),
    baca.pitch(
        "G4",
        baca.selectors.leaves(grace=False),
    ),
)

commands(
    ("bfl", 14),
    library.sixteenths(
        [12, 8, 3, 1],
        written_dotted_wholes=([0], 2),
        invisible=[1, 2, 3],
    ),
    baca.hairpin(
        "o< mp >o niente",
        measures=14,
        pieces=baca.selectors.lparts([1, 3]),
    ),
)

commands(
    ("bfl", (13, 14)),
    baca.pitch(
        "G#4",
        baca.selectors.leaves(grace=False),
    ),
)

commands(
    ("bfl", 15),
    library.appoggiato(
        counts=[9],
        incise=True,
    ),
    baca.pitches(
        "A3",
        baca.selectors.leaves(grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_a.rotate(-9),
        baca.selectors.leaves(grace=True),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.pleaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("bfl", (1, 15)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 2),
    library.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.selectors.pleaf(1),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", 3),
    library.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        '"f"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", 7),
    library.sixteenths(
        ["-", 2, -2, 2, -2],
        extra_counts=[2],
        denominator=None,
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
)

commands(
    ("perc1", 8),
    library.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
)

commands(
    ("perc1", (3, 8)),
    library.slate_staff_position(),
)

commands(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((2, None), rleak=True),
    ),
)

commands(
    ("perc1", (10, 14)),
    baca.make_notes(),
    library.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.selectors.pheads([0, -1]),
    ),
    baca.dynamic("p"),
    baca.hairpin(
        "(p) >o niente",
        measures=14,
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", (1, 15)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 7)),
    baca.make_notes(),
    library.bass_drum_staff_position(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.stem_tremolo(
        baca.selectors.phead(-1),
    ),
)

commands(
    ("perc2", (10, 15)),
    baca.make_notes(),
    baca.new(
        library.bass_drum_staff_position(),
        baca.flat_glissando(
            right_broken=True,
        ),
        selector=baca.selectors.rleaves(),
    ),
    baca.stem_tremolo(
        baca.selectors.phead(0),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

# hp

commands(
    ("hp", [(2, 8), (10, 12)]),
    baca.make_notes(),
)

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
        abjad.tweak(3).staff_padding,
        measures=(4, 7),
        pieces=baca.selectors.lparts([1, 1, 1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.text_spanner(
        "0 pul. / beat -> 8 pul. / beat -> 0 pul. / beat",
        abjad.tweak(3).staff_padding,
        measures=(10, 11),
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(mf) >o niente",
        measures=12,
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\harmony-rh-bow-markup",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        r"\harmony-rh-bow-plus-lh-bow-markup",
        abjad.tweak(5.5).staff_padding,
        measures=4,
    ),
    baca.markup(
        r"\harmony-rh-bow-only-markup",
        abjad.tweak(5.5).staff_padding,
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
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

commands(
    ("va", [3, 8]),
    library.sixteenths(
        [-4, "+"],
    ),
    baca.new(
        baca.clef("alto"),
        match=[0],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("va", 10),
    library.sixteenths(
        [12, 1, 1, 1],
    ),
)

commands(
    ("va", (11, 14)),
    library.tuplet([11 * (1,)]),
)

commands(
    ("va", 15),
    baca.make_notes(),
)

commands(
    ("va", (10, 15)),
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.tuplet_bracket_up(),
    baca.repeat_tie(
        baca.selectors.leaf(1),
    ),
    baca.pitches(
        "F#4 D3",
        baca.selectors.plts([0, -1]),
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
        baca.selectors.plts((1, -1)),
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([3, 4]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([3, 3]),
        selector=baca.selectors.leaves(),
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
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

commands(
    ("vc1", [3, 8]),
    baca.pitch("B4"),
)

commands(
    ("vc1", (10, 11)),
    library.sixteenths(
        [13, 1, 1, 1],
    ),
)

commands(
    ("vc1", (12, 14)),
    library.tuplet(
        [10 * (1,)],
        denominator=(1, 4),
    ),
)

commands(
    ("vc1", 15),
    baca.make_notes(),
)

commands(
    ("vc1", (10, 15)),
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.repeat_tie(
        baca.selectors.leaf(1),
    ),
    baca.clef("bass"),
    baca.pitches(
        "F#3 D2",
        baca.selectors.plts([0, -1]),
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
        baca.selectors.plts((1, -1)),
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([3, 4]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([3, 3]),
        selector=baca.selectors.leaves(),
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
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

commands(
    ("vc2", [3, 8]),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.tweak(1.5).staff_padding,
    ),
)

commands(
    ("vc2", (10, 12)),
    library.sixteenths(
        [14, 1, 1, 1],
    ),
)

commands(
    ("vc2", (13, 14)),
    library.tuplet(
        [9 * (1,)],
        denominator=(1, 4),
    ),
)

commands(
    ("vc2", 15),
    baca.make_notes(),
)

commands(
    ("vc2", (10, 15)),
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.repeat_tie(
        baca.selectors.leaf(1),
    ),
    baca.clef("bass"),
    baca.pitches(
        "F#3 D2",
        baca.selectors.plts([0, -1]),
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
        baca.selectors.plts((1, -1)),
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([3, 4]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([3, 3]),
        selector=baca.selectors.leaves(),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.pitch("F3"),
)

commands(
    ("cb1", [(2, 8), (10, 15)]),
    baca.make_notes(),
)

commands(
    ("cb1", (2, 12)),
    baca.pitch("F#1"),
    baca.flat_glissando(),
    baca.dynamic("pp"),
    baca.hairpin(
        "(pp) >o niente o< mf >o niente",
        measures=(12, 15),
        pieces=lambda _: baca.Selection(_).mgroups([1, 1, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =| (T1) -> T2 -> T1 -> T3 -> T1 =| (T1) -> P2 -> T3 =|",
        abjad.tweak(3).staff_padding,
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 1, 1, 2, 1, 1, 2]),
        selector=baca.selectors.rleaves(),
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
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([1, 2]),
        selector=baca.selectors.leaves(),
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
        abjad.tweak(1).padding,
        direction=abjad.Down,
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
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

commands(
    ("cb2", (10, 12)),
    library.sixteenths(
        [16, 1, 1, 1],
    ),
)

commands(
    ("cb2", (13, 14)),
    library.tuplet(
        [7 * (1,)],
        denominator=(1, 4),
    ),
)

commands(
    ("cb2", 15),
    baca.make_notes(),
)

commands(
    ("cb2", (10, 15)),
    baca.repeat_tie(
        baca.selectors.leaf(1),
    ),
    baca.tuplet_bracket_up(),
    baca.pitches(
        "F#3 D2",
        baca.selectors.plts([0, -1]),
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
        baca.selectors.plts((1, -1)),
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([3, 4]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T4 -> P1 -> T4",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([3, 3]),
        selector=baca.selectors.leaves(),
    ),
)

# va, vc1, vc2, cb1

commands(
    (["va", "vc1", "vc2", "cb1"], 1),
    library.sixteenths(
        [3, "-"],
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(5.5).staff_padding,
        ),
        selector=lambda _: baca.Selection(_).leaves()[:2].rleak(),
        match=[0, 1, 2],
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(10.5).staff_padding,
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(8).staff_padding,
        ),
        selector=lambda _: baca.Selection(_).leaves()[:2].rleak(),
        match=[3],
    ),
    baca.hairpin(
        "mp >o niente",
        selector=baca.selectors.leaves((None, 2)),
    ),
)


# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb2"], 2),
    library.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb2"], [3, 8]),
    library.sixteenths(
        [-4, 8, "-"],
    ),
    baca.stop_on_string(
        baca.selectors.leaf_in_each_rleak_run(-1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=baca.selectors.tleaves(rleak=True),
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
        preamble=baca.interpret.nonfirst_preamble.split("\n"),
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
