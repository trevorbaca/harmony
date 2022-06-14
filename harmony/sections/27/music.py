import abjad
import baca

from harmony import library

#########################################################################################
######################################## 27 [AA] ########################################
#########################################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[<X.6]", 3, "#darkgreen"),
    ("[AA.2-3]", 4),
    ("[<Y.2]", 6, "#darkgreen"),
    ("[>BB.5]", 7, "#darkgreen"),
    ("[AA.4]", 9),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
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
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    commands,
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
    (1 - 1, "144"),
    (1 - 1, "3:2(4)=4"),
    (3 - 1, "48"),
    (3 - 1, "2.=4"),
    (4 - 1, "144"),
    (4 - 1, "3:2(8)=4"),
    (6 - 1, "57 3/5"),
    (6 - 1, "4:5(2)=4"),
    (7 - 1, "48"),
    (7 - 1, "5:6(4)=4"),
    (9 - 1, "144"),
    (9 - 1, "3:2(8)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

baca.markup_function(
    skips[4 - 1],
    r"\harmony-repeat-three-markup",
    abjad.Tweak(r"- \tweak extra-offset #'(0 . 17)"),
    abjad.Tweak(r"- \tweak font-size 10"),
    tags=[baca.tags.NOT_PARTS],
),

baca.markup_function(
    skips[4 - 1],
    r"\harmony-repeat-three-markup",
    abjad.Tweak(r"- \tweak extra-offset #'(0 . 9)"),
    abjad.Tweak(r"- \tweak font-size 4"),
    tags=[baca.tags.ONLY_PARTS],
)

baca.text_script_extra_offset_function(skips[:-1], (1.5, 12))

baca.open_volta(skips[4 - 1], commands.first_measure_number)
baca.close_volta(skips[6 - 1], commands.first_measure_number)

rests = score["Rests"]
for index, string in (
    (2 - 1, "fermata"),
    (8 - 1, "fermata"),
):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[2 - 1],
    r"\harmony-text-twenty-five",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[8 - 1],
    r"\harmony-text-twenty-six",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

commands(
    ("bfl", (1, 2)),
    baca.make_mmrests(),
)

commands(
    ("bfl", 3),
    library.make_sixteenths(
        [-2, 2, 2],
    ),
)

commands(
    ("bfl", (4, 5)),
    library.make_appoggiato_rhythm(
        divisions=[28, 24],
        counts=[9, 6],
        incise=True,
    ),
)

commands(
    ("bfl", 6),
    library.make_warble_rhythm(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
)

commands(
    ("bfl", 7),
    library.make_sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 8),
    baca.make_mmrests(head=True),
)

commands(
    ("bfl", 9),
    library.make_sixteenths(
        [4, "-"],
    ),
)

# PERC1

voice = score["Percussion.1.Music"]

commands(
    ("perc1", (1, 2)),
    baca.make_mmrests(),
)

commands(
    ("perc1", 3),
    library.make_sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)

commands(
    ("perc1", (4, 5)),
    baca.make_repeat_tied_notes(),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc1", 6),
    library.make_sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    ),
)

commands(
    ("perc1", 7),
    library.make_sixteenths(
        [1, -23],
    ),
)

commands(
    ("perc1", 8),
    baca.make_mmrests(),
)

commands(
    ("perc1", 9),
    baca.make_repeat_tied_notes(),
)

# PERC2

voice = score["Percussion.2.Music"]

commands(
    ("perc2", 1),
    library.make_sixteenths(
        [4, -20, 4],
    ),
)

commands(
    ("perc2", 2),
    baca.make_mmrests(),
)

