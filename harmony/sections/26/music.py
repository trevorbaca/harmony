import abjad
import baca

from harmony import library

#########################################################################################
######################################### 26 [Z] ########################################
#########################################################################################

stage_markup = (
    ("[Z.1-2]", 1),
    ("[>CC.1]", 4, "#darkgreen"),
    ("[Z.3-5]", 5),
    ("[<X.8]", 8, "#darkgreen"),
    ("[<Y.2]", 9, "#darkgreen"),
    ("[Z.6]", 10),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (6, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("5:3(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("3:4(4)=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("4:3(4)=4", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 8 - 1)),
    baca.metronome_mark("2=4", lambda _: baca.select.skip(_, 8 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 9 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 9 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 10 - 1)),
    baca.metronome_mark("5:3(4)=4", lambda _: baca.select.skip(_, 10 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 3 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-four",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 3 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", (1, 2)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("bfl", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 4),
    library.make_sixteenths(
        [4, 4, 16],
        written_halves=[0, 1],
        invisible_pairs=True,
        tie=[1, 2],
    ),
)

commands(
    ("bfl", (5, 7)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("bfl", 8),
    library.make_sixteenths(
        [-2, 2, 2],
    ),
)

commands(
    ("bfl", 9),
    library.make_warble_rhythm(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
)

commands(
    ("bfl", 10),
    library.make_sixteenths(
        [4, -12],
    ),
)

# PERC1

commands(
    ("perc1", (1, 2)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("perc1", (3, 4)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", (5, 6)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("perc1", 7),
    library.make_sixteenths(
        [4, "-", 6, -2],
    ),
)

commands(
    ("perc1", 8),
    library.make_sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc1", 9),
    library.make_sixteenths(
        [1, -11, 4, -12, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    ),
)

commands(
    ("perc1", 10),
    library.make_sixteenths(
        [4, -12],
    ),
)

# PERC2

commands(
    ("perc2", 1),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [-8, 1, -3],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

commands(
    ("perc2", (3, 6)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 7),
    library.make_sixteenths(
        [-8, "+"],
    ),
)

commands(
    ("perc2", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc2", 9),
    library.make_sixteenths(
        [2, -22, -1, 2, -21],
    ),
)

commands(
    ("perc2", 10),
    library.make_sixteenths(
        ["-", 2],
        extra_counts=[2],
        denominator=None,
    ),
)

# HP

commands(
    ("hp", (1, 2)),
    library.make_sixteenths(
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", (3, 4)),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", (5, 6)),
    library.make_sixteenths(
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 7),
    library.make_sixteenths(
        ["-", 6, -2],
    ),
)

commands(
    ("hp", 8),
    library.make_sixteenths(
        [1, -3, 3, -3, 3, -3],
    ),
)

commands(
    ("hp", 9),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 10),
    library.make_sixteenths(
        [-2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

# VA

commands(
    ("va", (1, 3)),
    baca.make_mmrests_flat(),
)

commands(
    ("va", 4),
    library.make_sixteenths(
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    ),
)

commands(
    ("va", (5, 7)),
    baca.make_repeat_tied_notes(),
)

commands(
    ("va", 8),
    library.make_sixteenths(
        [6, 3, 11],
    ),
)

commands(
    ("va", 9),
    library.make_tessera_4(4),
)

commands(
    ("va", 10),
    baca.make_mmrests_flat(),
)

# VC1

commands(
    ("vc1", (1, 2)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    ),
)

commands(
    ("vc1", (5, 7)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("vc1", 8),
    library.make_sixteenths(
        [4, 2, 7, 7],
    ),
)

commands(
    ("vc1", 9),
    library.make_tessera_4(3),
)

commands(
    ("vc1", 10),
    library.make_sixteenths(
        [4, -12],
    ),
)

# VC2

commands(
    ("vc2", (1, 2)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    ),
)

commands(
    ("vc2", (5, 7)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("vc2", 8),
    library.make_sixteenths(
        [9, 11],
    ),
)

commands(
    ("vc2", 9),
    library.make_tessera_4(2),
)

commands(
    ("vc2", 10),
    library.make_sixteenths(
        [4, -12],
    ),
)

# CB1

commands(
    ("cb1", (1, 2)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("cb1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    ),
)

commands(
    ("cb1", (5, 7)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("cb1", 8),
    library.make_sixteenths(
        [4, 9, 7],
    ),
)

commands(
    ("cb1", 9),
    library.make_tessera_4(1),
)

commands(
    ("cb1", 10),
    library.make_sixteenths(
        [4, -12],
    ),
)

# CB2

commands(
    ("cb2", (1, 2)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("cb2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", 4),
    library.make_sixteenths(
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    ),
)

commands(
    ("cb2", (5, 7)),
    library.make_sixteenths(
        [4, -12],
    ),
)

commands(
    ("cb2", 8),
    library.make_sixteenths(
        [9, 11],
    ),
)

commands(
    ("cb2", 9),
    library.make_tessera_4(0),
)

commands(
    ("cb2", 10),
    library.make_sixteenths(
        [4, -12],
    ),
)

# phantom & reapply

music_voices = [_ for _ in voice_names if "Music_Voice" in _]

commands(
    music_voices,
    baca.append_phantom_measure(),
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", [(1, 2), (5, 7), 10]),
    baca.pitch("C3"),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        argument=r"\baca-cov-markup =|",
        map=lambda _: baca.select.runs(_),
    ),
)


commands(
    ("bfl", 4),
    baca.pitch("Bb4"),
    baca.hairpin(
        "pp < p >o",
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [1, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
    baca.text_spanner(
        "(T) -> A -> (T)",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
    ),
)

commands(
    ("bfl", 8),
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
    ("bfl", 9),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -9),
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
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 2)),
    library.slate_staff_position(),
    baca.dynamic('"ff"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (5, 6)),
    library.slate_staff_position(),
    baca.dynamic(
        '"ff"-ancora',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("perc1", 7),
    library.slate_staff_position(),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("perc1", 8),
    library.slate_staff_position(),
)

commands(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[2:],
    ),
)


commands(
    ("perc1", 9),
    baca.new(
        library.brake_drum_staff_position(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.new(
        library.slate_staff_position(),
        selector=lambda _: baca.select.pleaves(_)[1:],
    ),
    baca.dynamic(
        '"ff"',
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("perc1", 10),
    library.slate_staff_position(),
)

commands(
    ("perc1", (9, 10)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[3:],
    ),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 2),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic(
        "mp",
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (7, 8)),
    library.tam_tam_staff_position(),
    baca.flat_glissando(),
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
    ("perc2", 9),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (1, 9)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 10),
    baca.staff_lines(
        3,
        lambda _: abjad.select.leaf(_, -2),
    ),
    library.purpleheart_staff_positions([2]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:]),
    ),
)

# hp

commands(
    ("hp", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        selector=lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("hp", (5, 6)),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f-ancora"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        selector=lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("hp", (1, 6)),
    baca.dls_staff_padding(4 + 2),
)

commands(
    ("hp", 7),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("hp", (7, 8)),
    library.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[1:],
    ),
)

commands(
    ("hp", 9),
    baca.clef("treble"),
    baca.staff_lines(5),
)

commands(
    ("hp", 10),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        selector=lambda _: baca.select.pheads(_),
    ),
)

# va

commands(
    ("va", (4, 7)),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        alteration="Cb5",
    ),
)

commands(
    ("va", 8),
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
    ("va", 9),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

# vc1

commands(
    ("vc1", 8),
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
    ("vc1", 9),
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
    ("vc1", [(1, 2), (5, 7), 10]),
    baca.pitch("D2"),
)

# vc2

commands(
    ("vc2", 8),
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
    ("vc2", 9),
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
    ("vc2", [(1, 2), (5, 7), 10]),
    baca.pitch("C#2"),
)

# cb1

commands(
    ("cb1", 8),
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
    ("cb1", 9),
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
    ("cb1", [(1, 2), (5, 7), 10]),
    baca.pitch("D2"),
)

# cb2

commands(
    ("cb2", 8),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 9),
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
    ("cb2", [(1, 2), (5, 7), 10]),
    baca.pitch("C#2"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.hairpin(
        "pp < p > pp",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
    ),
    baca.new(
        baca.clef("treble"),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
        ),
        match=[1, 2, 3, 4],
    ),
    baca.new(
        baca.pitch("Bb4"),
        match=[1, 2],
    ),
    baca.new(
        baca.pitch(
            "Bb4",
            do_not_transpose=True,
        ),
        match=[3, 4],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.hairpin(
        "o< f",
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 9),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], [(1, 2), (5, 7), 10]),
    baca.clef("bass"),
    baca.hairpin(
        "o<| ff",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.stop_on_string(
        lambda _: abjad.select.leaf(_, 0),
        map=lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
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
