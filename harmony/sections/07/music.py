import abjad
import baca

from harmony import library

#########################################################################################
######################################### 07 [G] ########################################
#########################################################################################

stage_markup = (
    ("[G.1]", 1),
    ("[▶H.1]", 2, "#darkgreen"),
    ("[G.2-3]", 4),
    ("[◀F.3]", 6, "#darkgreen"),
    ("[▶I.1]", 7, "#darkgreen"),
    ("[G.4]", 8),
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
        (3, 4),
        (1, 4),
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
    baca.not_parts(
        baca.rehearsal_mark(
            "G",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "G",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.selectors.skip(8 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-six",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    library.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
)

commands(
    ("bfl", (4, 5)),
    library.sixteenths(
        [1, 1, -28, 1, 1],
        written_eighths=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.selectors.pleaf(1),
    ),
    baca.hairpin(
        "o<| mf |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
    ),
    baca.dynamic_text_x_offset(
        -2,
        baca.selectors.pleaf(3),
    ),
)

commands(
    ("bfl", 6),
    library.sixteenths(
        ["-", -2, 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("Ab3"),
    baca.dynamic("mf"),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(7, 8), (5, 8)])
    return result


commands(
    ("bfl", 7),
    library.sixteenths(
        [-4, 8, "-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=[-2, -1],
        invisible=[-1],
    ),
    baca.tuplet_bracket_up(),
    baca.pitch(
        "G3",
        baca.selectors.runs((None, 1)),
    ),
    baca.pitch(
        "Bb5",
        baca.selectors.runs((1, None)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves((-2, None)),
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((-2, None)),
    ),
)

commands(
    ("bfl", (6, 7)),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=baca.selectors.leaves((1, 8)),
    ),
)

commands(
    ("bfl", 8),
    library.sixteenths(
        [1, 1, "-"],
        written_eighths=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.selectors.pleaf(1),
    ),
)

commands(
    ("bfl", (7, 8)),
    baca.tuplet_bracket_staff_padding(6.5),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 11.5"),
        selector=baca.selectors.leaves((4, 9)),
    ),
)

commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(3),
    library.sixteenths(
        [-15, 1],
    ),
    baca.staff_position(2),
    baca.dynamic("mp"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(1),
    library.sixteenths(
        [1, -11],
    ),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 5)),
    baca.staff_lines(3),
    library.sixteenths(
        [1, -16, 1, "-"],
    ),
    baca.staff_position(2),
    baca.hairpin(
        "f mp",
        selector=baca.selectors.pleaves(),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 6),
    baca.staff_lines(1),
    library.sixteenths(
        [-19, 1],
    ),
    library.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 7),
    library.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    library.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("perc1", (6, 7)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 8),
    baca.staff_lines(3),
    library.sixteenths(
        [1, "-"],
    ),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

# perc2

commands(
    ("perc2", (1, 2)),
    library.sixteenths(
        [-4, "+"],
    ),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 5)),
    baca.make_notes(),
    baca.stem_tremolo(),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("perc2", 6),
    library.sixteenths(
        [16, "-", 1],
    ),
    baca.stem_tremolo(),
    baca.new(
        library.brake_drum_staff_position(),
        baca.damp(),
        baca.dynamic("mf"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc2", (4, 6)),
    baca.new(
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        selector=baca.selectors.run(0),
    ),
)

commands(
    ("perc2", 8),
    library.sixteenths(
        ["+"],
    ),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=baca.selectors.pleaves(rleak=True),
    ),
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
    ("perc2", (1, 8)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    library.whisk_staff_position(),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        left_broken=True,
    #        map=baca.selectors.clparts([3]),
    #        pieces=baca.selectors.clparts([1]),
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        left_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
    ),
)

commands(
    ("hp", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
        [6, 6],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=[0],
        invisible=[1],
    ),
    baca.pitch("<B5 C6 D6>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak padding 2.5"),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [2, -28, 2],
    ),
    library.whisk_staff_position(),
    baca.dynamic('"f"'),
    baca.dynamic(
        "mf",
        selector=baca.selectors.phead(-1),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("hp", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    library.sixteenths(
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.selectors.rleaves(),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (2, 4), (1, 8), (5, 8)])
    return result


commands(
    ("hp", 7),
    library.sixteenths(
        [-4, -4, 8, -2, -4, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 4, 0, -2],
        denominator=None,
        written_quarters=[-2, -1],
        invisible=[-1],
    ),
    baca.new(
        baca.pitch("<B5 C#6>"),
        baca.double_flageolet(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        ),
        baca.dls_staff_padding(4 + 2),
        selector=baca.selectors.pleaf(0),
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.whisk_staff_position(),
        baca.markup(r"\baca-whisk-markup"),
        selector=baca.selectors.pleaf(-2),
    ),
    #    baca.hairpin(
    #        'o< "f" >o',
    #        forbid_al_niente_to_bar_line=True,
    #        pieces=baca.selectors.lparts([1, 1]),
    #        selector=baca.selectors.leaves((-2, None)),
    #    ),
    baca.new(
        baca.dynamic('"f"'),
        baca.dls_staff_padding(6 + 2),
        selector=baca.selectors.pleaf(-2),
    ),
)

commands(
    ("hp", 8),
    library.sixteenths(
        [1, 1, "-"],
        written_eighths=[0, 1],
        invisible=[1],
        do_not_rewrite_meter=True,
    ),
    library.whisk_staff_position(),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        pieces=baca.selectors.lparts([1, 2]),
    #        selector=baca.selectors.leaves((None, 3)),
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6 + 2),
)

commands(
    ("hp", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=baca.selectors.leaves((5, 10)),
    ),
)

# va

commands(
    ("va", 1),
    library.appoggiato(
        counts=[5, 0, 0, 0, 0],
        divisions=[4, 12],
        extra_counts=[0, 8],
        prefix_counts=[0, 3],
        prefix_talea=[8, 4, 4],
        tie=[6],
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("va", 2),
    library.sixteenths(
        [4, "+"],
    ),
)

commands(
    ("va", (1, 2)),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_b_flat,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.espressivo(
        baca.selectors.pheads((1, None), grace=False),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((7, 12)),
    ),
)

commands(
    ("va", 4),
    library.appoggiato(
        counts=[4],
        fuse=True,
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=baca.selectors.leaf(0, grace=False),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


commands(
    ("va", 5),
    library.sixteenths(
        [6, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        tie=[0],
    ),
)

commands(
    ("va", 6),
    library.sixteenths(
        [4, 12, -4],
    ),
    baca.hairpin(
        "pp >o niente",
        selector=baca.selectors.leaves((1, 3)),
    ),
)

commands(
    ("va", (4, 6)),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat, -5),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=False,
        direction=abjad.DOWN,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.espressivo(
        baca.selectors.pheads((1, None), grace=False),
    ),
)

commands(
    ("va", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((2, 6)),
    ),
)

commands(
    ("va", (7, 8)),
    library.sixteenths(
        [-4, "+"],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", (1, 8)),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
)

# vc1

commands(
    ("vc1", 1),
    library.sixteenths(
        counts=[15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[0],
        invisible_pairs=True,
        tie=[0],
    ),
    baca.pitch("E4"),
    baca.hairpin(
        "f >o niente",
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding -1.5"),
        abjad.Tweak(r"- \tweak staff-padding 3.5"),
        autodetect_right_padding=False,
        left_broken=True,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc1", 2),
    baca.pitch("<C5 Db5 Eb5>"),
    baca.dynamic("p"),
)

commands(
    ("vc1", (4, 5)),
    library.appoggiato(
        divisions=[4, 4, 4, 4, 4, 4, 4, 4],
        counts=[4, 0, 0, 0, 0, 0, 0, 0],
    ),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat, -5 - 1),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 9"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.espressivo(
        baca.selectors.pheads((1, None), grace=False),
    ),
)

commands(
    ("vc1", 6),
    library.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("E4"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc1", 7),
    baca.pitch("B4"),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


commands(
    ("vc1", 8),
    library.sixteenths(
        [8, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    ),
    baca.pitch("Bb4"),
    baca.espressivo(
        baca.selectors.pheads((-4, None)),
    ),
    baca.dynamic("pp"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-4:]),
    ),
)

commands(
    ("vc1", (1, 8)),
    baca.dls_staff_padding(4),
)

# vc2

commands(
    ("vc2", 1),
    library.sixteenths(
        [-4, "+"],
    ),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 4"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
    ),
)

commands(
    ("vc2", 2),
    baca.clef("treble"),
    baca.pitch("<B4 C5 D5>"),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("vc2", (4, 5)),
    library.sixteenths(
        ["+"],
    ),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", 6),
    library.sixteenths(
        [-1, 2, "-"],
    ),
    baca.clef("treble"),
    baca.pitch("Eqf4"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", 7),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc2", 8),
    baca.make_repeat_tied_notes(),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        right_broken=True,
    ),
)

commands(
    ("vc2", (1, 8)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    library.sixteenths(
        [4, 4, 4, 4],
    ),
    baca.flat_glissando(
        "E1",
        left_broken=True,
    ),
    baca.hairpin(
        "ff >o",
        bookend=False,
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        left_broken=True,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("treble"),
    baca.pitch(
        "<C5 Db5 Eb5>",
        do_not_transpose=True,
    ),
    baca.dynamic("p"),
)

commands(
    ("cb1", (4, 5)),
    library.appoggiato(
        counts=[4],
        fuse=True,
    ),
    baca.pitch(
        "Bb3",
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat, -5 - 2),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
)

commands(
    ("cb1", 6),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.clef("bass"),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "mf > p",
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb1", 7),
    baca.note_head_style_harmonic(),
    baca.pitch("E3"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 8),
    library.sixteenths(
        [4, 4, 4, 4],
    ),
    baca.clef("treble"),
    baca.pitch(
        "Bb4",
        do_not_transpose=True,
    ),
    baca.espressivo(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
)

commands(
    ("cb1", (1, 8)),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 2)),
    library.sixteenths(
        [-4, "+"],
    ),
    baca.pitch("Bb2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", (4, 5)),
    library.sixteenths(
        ["+"],
    ),
    baca.pitch("Bb2"),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", 6),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "p < f",
    ),
    baca.scp_spanner(
        "T1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.lparts([2, 3]),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", 7),
    baca.pitch("A1"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 8),
    baca.make_repeat_tied_notes(),
    baca.pitch("Bb2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        right_broken=True,
    ),
)

commands(
    ("cb2", (1, 8)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1"], 2),
    library.sixteenths(
        [12],
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 7),
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