import abjad
import baca

import harmony

###############################################################################
##################################### [C] #####################################
###############################################################################

stage_markup = (
    ("[C.1]", 1),
    ("[▶D.1]", 2, "#darkgreen"),
    ("[▶F.3]", 4, "#darkgreen"),
    ("[C.2-4]", 6),
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
    fermata_measure_empty_overrides=[3, 5],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4),
        (3, 4),
        (1, 4),
        (5, 4),
        (1, 4),
        (5, 4),
        (4, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "C",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "C",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("4.=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(5 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-two",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(3 - 1),
        ),
    ),
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-three",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(5 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
    ),
)

maker(
    ("bfl", 2),
    harmony.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", (6, 8)),
    harmony.sixteenths(
        harmony.cerulean[2:],
    ),
    baca.pitch("F3"),
    baca.dynamic(
        "mf-sempre",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    harmony.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
    harmony.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("perc1", 2),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
    harmony.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(5.5),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (6, 8)),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, -2, -1],
    ),
    harmony.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        measures=6,
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "p < f",
        measures=8,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(5.5),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    ),
    harmony.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 2),
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
    ("perc2", (1, 2)),
    baca.dls_staff_padding(5.5),
)


maker(
    ("perc2", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(
        baca.ptail(-1),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (6, 8)),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_except=[0, 1, 4, -2, -1],
    ),
    harmony.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        measures=6,
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "p < f",
        measures=8,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(5 + 1).staff_padding,
        literal=True,
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, "-"],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
)

maker(
    ("hp", 2),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.pitch("C#4"),
    baca.dls_staff_padding(5),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [-2, 2, "-", 2],
    ),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (6, 8)),
    baca.clef("bass"),
    harmony.sixteenths(
        [18, -12, 16, -4],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.pheads(),
    ),
)

# va

maker(
    ("va", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
        extra_counts=[2],
        denominator=None,
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

maker(
    ("va", 2),
    harmony.tessera_1(
        4,
        gap=True,
    ),
    harmony.bridge_staff_position(),
)

maker(
    ("va", (1, 2)),
    baca.dls_staff_padding(6),
)

maker(
    ("va", 4),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("va", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[2:],
        extra_counts=[2],
        denominator=None,
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=baca.plts(),
    ),
    baca.dls_staff_padding(6),
)

# vc1

maker(
    ("vc1", 1),
    baca.clef("bass"),
    baca.skeleton(
        r"r4 \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
    baca.tuplet_number_text(
        abjad.Markup("5:4"),
        baca.leaf(1),
    ),
    baca.tuplet_bracket_up(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("mf"),
)

maker(
    ("vc1", 2),
    harmony.tessera_1(
        3,
        gap=True,
    ),
    baca.hairpin(
        "p mp",
        bookend=False,
        pieces=baca.plts()[1:],
    ),
)

maker(
    ("vc1", (1, 2)),
    baca.pitch("F#3"),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:9],
    ),
)

maker(
    ("vc1", 4),
    baca.clef("treble"),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("E4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("vc1", (1, 4)),
    baca.dls_staff_padding(4),
)

maker(
    ("vc1", (6, 7)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[2:],
        extra_counts=[1],
    ),
    baca.new(
        harmony.bridge_staff_position(),
        baca.dls_staff_padding(6),
        selector=baca.leaves().rleak().rleak().rleak(),
    ),
    baca.accent(
        baca.leaves().rleak().rleak().rleak().pheads(),
    ),
    baca.stem_tremolo(
        baca.leaves().rleak().rleak().rleak().pleaves(),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.hairpin(
        # '"ff" "f" mf mp p pp ppp ppp',
        '"f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=baca.plts(),
        selector=baca.leaves()[1:].rleak().rleak().rleak(),
    ),
)

maker(
    ("vc1", 8),
    baca.skeleton(
        r"\times 4/5 { c16 r8. c16 } \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
    baca.tuplet_number_text(
        abjad.Markup("5:4"),
        baca.leaves(),
    ),
    baca.new(
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        selector=baca.leaf(3),
    ),
    baca.staff_lines(
        5,
        baca.leaf(3),
    ),
    baca.new(
        baca.flag_extra_offset((-2, 0)),
        baca.note_head_extra_offset((-2, 0)),
        baca.script_extra_offset((-2, 0)),
        baca.stem_extra_offset((-2, 0)),
        baca.stem_tremolo_extra_offset((-2, 0)),
        selector=baca.leaf(2),
    ),
    baca.new(
        baca.tuplet_bracket_up(),
        baca.dls_staff_padding(4.5),
        selector=baca.leaves()[-5:],
    ),
    baca.pitch(
        "F#3",
        baca.leaves()[4:],
    ),
    baca.accent(
        baca.leaves()[4:].pheads(),
    ),
    baca.dynamic(
        "mf",
        selector=baca.selectors.phead(-2),
    ),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        right_broken=True,
        selector=baca.leaves()[4:].rleak(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[4:].rleak(),
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("vc2", 2),
    harmony.tessera_1(
        2,
        gap=True,
    ),
    baca.pitch("F3"),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("vc2", 4),
    baca.clef("treble"),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eqf4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("vc2", (6, 8)),
    baca.clef("bass"),
    harmony.sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.hairpin(
            "mf >o niente",
            selector=baca.leaves().rleak(),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            bookend=False,
            selector=baca.leaves().rleak(),
        ),
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
)

maker(
    ("vc2", (1, 8)),
    baca.dls_staff_padding(4),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    harmony.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(6),
    baca.rest_extra_offset(
        (-0.75, 0),
        baca.rest(-1),
    ),
)

maker(
    ("cb1", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        r"\baca-eleven-e",
        literal=True,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", 4),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf > p",
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("cb1", (2, 4)),
    baca.dls_staff_padding(4),
)

maker(
    ("cb1", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[2:],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "f" mf mp p pp ppp ppp',
        bookend=False,
        pieces=baca.plts(),
    ),
    baca.dls_staff_padding(6),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F#2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("cb2", 2),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", 4),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "p < f",
    ),
    baca.scp_spanner(
        "T1 -> P2 -> O",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.lparts([2, 3]),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", (6, 8)),
    harmony.sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.hairpin(
            "mf >o niente",
            selector=baca.leaves().rleak(),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            bookend=False,
            selector=baca.leaves().rleak(),
        ),
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
)

maker(
    ("cb2", (1, 8)),
    baca.dls_staff_padding(4),
)

# bfl, hp, va, vc2, cb1, cb2

maker(
    (["bfl", "hp", "va", "vc2", "cb1", "cb2"], 2),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "pp p mp mf f",
        bookend=False,
        pieces=baca.plts(),
    ),
)