commands(
    ("perc2", 3),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc2", (4, 5)),
    library.make_sixteenths(
        [2, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc2", 6),
    library.make_sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    ),
)

commands(
    ("perc2", 7),
    library.make_sixteenths(
        [1, -23],
    ),
)

commands(
    ("perc2", (8, 9)),
    baca.make_mmrests(),
)

# HP

voice = score["Harp.Music"]

commands(
    ("hp", 1),
    library.make_sixteenths(
        [-24, 4],
    ),
)

commands(
    ("hp", 2),
    baca.make_mmrests(),
)

commands(
    ("hp", 3),
    library.make_sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)

commands(
    ("hp", (4, 5)),
    library.make_sixteenths(
        [4, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("hp", 6),
    library.make_sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    ),
)

commands(
    ("hp", 7),
    library.make_sixteenths(
        [1, -23],
    ),
)

commands(
    ("hp", (8, 9)),
    baca.make_mmrests(),
)

# VA

commands(
    ("va", 1),
    baca.make_notes(),
)

commands(
    ("va", 2),
    baca.make_mmrests(head=True),
)

commands(
    ("va", 3),
    library.make_sixteenths(
        [6, 3, 11],
    ),
)

commands(
    ("va", 4),
    baca.make_notes(),
)

commands(
    ("va", 5),
    baca.make_skeleton(
        r"c2. c8 \times 5/4 { c2 }",
    ),
    baca.repeat_tie(
        selector=lambda _: baca.select.pleaves(_)[:2],
    ),
)

commands(
    ("va", 6),
    library.make_tessera_4(4),
)

commands(
    ("va", (7, 8)),
    baca.make_mmrests(),
)

commands(
    ("va", 9),
    baca.make_notes(),
)

# VC1

voice = score["Cello.1.Music"]

commands(
    ("vc1", (1, 2)),
    baca.make_mmrests(),
)

sixteenths = [6, -2, 4, -2, 4, -2, 2, -2]

commands(
    ("vc1", 3),
    library.make_sixteenths(
        [4, 2, 7, 7],
    ),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        sixteenths[:4] + ["-"],
    ),
)

commands(
    ("vc1", 5),
    library.make_sixteenths(
        sixteenths,
    ),
)

commands(
    ("vc1", 6),
    library.make_tessera_4(3),
)

commands(
    ("vc1", 7),
    library.make_sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc1", 8),
    baca.make_mmrests(head=True),
)

commands(
    ("vc1", 9),
    baca.make_notes(),
)

# VC2

voice = score["Cello.2.Music"]

commands(
    ("vc2", (1, 2)),
    baca.make_mmrests(),
)

commands(
    ("vc2", 3),
    library.make_sixteenths(
        [9, 11],
    ),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        abjad.sequence.rotate(sixteenths, -2)[:4] + ["-"],
    ),
)

commands(
    ("vc2", 5),
    library.make_sixteenths(
        abjad.sequence.rotate(sixteenths, -2),
    ),
)

commands(
    ("vc2", 6),
    library.make_tessera_4(2),
)

commands(
    ("vc2", 7),
    library.make_sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc2", 8),
    baca.make_mmrests(head=True),
)

commands(
    ("vc2", 9),
    baca.make_notes(),
)

# CB1

voice = score["Contrabass.1.Music"]

commands(
    ("cb1", (1, 2)),
    baca.make_mmrests(),
)

commands(
    ("cb1", 3),
    library.make_sixteenths(
        [4, 9, 7],
    ),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        abjad.sequence.rotate(sixteenths, -4)[:4] + ["-"],
    ),
)

commands(
    ("cb1", 5),
    library.make_sixteenths(
        abjad.sequence.rotate(sixteenths, -4),
    ),
)

commands(
    ("cb1", 6),
    library.make_tessera_4(1),
)

commands(
    ("cb1", 7),
    library.make_sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("cb1", 8),
    baca.make_mmrests(head=True),
)

commands(
    ("cb1", 9),
    baca.make_notes(),
)

# CB2

voice = score["Contrabass.2.Music"]

commands(
    ("cb2", (1, 2)),
    baca.make_mmrests(),
)

commands(
    ("cb2", 3),
    library.make_sixteenths(
        [9, 7, 1, -1, 1, -1, 1, -1],
        extra_counts=[0, 0, 0, 0, 2],
        denominator=None,
    ),
)

