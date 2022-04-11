import abjad
import baca

from harmony import library

#########################################################################################
######################################## 27 [AA] ########################################
#########################################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[◀X.6]", 3, "#darkgreen"),
    ("[AA.2-3]", 4),
    ("[◀Y.2]", 6, "#darkgreen"),
    ("[▶BB.5]", 7, "#darkgreen"),
    ("[AA.4]", 9),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (7, 4),
        (1, 4),
        (5, 4),
        (7, 4),
        (6, 4),
        (6, 4),
        (2, 4),
        (1, 4),
        (7, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "AA",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "AA",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("2.=4", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("3:2(8)=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("4:5(2)=4", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 7 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 7 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 9 - 1)),
    baca.metronome_mark("3:2(8)=4", lambda _: baca.select.skip(_, 9 - 1)),
)

commands(
    "Global_Skips",
    baca.open_volta(lambda _: baca.select.skip(_, 4 - 1)),
    baca.close_volta(lambda _: baca.select.skip(_, 6 - 1)),
    baca.not_parts(
        baca.markup(
            r"\harmony-repeat-three-markup",
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 17)"),
            abjad.Tweak(r"- \tweak font-size 10"),
            selector=lambda _: baca.select.skip(_, 4 - 1),
        ),
    ),
    baca.only_parts(
        baca.markup(
            r"\harmony-repeat-three-markup",
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 9)"),
            abjad.Tweak(r"- \tweak font-size 4"),
            selector=lambda _: baca.select.skip(_, 4 - 1),
        ),
    ),
    baca.text_script_extra_offset((1.5, 12)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 2 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 8 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-five",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 2 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-six",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 8 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 3),
    library.sixteenths(
        [-2, 2, 2],
    ),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (4, 5)),
    library.appoggiato(
        divisions=[28, 24],
        counts=[9, 6],
        incise=True,
    ),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_a_flat,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "pp-ppp",
        selector=baca.selectors.pleaf(0, grace=False),
    ),
    baca.dynamic(
        "pp-ppp",
        measures=5,
        selector=baca.selectors.pleaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        lilypond_id=2,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.text_spanner(
        "A =|",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        autodetect_right_padding=True,
        bookend=False,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 6),
    library.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -10),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (4, 5)
        ),
        map=lambda _: baca.select.runs(_),
        selector=baca.selectors.leaves(),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 7),
    library.sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb4"),
    baca.hairpin(
        "pp < p >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
)

commands(
    ("bfl", 9),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("G3"),
    baca.note_head_style_harmonic(),
    baca.dynamic("ff"),
    baca.markup(r"\baca-jet-whistle-markup"),
)

commands(
    ("bfl", (1, 9)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 3),
    library.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    library.slate_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 5)),
    baca.make_repeat_tied_notes(),
    library.brake_drum_staff_position(),
    baca.flat_glissando(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc1", 6),
    library.sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 7),
    library.sixteenths(
        [1, -23],
    ),
    library.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("mf"),
)

commands(
    ("perc1", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
    ),
)

commands(
    ("perc1", 9),
    baca.make_repeat_tied_notes(),
    library.brake_drum_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 9)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    library.sixteenths(
        [4, -20, 4],
    ),
    baca.staff_position(2),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
)

commands(
    ("perc2", 3),
    baca.staff_lines(1),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    library.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (1, 3)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", (4, 5)),
    baca.staff_lines(3),
    library.sixteenths(
        [2, "-"],
    ),
    baca.staff_position(2),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc2", 6),
    baca.staff_lines(1),
    library.sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.new(
        library.slate_staff_position(),
        selector=baca.selectors.pleaf(0),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_, None, 1),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 7),
    library.sixteenths(
        [1, -23],
    ),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
    ),
)

