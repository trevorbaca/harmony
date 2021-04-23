import abjad
import baca

import harmony

###############################################################################
##################################### [F] #####################################
###############################################################################

stage_markup = (
    ("[F.1]", 1),
    ("[▶G.1]", 3, "#darkgreen"),
    ("[F.2]", 4),
    ("[▶G.1]", 5, "#darkgreen"),
    ("[F.3-4]", 6),
    ("[◀C.4]", 8, "#darkgreen"),
    ("[F.5-6]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *baca.tags.instrument_color_tags(),
        *baca.tags.margin_markup_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[2, 9],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
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
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "F",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "F",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(3 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(8 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-four",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(2 - 1),
        ),
    ),
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-five",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(9 - 1),
        ),
    ),
)

# bfl

maker(
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
        baca.runs()[:1],
    ),
    baca.pitch(
        "E5",
        baca.runs()[1:],
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.leaves()[-2:].rleak(),
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("E5"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("bfl", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[3:7].rleak(),
    ),
)

maker(
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
        baca.runs()[:1],
    ),
    baca.pitch(
        "E5",
        baca.runs()[1:],
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.leaves()[-2:].rleak(),
    ),
)

maker(
    ("bfl", 6),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("E5"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.clparts([1]),
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("bfl", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[3:7].rleak(),
    ),
)

maker(
    ("bfl", (3, 6)),
    baca.tuplet_bracket_up(),
)

maker(
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

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
)

maker(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

maker(
    ("bfl", (7, 8)),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

# perc1

maker(
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
        selector=baca.pleaves()[:1],
    ),
    baca.damp(
        baca.rest(0),
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
        selector=baca.pleaf(-1),
    ),
)

maker(
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

maker(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-3, 6, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.damp(
        baca.leaf_after_each_ptail(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
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

maker(
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

maker(
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

maker(
    ("perc1", 10),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mf",
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        ["-", 3, -4],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< f",
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("perc1", 15),
    harmony.sixteenths(
        ["-", 5, -1],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< ff",
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("perc1", (10, 15)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
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
        selector=baca.pleaves(),
    ),
    baca.damp(
        baca.rest(0),
    ),
)

maker(
    ("perc2", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc2", 4),
    harmony.sixteenths(
        [9, "-"],
    ),
    baca.damp(
        baca.leaf_after_each_ptail(),
    ),
    harmony.tam_tam_staff_position(),
    baca.dynamic("mp"),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
)

maker(
    ("perc2", (6, 7)),
    harmony.sixteenths(
        [-19, 1, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(
        baca.ptail(-1),
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(0.75).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (1, 7)),
    baca.dls_staff_padding(6),
)

maker(
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

maker(
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

maker(
    ("perc2", 11),
    harmony.sixteenths(
        ["-", 1, -1],
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc2", 14),
    harmony.sixteenths(
        ["-", 1, -2],
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc2", 15),
    harmony.sixteenths(
        ["-", 1, -5],
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc2", (10, 15)),
    baca.dls_staff_padding(6),
)

# hp

maker(
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
        baca.leaf_after_each_ptail(),
    ),
)

maker(
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

maker(
    ("hp", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [9, "-", 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(11, 16), (5, 16)]),
        extra_counts=[0, 1],
        written_quarters=([-2, -1],),
        invisible=([-1],),
        do_not_rewrite_meter=True,
    ),
    baca.pitch(
        "E1",
        baca.plt(0),
    ),
    baca.damp(
        baca.rest(0),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(
        7,
        baca.plt(0),
    ),
    baca.chunk(
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=baca.rest(-1),
        ),
        baca.new(
            harmony.whisk_staff_position(),
            selector=baca.pleaves()[-2:],
        ),
        baca.hairpin(
            'o< "f" >o',
            forbid_al_niente_to_bar_line=True,
            pieces=baca.selectors.clparts([1]),
            selector=baca.pleaves()[-2:],
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.tweak(8).staff_padding,
            literal=True,
            selector=baca.pleaf(-2),
        ),
    ),
)

maker(
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
        baca.leaves().lleak().lleak(),
    ),
)

maker(
    ("hp", (4, 5)),
    baca.tuplet_bracket_up(),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[4:8].rleak(),
    ),
)

maker(
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
        baca.ptails(),
    ),
    baca.dynamic("mf"),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
    baca.dls_staff_padding(4),
)

maker(
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

maker(
    ("hp", 8),
    harmony.sixteenths(
        [10, -2],
    ),
)

maker(
    ("hp", (7, 8)),
    baca.pitch("G1"),
    baca.new(
        baca.damp(
            baca.rest(-1),
            abjad.tweak(abjad.Down).direction,
        ),
        measures=7,
    ),
    baca.new(
        baca.damp(
            baca.rest(-1),
        ),
        measures=8,
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.tleaves().rleak().rleak(),
    ),
)

maker(
    ("hp", 10),
    baca.clef("treble"),
    harmony.sixteenths(
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

maker(
    ("hp", 11),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

maker(
    ("hp", (10, 11)),
    baca.pitches("F#4 G#4"),
)

maker(
    ("hp", 13),
    harmony.sixteenths(
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

maker(
    ("hp", 14),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

maker(
    ("hp", (10, 14)),
    baca.laissez_vibrer(
        baca.ptails(exclude=baca.const.HIDDEN),
    ),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("hp", (13, 14)),
    baca.pitches("F#4 G#4"),
)

maker(
    ("hp", (10, 14)),
    baca.hairpin(
        "mf f ff fff",
        bookend=False,
        pieces=baca.plts(exclude=baca.const.HIDDEN),
    ),
    baca.dls_staff_padding(4),
)

maker(
    ("hp", 15),
    harmony.sixteenths(
        ["-", 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(11, 16), (5, 16)]),
        extra_counts=[0, 1],
        written_quarters=([-2, -1],),
        invisible=([-1],),
        do_not_rewrite_meter=True,
    ),
    baca.tuplet_bracket_up(),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=baca.rest(-1),
    ),
    baca.new(
        harmony.whisk_staff_position(),
        selector=baca.pleaves()[-2:],
    ),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        forbid_al_niente_to_bar_line=True,
    #        pieces=baca.selectors.lparts([1, 1 + 1]),
    #        right_broken=True,
    #        selector=baca.pleaves()[-2:].rleak(),
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(
        6,
        baca.leaves()[-3:],
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(8).staff_padding,
        literal=True,
        selector=baca.pleaf(-2),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        right_broken=True,
        selector=baca.pleaves().rleak(),
    ),
)

# va

maker(
    ("va", 1),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("va", 3),
    harmony.appoggiato(
        counts=[9],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
    baca.pitch(
        "Bb3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat,
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak().rleak(),
    ),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        [8, "-", 2, -3],
        tie=([0],),
    ),
    baca.new(
        baca.pitch("Eb3"),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.runs()[-1:].rleak(),
    ),
    baca.dynamic(
        "f",
        selector=baca.phead(-1),
    ),
)

maker(
    ("va", 5),
    harmony.appoggiato(
        counts=[9],
    ),
    baca.pitch(
        "Bb3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat.rotate(-9),
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)

maker(
    ("va", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("va", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("va", 10),
    baca.clef("alto"),
    baca.staff_lines(5),
)

maker(
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
        selector=baca.plts()[-1:].rleak(),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs()[:-1],
        selector=baca.tleaves().rleak(),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs()[-1:],
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("va", [1, (6, 15)]),
    baca.pitch(
        "Eb3",
        baca.plts(exclude=baca.const.HIDDEN),
    ),
)

maker(
    ("va", (1, 15)),
    baca.dls_staff_padding(4),
)

# vc1

maker(
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
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc1", 3),
    harmony.appoggiato(
        counts=[7],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
    baca.pitch(
        "Bb3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat.rotate(-1),
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak().rleak(),
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        [8, "-", 2, -3],
        tie=([0],),
    ),
    baca.pitch(
        "E4",
        baca.plt(-1),
    ),
    baca.dynamic(
        "f",
        selector=baca.phead(-1),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.runs()[-1:].rleak(),
    ),
)

maker(
    ("vc1", 5),
    harmony.appoggiato(
        counts=[7],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
    baca.pitch(
        "Bb3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_flat.rotate(-1 - 7),
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc1", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
    ),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc1", (1, 7)),
    baca.dls_staff_padding(4),
)

maker(
    ("vc1", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -3, 1, "-"],
        extra_counts=[1],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("ppp"),
    baca.dls_staff_padding(6),
)

maker(
    ("vc1", 10),
    baca.clef("treble"),
    baca.staff_lines(5),
)

maker(
    ("vc1", (10, 15)),
    harmony.sixteenths(
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs()[:-1],
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs()[-1:],
        right_broken=True,
        selector=baca.tleaves().rleak(),
    ),
    baca.hairpin(
        "f >o niente",
        right_broken=True,
        selector=baca.plts()[-1:].rleak(),
    ),
    baca.dls_staff_padding(4),
)

maker(
    ("vc1", [1, (6, 7), (10, 15)]),
    baca.pitch(
        "E4",
        baca.plts(exclude=baca.const.HIDDEN),
    ),
)

# vc2

maker(
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
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc2", 3),
    baca.clef("bass"),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.dynamic("p"),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        [8, "-", 2, -3],
        tie=([0],),
    ),
    baca.clef(
        "treble",
        baca.phead(-1),
    ),
    baca.new(
        baca.pitch("Eqf4"),
        selector=baca.plt(-1),
    ),
    baca.dynamic(
        "f",
        selector=baca.phead(-1),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.runs()[-1:].rleak(),
    ),
)

maker(
    ("vc2", (3, 4)),
    baca.new(
        baca.pitch("B2"),
        baca.damp_spanner(
            abjad.tweak(3).staff_padding,
        ),
        selector=baca.runs()[:1].rleak(),
    ),
)

maker(
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

maker(
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
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
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
        map=baca.runs(),
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc2", (10, 15)),
    baca.clef("treble"),
    harmony.sixteenths(
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs()[:-1],
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs()[-1:],
        selector=baca.tleaves().rleak(),
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.plts()[-1:].rleak(),
    ),
)

maker(
    ("vc2", [1, (6, 7), (10, 15)]),
    baca.pitch(
        "Eqf4",
        baca.plts(exclude=baca.const.HIDDEN),
    ),
)

maker(
    ("vc2", (1, 15)),
    baca.dls_staff_padding(4),
)

# cb1

maker(
    ("cb1", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([2, 4]),
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.dynamic("p"),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        [8, "-", 5],
        tie=([0],),
    ),
    baca.note_head_style_harmonic(
        baca.pleaf(0),
    ),
)

maker(
    ("cb1", (3, 4)),
    baca.new(
        baca.pitch("Bb2"),
        baca.damp_spanner(
            abjad.tweak(3).staff_padding,
        ),
        selector=baca.runs()[:1].rleak(),
    ),
)

maker(
    ("cb1", (5, 7)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

maker(
    ("cb1", (4, 7)),
    baca.new(
        baca.flat_glissando("E1"),
        selector=baca.run(-1),
    ),
    baca.hairpin(
        "o< mf > p < f",
        pieces=baca.selectors.lparts([6, 5, 3, 2]),
        selector=baca.runs()[-1:].rleak(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1 -> P1",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.lparts([6, 5, 3, 2]),
        selector=baca.runs()[-1:].rleak(),
    ),
)

maker(
    ("cb1", (1, 7)),
    baca.dls_staff_padding(4),
)

maker(
    ("cb1", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "pp ppp",
        bookend=False,
        pieces=baca.plts(),
    ),
    baca.dls_staff_padding(6),
)

maker(
    ("cb1", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
)

maker(
    ("cb1", (10, 15)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.flat_glissando(
        "E1",
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o< mf > p < f > p < ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([1, 1, 1, 1, 1, 2]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 -> O -> T1 -> P2 -> T1 -> P1 -> T1",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.cmgroups([1]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.dls_staff_padding(4),
)

# cb2

maker(
    ("cb2", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([3, 3]),
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", 3),
    harmony.sixteenths(
        ["-", 4, 4, 4],
    ),
)

maker(
    ("cb2", (4, 7)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
)

maker(
    ("cb2", (3, 7)),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "o< mp > p < f",
        bookend=False,
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 2]),
        selector=baca.tleaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> O -> T1 -> P2 -> O",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.lparts([3, 4, 4, 2, 3, 5]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
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
        map=baca.runs(),
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("cb2", (10, 15)),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "o< f > p < ff >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 3]),
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 -> P2 -> T1 -> P1 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 1, 2]),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", (1, 15)),
    baca.dls_staff_padding(4),
)