commands(
    ("cb2", 4),
    library.make_sixteenths(
        [2, -2, 6, "-"],
    ),
)

commands(
    ("cb2", 5),
    library.make_sixteenths(
        abjad.sequence.rotate(sixteenths, -6),
    ),
)

commands(
    ("cb2", 6),
    library.make_tessera_4(0),
)

commands(
    ("cb2", 7),
    library.make_sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
)

commands(
    ("cb2", 8),
    baca.make_mmrests(head=True),
)

commands(
    ("cb2", 9),
    baca.make_notes(),
)

# anchor notes

commands(
    ["va", "vc1", "vc2", "cb1", "cb2"],
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
    ("bfl", 3),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (4, 5)),
    baca.pitch(
        "Ab3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_a_flat(),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "pp-ppp",
        selector=lambda _: baca.select.pleaf(_, 0, grace=False),
    ),
    baca.dynamic(
        "pp-ppp",
        measures=5,
        selector=lambda _: baca.select.pleaf(_, 0, grace=False),
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
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -10),
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
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 7),
    baca.pitch("Bb4"),
    baca.hairpin(
        "pp < p >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
)

commands(
    ("bfl", 9),
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
    library.slate_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 5)),
    library.brake_drum_staff_position(),
    baca.flat_glissando(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)


commands(
    ("perc1", 6),
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
    baca.staff_position(2),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
)

commands(
    ("perc2", 3),
    baca.staff_lines(1),
    library.tam_tam_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
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
    baca.staff_position(2),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)


commands(
    ("perc2", 6),
    baca.staff_lines(1),
    baca.tuplet_bracket_up(),
    baca.new(
        library.slate_staff_position(),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
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
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
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
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-pince-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)


commands(
    ("hp", 6),
    baca.tuplet_bracket_up(),
    baca.dynamic("f-ancora"),
)

commands(
    ("hp", 7),
    baca.dynamic("mf"),
)

commands(
    ("hp", (6, 7)),
    baca.pitch("Bb4"),
    baca.snap_pizzicato(
        lambda _: baca.select.pheads(_),
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
    baca.pitch("Ab4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", 3),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 5),
    baca.tuplet_bracket_up(),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("va", (4, 5)),
    baca.pitch(
        "Ab4",
        selector=lambda _: baca.select.plts(_)[:-1],
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", (5, 6)),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.plts(_),
    ),
    baca.dynamic(
        "pp",
        selector=lambda _: baca.select.phead(_, 0),
    ),
)

commands(
    ("va", 9),
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

commands(
    ("vc1", 3),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc1", 6),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
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
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc2", 6),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2]),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.pitch(
        "C5",
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
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
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb1", 6),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [2, 3, 2]),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
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
    baca.tuplet_bracket_down(),
    baca.pitch(
        "F#1",
        lambda _: baca.select.leaves(_)[:4],
    ),
    baca.pitch(
        "Gb2",
        lambda _: baca.select.plts(_)[-3:],
    ),
    baca.scp_spanner(
        "P1 -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[1:3],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.plts(_)[:2],
    ),
    baca.dynamic("f"),
    baca.dynamic(
        "pp",
        selector=lambda _: baca.select.phead(_, 2),
    ),
)

commands(
    ("cb2", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[4:13],
    ),
)

commands(
    ("cb2", (3, 5)),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
    ),
)

commands(
    ("cb2", 6),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=lambda _: baca.select.lparts(_, [2, 1, 1]),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        do_not_transpose=True,
    ),
    baca.pitch(
        "C5",
        lambda _: baca.select.pleaves(_)[1:-1],
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("cb2", 7),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
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
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.dynamic("f"),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["vc1", "vc2", "cb1"], 7),
    baca.hairpin(
        "niente o< mp >o niente o< mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 2]),
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
        fermata_measure_empty_overrides=[2, 8],
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