commands(
    ("perc2", (6, 9)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        [-24, 4],
    ),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("f-ancora"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pince-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", 3),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    library.whisk_staff_position(),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-pince-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("hp", 6),
    library.sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.dynamic("f-ancora"),
)

commands(
    ("hp", 7),
    library.sixteenths(
        [1, -23],
    ),
    baca.dynamic("mf"),
)

commands(
    ("hp", (6, 7)),
    baca.pitch("Bb4"),
    baca.snap_pizzicato(
        baca.selectors.pheads(),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
    ),
)

commands(
    ("hp", (4, 9)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    baca.make_notes(),
    baca.pitch("Ab4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", 3),
    library.sixteenths(
        [6, 3, 11],
    ),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("va", 4),
    baca.make_notes(),
)

commands(
    ("va", 5),
    baca.skeleton(
        r"c2. c8 \times 5/4 { c2 }",
    ),
    baca.repeat_tie(
        baca.selectors.pleaves((None, 2)),
    ),
    baca.tuplet_bracket_up(),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        selector=baca.selectors.phead(-1),
    ),
)

commands(
    ("va", (4, 5)),
    baca.pitch(
        "Ab4",
        selector=baca.selectors.plts((None, -1)),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("va", 6),
    library.tessera_4(4),
)

commands(
    ("va", (5, 6)),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.stem_tremolo(),
        selector=baca.selectors.plts(),
    ),
    baca.dynamic(
        "pp",
        selector=baca.selectors.phead(0),
    ),
)

commands(
    ("va", 9),
    baca.make_notes(),
    baca.pitch(
        "Gqf3",
        lambda _: baca.select.rleaves(_),
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
    baca.markup(
        r"\baca-seven-a",
        direction=abjad.DOWN,
    ),
)

# vc1

sixteenths = [6, -2, 4, -2, 4, -2, 2, -2]

commands(
    ("vc1", 3),
    library.sixteenths(
        [4, 2, 7, 7],
    ),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc1", 4),
    library.sixteenths(
        sixteenths[:4] + ["-"],
    ),
)

commands(
    ("vc1", 5),
    library.sixteenths(
        sixteenths,
    ),
)

commands(
    ("vc1", 6),
    library.tessera_4(3),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=baca.selectors.plts(),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        baca.selectors.pleaves([0, -1]),
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("vc1", 7),
    baca.note_head_style_harmonic(),
    baca.pitch("C#6"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="E6",
    ),
)

commands(
    ("vc1", 9),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc1", [(4, 5), 9]),
    baca.pitch("G3"),
)

# vc2

commands(
    ("vc2", 3),
    library.sixteenths(
        [9, 11],
    ),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc2", 4),
    library.sixteenths(
        abjad.sequence.rotate(sixteenths, -2)[:4] + ["-"],
    ),
)

commands(
    ("vc2", 5),
    library.sixteenths(
        abjad.sequence.rotate(sixteenths, -2),
    ),
)

commands(
    ("vc2", 6),
    library.tessera_4(2),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
        pieces=baca.selectors.lparts([1, 2, 3, 2]),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        baca.selectors.pleaves([0, -1]),
    ),
    baca.pitch(
        "C5",
        baca.selectors.pleaves((1, -1)),
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("vc2", 7),
    baca.note_head_style_harmonic(),
    baca.pitch("A5"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="C#6",
    ),
)

commands(
    ("vc2", 9),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
    ),
)

commands(
    ("vc2", [(4, 5), 9]),
    baca.pitch("G3"),
)

# cb1

commands(
    ("cb1", 3),
    library.sixteenths(
        [4, 9, 7],
    ),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb1", 4),
    library.sixteenths(
        abjad.sequence.rotate(sixteenths, -4)[:4] + ["-"],
    ),
)

commands(
    ("cb1", 5),
    library.sixteenths(
        abjad.sequence.rotate(sixteenths, -4),
    ),
)

commands(
    ("cb1", 6),
    library.tessera_4(1),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
        pieces=baca.selectors.lparts([2, 3, 2]),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        baca.selectors.pleaves([0, -1]),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("cb1", 7),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
)

commands(
    ("cb1", 9),
    baca.clef("bass"),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb1", [(4, 5), 9]),
    baca.pitch("Gb2"),
)

# cb2

commands(
    ("cb2", 3),
    library.sixteenths(
        [9, 7, 1, -1, 1, -1, 1, -1],
        extra_counts=[0, 0, 0, 0, 2],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.pitch(
        "F#1",
        baca.selectors.leaves((None, 4)),
    ),
    baca.pitch(
        "Gb2",
        baca.selectors.plts((-3, None)),
    ),
    baca.scp_spanner(
        "P1 -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.accent(
        baca.selectors.pheads((1, 3)),
    ),
    baca.stem_tremolo(
        baca.selectors.plts((None, 2)),
    ),
    baca.dynamic("f"),
    baca.dynamic(
        "pp",
        selector=baca.selectors.phead(2),
    ),
)

commands(
    ("cb2", 4),
    library.sixteenths(
        [2, -2, 6, "-"],
    ),
)

commands(
    ("cb2", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((4, 13)),
    ),
)

commands(
    ("cb2", 5),
    library.sixteenths(
        abjad.sequence.rotate(sixteenths, -6),
    ),
)

commands(
    ("cb2", (3, 5)),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=baca.selectors.leaves((4, None), rleak=True),
    ),
)

commands(
    ("cb2", 6),
    library.tessera_4(0),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=baca.selectors.lparts([2, 1, 1]),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        baca.selectors.pleaves([0, -1]),
        do_not_transpose=True,
    ),
    baca.pitch(
        "C5",
        baca.selectors.pleaves((1, -1)),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("cb2", 7),
    library.sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.selectors.lparts([1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 9),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", [(4, 5), 9]),
    baca.pitch("Gb2"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1"], 3),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads((1, None)),
    ),
    baca.dynamic("f"),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["vc1", "vc2", "cb1"], 7),
    library.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "niente o< mp >o niente o< mp >o niente",
        pieces=baca.selectors.lparts([1, 1, 1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1"], (4, 5)),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 9)),
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
        fermata_measure_empty_overrides=[2, 8],
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
