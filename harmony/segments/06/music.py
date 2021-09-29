import abjad
import baca

from harmony import library as harmony

#########################################################################################
######################################### 06 [F] ########################################
#########################################################################################

stage_markup = (
    ("[F.1]", 1),
    ("[▶G.1]", 3, "#darkgreen"),
    ("[F.2]", 4),
    ("[▶G.1]", 5, "#darkgreen"),
    ("[F.3-4]", 6),
    ("[◀C.4]", 8, "#darkgreen"),
    ("[F.5-6]", 10),
)

score = harmony.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
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
    voice_abbreviations=harmony.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "F",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "F",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(10 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.selectors.skip(10 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(2 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(9 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-four",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(2 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-five",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(9 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 3),
    harmony.sixteenths(
        [2, 2, -6, 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch(
        "Bb5",
        baca.selectors.runs((None, 1)),
    ),
    baca.pitch(
        "E5",
        baca.selectors.runs((1, None)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((-2, None), rleak=True),
    ),
)

commands(
    ("bfl", 4),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("E5"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("bfl", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((3, 7), rleak=True),
    ),
)

commands(
    ("bfl", 5),
    harmony.sixteenths(
        [2, 2, -6, 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch(
        "Bb5",
        baca.selectors.runs((None, 1)),
    ),
    baca.pitch(
        "E5",
        baca.selectors.runs((1, None)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((-2, None), rleak=True),
    ),
)

commands(
    ("bfl", 6),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("E5"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("bfl", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((3, 7), rleak=True),
    ),
)

commands(
    ("bfl", (3, 6)),
    baca.tuplet_bracket_up(),
)

commands(
    ("bfl", 7),
    harmony.sixteenths(
        [-6, -4, 1, -5, 1, -1],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(3, 8), (5, 8)]),
        extra_counts=[0, 2],
        denominator=None,
    ),
)

commands(
    ("bfl", 8),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
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
        abjad.tweak(5.5).staff_padding,
    ),
)

# perc1

commands(
    ("perc1", 1),
    harmony.sixteenths(
        [16, "-", 1],
    ),
    baca.new(
        harmony.triangle_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(),
        selector=baca.selectors.pleaves((None, 1)),
    ),
    baca.damp(
        baca.selectors.rest(0),
    ),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.damp(),
        baca.dynamic("mp"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.tweak(1).self_alignment_X,
            abjad.tweak(6).staff_padding,
            literal=True,
        ),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc1", 3),
    baca.staff_lines(3),
    harmony.sixteenths(
        [-15, 1],
    ),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.75).self_alignment_X,
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-3, 6, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 5),
    baca.staff_lines(3),
    harmony.sixteenths(
        [-15, 1],
    ),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.75).self_alignment_X,
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        ["-", 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(0.75).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 8),
    baca.staff_lines(3),
    harmony.phjc(
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    ),
    harmony.purpleheart_staff_positions([-2, 0, -2, 0, 0]),
    baca.dynamic("f"),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 10),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 11),
    harmony.sixteenths(
        ["-", 3, -4],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< f",
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("perc1", 15),
    harmony.sixteenths(
        ["-", 5, -1],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< ff",
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("perc1", (10, 15)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    harmony.sixteenths(
        [16, "-"],
    ),
    baca.new(
        harmony.tam_tam_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(),
        selector=baca.selectors.pleaves(),
    ),
    baca.damp(
        baca.selectors.rest(0),
    ),
)

commands(
    ("perc2", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

commands(
    ("perc2", 4),
    harmony.sixteenths(
        [9, "-"],
    ),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    harmony.tam_tam_staff_position(),
    baca.dynamic("mp"),
)

commands(
    ("perc2", 5),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("p"),
)

commands(
    ("perc2", (6, 7)),
    harmony.sixteenths(
        [-19, 1, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(
        baca.selectors.ptail(-1),
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(0.75).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (1, 7)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 8),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    ),
    harmony.purpleheart_staff_positions([-2, 0, 0, -2, 0]),
    baca.dynamic("f"),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 10),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 11),
    harmony.sixteenths(
        ["-", 1, -1],
    ),
    harmony.brake_drum_staff_position(),
)

commands(
    ("perc2", 14),
    harmony.sixteenths(
        ["-", 1, -2],
    ),
    harmony.brake_drum_staff_position(),
)

commands(
    ("perc2", 15),
    harmony.sixteenths(
        ["-", 1, -5],
    ),
    harmony.brake_drum_staff_position(),
)

commands(
    ("perc2", (10, 15)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [-10, 6, "-"],
    ),
    baca.pitch("E1"),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
)

commands(
    ("hp", 3),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("hp", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [9, "-", 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(11, 16), (5, 16)]),
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    ),
    baca.pitch(
        "E1",
        baca.selectors.plt(0),
    ),
    baca.damp(
        baca.selectors.rest(0),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(
        7,
        baca.selectors.plt(0),
    ),
    baca.chunk(
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=baca.selectors.rest(-1),
        ),
        baca.new(
            harmony.whisk_staff_position(),
            selector=baca.selectors.pleaves((-2, None)),
        ),
        baca.hairpin(
            'o< "f" >o',
            forbid_al_niente_to_bar_line=True,
            pieces=baca.selectors.clparts([1]),
            selector=baca.selectors.pleaves((-2, None)),
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.tweak(8).staff_padding,
            literal=True,
            selector=baca.selectors.pleaf(-2),
        ),
    ),
)

commands(
    ("hp", 5),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dls_staff_padding(
        6,
        lambda _: baca.Selection(_).leaves().lleak().lleak(),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.tuplet_bracket_up(),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((4, 8), rleak=True),
    ),
)

commands(
    ("hp", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mf"),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", 7),
    baca.clef("bass"),
    harmony.sixteenths(
        ["-", 9, -2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(3, 8), (5, 8)]),
        extra_counts=[0, 2],
        denominator=None,
    ),
)

commands(
    ("hp", 8),
    harmony.sixteenths(
        [10, -2],
    ),
)

commands(
    ("hp", (7, 8)),
    baca.pitch("G1"),
    baca.new(
        baca.damp(
            baca.selectors.rest(-1),
            abjad.tweak(abjad.Down).direction,
        ),
        measures=7,
    ),
    baca.new(
        baca.damp(
            baca.selectors.rest(-1),
        ),
        measures=8,
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).tleaves().rleak().rleak(),
    ),
)

commands(
    ("hp", 10),
    baca.clef("treble"),
    harmony.sixteenths(
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 11),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", (10, 11)),
    baca.pitches("F#4 G#4"),
)

commands(
    ("hp", 13),
    harmony.sixteenths(
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 14),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", (10, 14)),
    baca.laissez_vibrer(
        baca.selectors.ptails(exclude=baca.const.HIDDEN),
    ),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.selectors.rleaves(),
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
        pieces=baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", 15),
    harmony.sixteenths(
        ["-", 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(11, 16), (5, 16)]),
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    ),
    baca.tuplet_bracket_up(),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=baca.selectors.rest(-1),
    ),
    baca.new(
        harmony.whisk_staff_position(),
        selector=baca.selectors.pleaves((-2, None)),
    ),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        forbid_al_niente_to_bar_line=True,
    #        pieces=baca.selectors.lparts([1, 1 + 1]),
    #        right_broken=True,
    #        selector=baca.selectors.pleaves((-2, None), rleak=True),
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves((-3, None)),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(8).staff_padding,
        literal=True,
        selector=baca.selectors.pleaf(-2),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        right_broken=True,
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

# va

commands(
    ("va", 1),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("va", 3),
    harmony.appoggiato(
        counts=[9],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=lambda _: baca.Selection(_).tleaves(grace=False).rleak().rleak(),
    ),
)

commands(
    ("va", 4),
    harmony.sixteenths(
        [8, "-", 2, -3],
        tie=[0],
    ),
    baca.new(
        baca.pitch("Eb3"),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.runs((-1, None), rleak=True),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.phead(-1),
    ),
)

commands(
    ("va", 5),
    harmony.appoggiato(
        counts=[9],
    ),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat.rotate(-9),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
)

commands(
    ("va", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
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
    harmony.sixteenths(
        [-5, 2, -5, 3, -10, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.plts((-1, None), rleak=True),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs((None, -1)),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs((-1, None)),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("va", [1, (6, 15)]),
    baca.pitch(
        "Eb3",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
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
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc1", 3),
    harmony.appoggiato(
        counts=[7],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat.rotate(-1),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=lambda _: baca.Selection(_).tleaves(grace=False).rleak().rleak(),
    ),
)

commands(
    ("vc1", 4),
    harmony.sixteenths(
        [8, "-", 2, -3],
        tie=[0],
    ),
    baca.pitch(
        "E4",
        baca.selectors.plt(-1),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.phead(-1),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.runs((-1, None), rleak=True),
    ),
)

commands(
    ("vc1", 5),
    harmony.appoggiato(
        counts=[7],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
    baca.pitch(
        "Bb3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat.rotate(-1 - 7),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("vc1", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
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
    harmony.sixteenths(
        [1, -3, 1, "-"],
        extra_counts=[1],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
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
    harmony.sixteenths(
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs((None, -1)),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs((-1, None)),
        right_broken=True,
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.hairpin(
        "f >o niente",
        right_broken=True,
        selector=baca.selectors.plts((-1, None), rleak=True),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", [1, (6, 7), (10, 15)]),
    baca.pitch(
        "E4",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("treble"),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", 3),
    baca.clef("bass"),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.dynamic("p"),
)

commands(
    ("vc2", 4),
    harmony.sixteenths(
        [8, "-", 2, -3],
        tie=[0],
    ),
    baca.clef(
        "treble",
        baca.selectors.phead(-1),
    ),
    baca.new(
        baca.pitch("Eqf4"),
        selector=baca.selectors.plt(-1),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.phead(-1),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.runs((-1, None), rleak=True),
    ),
)

commands(
    ("vc2", (3, 4)),
    baca.new(
        baca.pitch("B2"),
        baca.damp_spanner(
            abjad.tweak(3).staff_padding,
        ),
        selector=baca.selectors.runs((None, 1), rleak=True),
    ),
)

commands(
    ("vc2", 5),
    baca.clef("bass"),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("vc2", (6, 7)),
    baca.clef("treble"),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", 8),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", (10, 15)),
    baca.clef("treble"),
    harmony.sixteenths(
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs((None, -1)),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs((-1, None)),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.plts((-1, None), rleak=True),
    ),
)

commands(
    ("vc2", [1, (6, 7), (10, 15)]),
    baca.pitch(
        "Eqf4",
        baca.selectors.plts(exclude=baca.const.HIDDEN),
    ),
)

commands(
    ("vc2", (1, 15)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([2, 4]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("cb1", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.dynamic("p"),
)

commands(
    ("cb1", 4),
    harmony.sixteenths(
        [8, "-", 5],
        tie=[0],
    ),
    baca.note_head_style_harmonic(
        baca.selectors.pleaf(0),
    ),
)

commands(
    ("cb1", (3, 4)),
    baca.new(
        baca.pitch("Bb2"),
        baca.damp_spanner(
            abjad.tweak(3).staff_padding,
        ),
        selector=baca.selectors.runs((None, 1), rleak=True),
    ),
)

commands(
    ("cb1", (5, 7)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

commands(
    ("cb1", (4, 7)),
    baca.new(
        baca.flat_glissando("E1"),
        selector=baca.selectors.run(-1),
    ),
    baca.hairpin(
        "o< mf > p < f",
        pieces=baca.selectors.lparts([6, 5, 3, 2]),
        selector=baca.selectors.runs((-1, None), rleak=True),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1 -> P1",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.lparts([6, 5, 3, 2]),
        selector=baca.selectors.runs((-1, None), rleak=True),
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
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "pp ppp",
        bookend=False,
        pieces=baca.selectors.plts(),
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
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.flat_glissando(
        "E1",
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< mf > p < f > p < ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([1, 1, 1, 1, 1, 2]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> O -> T1 -> P2 -> T1 -> P1 -> T1",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.cmgroups([1]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([3, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("cb2", 3),
    harmony.sixteenths(
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
    ("cb2", (3, 7)),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "o< mp > p < f",
        bookend=False,
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 2]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> O -> T1 -> P2 -> O",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.lparts([3, 4, 4, 2, 3, 5]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb2", 8),
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb2", (10, 15)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "o< f > p < ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> P2 -> T1 -> P1 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 2]),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", (1, 15)),
    baca.dls_staff_padding(4),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(
        commands,
        **baca.segment_interpretation_defaults(),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        global_rests_in_every_staff=True,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        fermata_measure_empty_overrides=[2, 9],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        score=score,
        stage_markup=stage_markup,
        transpose_score=True,
    )
