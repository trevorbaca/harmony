import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [E] #####################################
###############################################################################

stage_markup = (
    ("[▶F.3]", 1, "#darkgreen"),
    ("[◀C.4]", 2, "#darkgreen"),
    ("[◀D.1]", 3, "#darkgreen"),
    ("[E.1-2]", 4),
)

maker = baca.SegmentMaker(
    **baca.segments(),
    activate=[
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *baca.tags.instrument_color_tags(),
        *baca.tags.margin_markup_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    parts_metric_modulation_multiplier=(0.525, 0.525),
    score_template=harmony.ScoreTemplate(),
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4),
        (3, 4),
        (3, 4),
        (6, 4),
        (6, 4),
    ],
    transpose_score=True,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "E",
            baca.selectors.skip(4 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "E",
            baca.selectors.skip(4 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(4 - 1)),
)

# bfl

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("bfl", 3),
    harmony.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
    baca.hairpin(
        "pp p",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [1, 1, "-"],
    ),
    baca.pitch("F3"),
    baca.note_head_style_harmonic(),
    baca.dynamic("ff"),
    baca.markup(
        r"\baca-jet-whistle-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [-3, 1, 1, "-"],
    ),
    baca.pitch("E3"),
    baca.note_head_style_harmonic(),
    baca.dynamic(
        "ff-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-jet-whistle-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6 + 1),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak(7).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    ),
    harmony.purpleheart_staff_positions([-2, 0, -2, 0, 0]),
    baca.hairpin(
        "p < f",
        selector=baca.selectors.tleaves(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5 + 1).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 3),
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
    ("perc1", (2, 3)),
    baca.dls_staff_padding(5.5),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 5),
    harmony.sixteenths(
        [-3, "+"],
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.selectors.pleaves((1, None), rleak=True),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-triangle-small-beater-markup",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, 4, "-", 1],
    ),
    baca.staff_lines(
        1,
        baca.selectors.leaf(2),
    ),
    baca.new(
        harmony.purpleheart_staff_positions([0]),
        selector=baca.selectors.leaves((None, 2)),
    ),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.accent(),
        baca.damp(),
        baca.dynamic("mf"),
        baca.dls_staff_padding(6 + 1),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.tweak(1).self_alignment_X,
            abjad.tweak(6 + 1).staff_padding,
            literal=True,
        ),
        selector=baca.selectors.pleaf(-1),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        left_broken=True,
        selector=baca.selectors.runs((None, 1), rleak=True),
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    ),
    harmony.purpleheart_staff_positions([-2, 0, 0, -2, 0]),
    baca.hairpin(
        "p < f",
        selector=baca.selectors.tleaves(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5 + 1).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 3),
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
    ("perc2", (2, 3)),
    baca.dls_staff_padding(5.5),
)

maker(
    ("perc2", 4),
    baca.staff_lines(1),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        [-3, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.selectors.pleaves((1, None), rleak=True),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [-2, 2, "-", 2],
    ),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
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
    ("hp", 2),
    baca.clef("bass"),
    baca.clef_whiteout(2),
    harmony.sixteenths(
        [10, -2],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
)

maker(
    ("hp", 3),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.pitch("C#4"),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "pp p",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(4),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [4, 4, 8],
        fuse=True,
        do_not_rewrite_meter=True,
        after_graces=[1],
    ),
    baca.pitches("F4 D4 A4 G3 B3 E3"),
    baca.glissando(),
    baca.hairpin(
        '"f" >o niente',
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-tuning-key-glissando-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(6.5),
)

maker(
    ("hp", 5),
    harmony.sixteenths(
        ["-", 12, -8],
    ),
    baca.pitch("Eb4"),
    baca.damp(
        baca.selectors.rest(-1),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
)

# va

maker(
    ("va", 1),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("va", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("va", 3),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-4, 3, -1, 3, -1, 3, -1],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
    baca.dynamic("mf"),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        [3, -1, 3, -1, "-"],
    ),
)

maker(
    ("va", (3, 4)),
    baca.pitch("F3"),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((1, 12)),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((1, 12)),
    ),
)

