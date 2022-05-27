import abjad
import baca

from harmony import library

#########################################################################################
######################################### 25 [Y] ########################################
#########################################################################################

stage_markup = (
    ("[>AA.1]", 1, "#darkgreen"),
    ("[Y.1]", 2),
    ("[<X.8]", 3, "#darkgreen"),
    ("[Y.2]", 5),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.section_accumulation_defaults(),
    instruments=library.instruments(),
    margin_markups=library.margin_markups(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (7, 4),
        (6, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (1, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

commands(
    "GlobalSkips",
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:2(8)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("4:5(2)=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 5 - 1)),
)

commands(
    "GlobalRests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 4 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 11 - 1)),
)

# text

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-two",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 4 - 1),
        ),
    ),
)

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-three",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 11 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 2),
    library.make_warble_rhythm(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    ),
)

commands(
    ("bfl", 3),
    library.make_sixteenths(
        [-2, 2, 2],
    ),
)

commands(
    ("bfl", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", (5, 10)),
    library.make_warble_rhythm(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
)

commands(
    ("bfl", 11),
    baca.make_mmrests_flat(),
)

# PERC1

commands(
    ("perc1", 1),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 2),
    library.make_sixteenths(
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

commands(
    ("perc1", 3),
    library.make_sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)

commands(
    ("perc1", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", (5, 9)),
    library.make_sixteenths(
        [1, -23, -1, 1, -22],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc1", 10),
    library.make_sixteenths(
        [-1, 1, -2, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    ),
)

commands(
    ("perc1", 11),
    baca.make_mmrests_flat(),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_sixteenths(
        [4, -20, 4],
    ),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [-10, "+"],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

commands(
    ("perc2", 3),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc2", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", (5, 9)),
    library.make_sixteenths(
        [2, -22, -1, 2, -21],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc2", 10),
    library.make_sixteenths(
        [-1, 1, 1, -1, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    ),
)

commands(
    ("perc2", 11),
    baca.make_mmrests_flat(),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [-24, 4],
    ),
)

commands(
    ("hp", 2),
    library.make_sixteenths(
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

commands(
    ("hp", 3),
    library.make_sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)

commands(
    ("hp", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", (5, 10)),
    library.make_sixteenths(
        [-24, -1, 3, -20],
    ),
)

commands(
    ("hp", 11),
    baca.make_mmrests_flat(),
)

# VA

commands(
    ("va", (1, 2)),
    baca.make_notes(),
)

commands(
    ("va", 3),
    library.make_sixteenths(
        [6, 3, 11],
    ),
)

commands(
    ("va", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("va", (5, 10)),
    library.make_tessera_4(4),
)

commands(
    ("va", 11),
    baca.make_mmrests_flat(),
)

# VC1

commands(
    ("vc1", 1),
    baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
)

commands(
    ("vc1", 2),
    baca.make_notes(),
)

commands(
    ("vc1", 3),
    library.make_sixteenths(
        [4, 2, 7, 7],
    ),
)

commands(
    ("vc1", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", (5, 10)),
    library.make_tessera_4(3),
)

commands(
    ("vc1", 11),
    baca.make_mmrests_flat(),
)

# VC2

commands(
    ("vc2", 1),
    baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
)

commands(
    ("vc2", 2),
    baca.make_notes(),
)

commands(
    ("vc2", 3),
    library.make_sixteenths(
        [9, 11],
    ),
)

commands(
    ("vc2", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", (5, 10)),
    library.make_tessera_4(2),
)

commands(
    ("vc2", 11),
    baca.make_mmrests_flat(),
)

# CB1

commands(
    ("cb1", 1),
    baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
)

commands(
    ("cb1", 2),
    baca.make_notes(),
)

commands(
    ("cb1", 3),
    library.make_sixteenths(
        [4, 9, 7],
    ),
)

commands(
    ("cb1", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", (5, 10)),
    library.make_tessera_4(1),
)

commands(
    ("cb1", 11),
    baca.make_mmrests_flat(),
)

# CB2

commands(
    ("cb2", 1),
    baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
)

commands(
    ("cb2", 2),
    baca.make_notes(),
)

commands(
    ("cb2", 3),
    library.make_sixteenths(
        [9, 11],
    ),
)

commands(
    ("cb2", 4),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", (5, 10)),
    library.make_tessera_4(0),
)

commands(
    ("cb2", 11),
    baca.make_mmrests_flat(),
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
    ("bfl", 2),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -7),
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
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

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
    ("bfl", (5, 10)),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -8),
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
    ("perc1", 2),
    library.slate_staff_position(),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 3),
    library.slate_staff_position(),
)

commands(
    ("perc1", (2, 3)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
)

commands(
    ("perc1", (5, 9)),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)


commands(
    ("perc1", 10),
    library.brake_drum_staff_position(),
)

commands(
    ("perc1", (1, 10)),
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
    ("perc2", 2),
    baca.staff_lines(1),
)

commands(
    ("perc2", (2, 3)),
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
    ("perc2", (5, 9)),
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
    ("perc2", 10),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_)[:2],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_)[:2],
    ),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_, None, 1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.pleaf(_, 2),
    ),
)

commands(
    ("perc2", (2, 10)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pince-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("hp", 2),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("hp", (2, 3)),
    library.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
)

commands(
    ("hp", (5, 10)),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.pitch("G1"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4 + 3),
    baca.markup(
        r"\baca-lv-into-fermata-markup",
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

# va

commands(
    ("va", (1, 2)),
    baca.pitch("Ab4"),
    baca.flat_glissando(),
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
    ("va", (5, 10)),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.untie(
            lambda _: baca.select.leaves(_),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            lambda _: abjad.select.leaf(_, -1),
        ),
        baca.note_head_transparent(
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("vc1", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<A4 B4 C5>"),
)

commands(
    ("vc1", 3),
    baca.clef("bass"),
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
    ("vc1", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! >"
            " mf < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("vc2", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<G4 Ab4 Bb4>"),
)

commands(
    ("vc2", 3),
    baca.clef("bass"),
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
    ("vc2", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("cb1", (1, 2)),
    baca.clef("treble"),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
)

commands(
    ("cb1", 3),
    baca.clef("bass"),
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
    ("cb1", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("cb2", (1, 2)),
    baca.clef("treble"),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
)

commands(
    ("cb2", 3),
    baca.clef("bass"),
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
    ("cb2", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
    baca.markup(r"\baca-quasi-bisb-markup"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.flat_glissando(),
    baca.dynamic("f"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 10)),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
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
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[4, 11],
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
