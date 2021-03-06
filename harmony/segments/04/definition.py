import abjad
import baca

import harmony

###############################################################################
##################################### [D] #####################################
###############################################################################

stage_markup = (
    ("[D.1-6]", 1),
    ("[D.7]", 8),
    ("[◀B.6]", 9, "#darkgreen"),
    ("[D.8]", 10),
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
    fermata_measure_empty_overrides=[7, 10],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "D",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "D",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(9 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(9 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(7 - 1)),
    baca.global_fermata("short", baca.selectors.rest(10 - 1)),
)

# bfl

maker(
    ("bfl", (1, 6)),
    harmony.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", 8),
    harmony.tessera_1(
        6,
        advance=72,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", 9),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        baca.selectors.plts(([0, 1], 3)),
    ),
    baca.hairpin(
        "o<| ff |> p",
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
)

maker(
    ("bfl", 11),
    harmony.tessera_1(
        6,
        advance=72 + 12,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", (1, 11)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", (1, 6)),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
    baca.new(
        harmony.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=baca.selectors.tleaves(),
        ),
        measures=(1, 2),
    ),
    baca.new(
        harmony.purpleheart_staff_positions([0, 2, 0, 2, 2]),
        baca.hairpin(
            "p < f",
            selector=baca.selectors.tleaves(),
        ),
        measures=(5, 6),
    ),
)

maker(
    ("perc1", 9),
    harmony.appoggiato(
        counts=[7],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([-2]),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", (1, 11)),
    baca.dls_staff_padding(5.5),
)

# perc2

maker(
    ("perc2", 1),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
    harmony.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("perc2", (5, 6)),
    harmony.train(
        [2],
        rest_leaves=[0],
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.hairpin(
        "p < f",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("perc2", 8),
    harmony.train(
        [2],
        rest_leaves=[0, 1, 2],
    ),
    baca.dynamic("p-sub"),
)

maker(
    ("perc2", 9),
    harmony.sixteenths(
        [4, 4, "-"],
    ),
)

maker(
    ("perc2", (8, 9)),
    harmony.purpleheart_staff_positions([2]),
    baca.metric_modulation_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

maker(
    ("perc2", 11),
    harmony.sixteenths(
        [-6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
    harmony.purpleheart_staff_positions([0]),
    baca.dynamic("f-sub"),
    baca.metric_modulation_spanner(
        abjad.tweak(3).staff_padding,
        right_broken=True,
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

maker(
    ("perc2", (1, 11)),
    baca.dls_staff_padding(5.5),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.pitch("C#4"),
)

maker(
    ("hp", 8),
    harmony.tessera_1(
        5,
        advance=72,
    ),
    baca.pitch("C#4"),
)

maker(
    ("hp", 9),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "p < ff > p",
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 11),
    harmony.tessera_1(
        5,
        advance=72 + 12,
    ),
    baca.pitch("C#4"),
)

maker(
    ("hp", (1, 11)),
    baca.dls_staff_padding(4),
)

# va

maker(
    ("va", (1, 6)),
    harmony.tessera_1(
        4,
        gap=True,
    ),
)

maker(
    ("va", 8),
    harmony.tessera_1(
        4,
        advance=72,
        gap=True,
    ),
)

maker(
    ("va", 9),
    baca.clef("alto"),
    baca.staff_lines(5),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-27 - 21),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.dls_staff_padding(
        4,
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

maker(
    ("va", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.tessera_1(
        4,
        advance=72 + 12,
        gap=True,
    ),
)

maker(
    ("va", [(1, 6), 8, 11]),
    harmony.bridge_staff_position(),
)

maker(
    ("va", [(1, 8), 11]),
    baca.dls_staff_padding(6),
)

# vc1

maker(
    ("vc1", (1, 6)),
    harmony.tessera_1(
        3,
        gap=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

maker(
    ("vc1", 8),
    harmony.tessera_1(
        3,
        advance=72,
        gap=True,
    ),
)

maker(
    ("vc1", [(1, 8), 11]),
    baca.pitch("F#3"),
)

maker(
    ("vc1", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-19 - 21),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

maker(
    ("vc1", 11),
    baca.clef("bass"),
    harmony.tessera_1(
        3,
        advance=72 + 12,
        gap=True,
    ),
)

maker(
    ("vc1", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc2

maker(
    ("vc2", (1, 6)),
    harmony.tessera_1(
        2,
        gap=True,
    ),
)

maker(
    ("vc2", 8),
    harmony.tessera_1(
        2,
        advance=72,
        gap=True,
    ),
)

maker(
    ("vc2", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-18 - 21),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

maker(
    ("vc2", 11),
    baca.clef("bass"),
    harmony.tessera_1(
        2,
        advance=72 + 12,
        gap=True,
    ),
)

maker(
    ("vc2", [(1, 8), 11]),
    baca.pitch("F3"),
)

maker(
    ("vc2", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc1, vc2

maker(
    (["vc1", "vc2"], [(1, 6), 8, 11]),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).ltleaves().rleak(grace=False),
    ),
)

# cb1

maker(
    ("cb1", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
)

maker(
    ("cb1", 8),
    harmony.tessera_1(
        1,
        advance=72,
    ),
)

maker(
    ("cb1", 9),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-32 - 21),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.dls_staff_padding(
        6,
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

maker(
    ("cb1", 11),
    harmony.tessera_1(
        1,
        advance=72 + 12,
    ),
)

maker(
    ("cb1", [(1, 6), 8, 11]),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves().rleak(grace=False),
    ),
    baca.markup(
        r"\baca-eleven-e",
        literal=True,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", [(1, 8), 11]),
    baca.dls_staff_padding(4),
)

# cb2

maker(
    ("cb2", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves().rleak(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(2.5).X_offset,
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", 8),
    baca.make_notes(),
)

maker(
    ("cb2", 9),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
    ),
)

maker(
    ("cb2", (8, 9)),
    baca.clef("bass"),
    baca.pitch("Ab1"),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("cb2", 11),
    baca.make_notes(),
    baca.flat_glissando(
        "E1",
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< f",
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("cb2", (1, 11)),
    baca.dls_staff_padding(4),
)

# cb1, cb2

maker(
    ("cb1", [(1, 6), 8, 11]),
    baca.note_head_style_harmonic(),
)

maker(
    ("cb2", (1, 6)),
    baca.note_head_style_harmonic(),
)

# bfl, hp, va, vc1, vc2, cb1, cb2

maker(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [(1, 6), 8, 11]),
    baca.accent(
        baca.selectors.pheads(),
    ),
)

maker(
    ("cb2", (1, 6)),
    baca.accent(
        baca.selectors.pheads(),
    ),
)

maker(
    (["bfl", "hp", "cb1", "cb2"], (1, 3)),
    baca.hairpin(
        "pp p mp mf f",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

maker(
    (["bfl", "hp", "cb1", "cb2"], (4, 6)),
    baca.hairpin(
        "mf mp p pp pp pp",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

maker(
    (["va", "vc2"], (1, 3)),
    baca.hairpin(
        'pp p mp mf "f"',
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

maker(
    ("vc1", (1, 3)),
    baca.hairpin(
        'p mp mf "f"',
        bookend=False,
        pieces=baca.selectors.plts((1, None)),
    ),
)

maker(
    (["va", "vc1", "vc2"], (4, 6)),
    baca.hairpin(
        "mf mp p pp pp pp",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

maker(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [8, 11]),
    baca.dynamic("pp"),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1"], 9),
    harmony.appoggiato(
        counts=[7],
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 9),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
)