maker(
    ("va", 5),
    harmony.sixteenths(
        [6, -2, -8, 6, -2],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("va", (1, 5)),
    baca.dls_staff_padding(4),
)

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.clef("treble"),
    baca.pitch("E4"),
    baca.dynamic("f"),
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
    ("vc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -3, 1, -2, 3, -1, 3, -1],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (2, 4)]),
        extra_counts=[1, 2],
        denominator=None,
    ),
    baca.new(
        harmony.bridge_staff_position(),
        baca.accent(),
        baca.stem_tremolo(),
        selector=baca.selectors.pleaves((None, 2)),
    ),
    baca.dynamic("ppp"),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves((None, 3)),
    ),
    baca.new(
        baca.flag_extra_offset((-2, 0)),
        baca.note_head_extra_offset((-2, 0)),
        baca.script_extra_offset((-2, 0)),
        baca.stem_extra_offset((-2, 0)),
        baca.stem_tremolo_extra_offset((-2, 0)),
        selector=baca.selectors.leaf(2),
    ),
    baca.new(
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        baca.staff_lines(5),
        selector=baca.selectors.leaf(3),
    ),
)

maker(
    ("vc1", 3),
    harmony.tessera_1(
        3,
        gap=True,
    ),
    baca.hairpin(
        "p mp",
        bookend=False,
        pieces=baca.selectors.plts((1, None)),
    ),
)

maker(
    ("vc1", (2, 3)),
    baca.new(
        baca.pitch("F#3"),
        baca.accent(),
        selector=baca.selectors.pheads((2, None)),
    ),
    baca.dynamic(
        "mf",
        selector=baca.selectors.pleaf(2),
    ),
    baca.tuplet_bracket_up(
        baca.selectors.leaves((3, None)),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((4, 11)),
    ),
    baca.damp_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((4, None), rleak=True),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves((4, -1)),
    ),
)

maker(
    ("vc1", (4, 5)),
    harmony.sixteenths(
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    ),
    # TODO: promote into rhythm
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.staff_positions(
        [2, 3, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 8],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.dls_staff_padding(
        5.5,
        baca.selectors.leaves(lleak=True),
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("treble"),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eqf4"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("vc2", 2),
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.clef("bass"),
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
    baca.new(
        baca.hairpin("mf >o niente"),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("vc2", 3),
    harmony.tessera_1(
        2,
        gap=True,
    ),
    baca.pitch("F3"),
    baca.accent(),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", (1, 3)),
    baca.dls_staff_padding(4),
)

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths(
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    ),
    # TODO: promote into rhythm
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.staff_positions(
        [2, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 3, 8],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.dls_staff_padding(5.5),
)

# cb1

maker(
    ("cb1", 1),
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
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("cb1", 2),
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

maker(
    ("cb1", 3),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "pp p mp",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.plts((None, -1)),
    ),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        r"\baca-eleven-e",
        literal=True,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1).padding,
        abjad.tweak(2.5).X_offset,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        [15, 1, 1, 1, 6, 1, 1, 1, 12, 1, 1, 1, "+"],
    ),
    # TODO: promote into rhythm
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.staff_positions(
        [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.dls_staff_padding(
        5.5,
        baca.selectors.leaves(lleak=True),
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.flat_glissando(
        "E1",
        left_broken=True,
    ),
    baca.hairpin(
        "o< f",
        left_broken=True,
    ),
    baca.scp_spanner(
        "(T1) -> P2 -> O",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.lparts([2, 3]),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("cb2", 2),
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
    baca.new(
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.tweak(5.5).staff_padding,
            autodetect_right_padding=False,
        ),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("cb2", 3),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "pp p",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1).padding,
        literal=True,
    ),
)

maker(
    ("cb2", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        [11, 1, 1, 1, 11, 1, 1, 1, 7, 1, 1, 1, "+"],
    ),
    # TODO: promote into rhythm
    baca.untie(
        baca.selectors.pleaves(),
    ),
    baca.staff_positions(
        [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
    ),
    baca.glissando(
        allow_repeats=True,
    ),
)

maker(
    ("cb2", (1, 5)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb2, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.hairpin(
        '! o< "f"',
        measures=4,
    ),
    baca.hairpin(
        '"f" >o niente',
        measures=5,
        selector=baca.selectors.rleaves(),
    ),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(maker, runtime=baca.segments(runtime=True))
