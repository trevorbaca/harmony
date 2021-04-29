import abjad
import baca

import harmony

###############################################################################
##################################### [R] #####################################
###############################################################################

stage_markup = (
    ("[R.1-2]", 1),
    ("[▶S.1]", 3, "#darkgreen"),
    ("[◀P.7-8]", 4, "#darkgreen"),
    ("[◀Q.1]", 6, "#darkgreen"),
    ("[R.3]", 8),
    ("[R.4-6]", 9),
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
    fermata_measure_empty_overrides=[7],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (6, 4),
        (1, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "R",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "R",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(7 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-seventeen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(7 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 3),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-4),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((3, 4)),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.pitch("D4"),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [-4, 8],
    ),
)

maker(
    ("bfl", 6),
    harmony.sixteenths(
        [4, 4, "-"],
    ),
)

maker(
    ("bfl", (5, 6)),
    baca.pitch("D4"),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.runs((None, 1), rleak=True),
    ),
)

maker(
    ("bfl", (1, 6)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.phead(1),
    ),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.pleaves((1, None), rleak=True),
    ),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mp"),
    baca.laissez_vibrer(
        baca.selectors.phead(1),
    ),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.pleaves((1, None), rleak=True),
    ),
)

maker(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc1", 3),
    baca.clef("percussion"),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(2),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(2, grace=False),
    ),
)

maker(
    ("perc1", (4, 5)),
    baca.staff_lines(1),
    harmony.sixteenths(
        [21, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.flat_glissando(
        do_not_hide_middle_note_heads=True,
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.make_notes(),
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.pleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

maker(
    ("perc1", 10),
    harmony.tuplet(
        [(1, -1, -8)],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

maker(
    ("perc1", (8, 11)),
    baca.tuplet_bracket_up(),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("p"),
    baca.dynamic(
        "f",
        selector=baca.selectors.phead(1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.chunk(
        baca.dynamic("p"),
        baca.damp(),
    ),
    baca.new(
        baca.laissez_vibrer(),
        baca.dynamic("f"),
        selector=baca.selectors.phead(1),
    ),
)

maker(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc2", 3),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(2),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(2, grace=False),
    ),
)

maker(
    ("perc2", (4, 5)),
    baca.staff_lines(1),
    harmony.sixteenths(
        [21, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 6),
    baca.make_notes(),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (4, 10)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc2", 11),
    baca.staff_lines(3),
    harmony.sixteenths(
        ["-", 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    harmony.purpleheart_staff_positions([0]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5 + 1).staff_padding,
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        right_broken=True,
        selector=baca.selectors.runs((-1, None), rleak=True),
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], 3),
    baca.new(
        baca.dots_extra_offset((2, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=harmony.rests_filter_duration((">=", (1, 2))),
    ),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [-4, 2, "-"],
    ),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        [-2, 2, "-"],
    ),
)

maker(
    ("hp", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        [21, "-"],
    ),
    baca.pitch("F1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(7),
)

maker(
    ("hp", 6),
    baca.make_notes(),
    baca.pitch("Db1"),
    baca.ottava_bassa(),
    baca.laissez_vibrer(),
    baca.ottava_bracket_staff_padding(8),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
)

maker(
    ("hp", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
)

maker(
    ("hp", [(1, 2), 8]),
    baca.clef("treble"),
    baca.pitch("G4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 9),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("hp", [9, 10, 11]),
    harmony.sixteenths(
        [3, 3, "-"],
        untie=True,
    ),
    harmony.whisk_staff_position(),
    baca.flat_glissando(),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=baca.selectors.lparts([1, 2 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
        match=0,
    ),
)

maker(
    ("hp", (9, 11)),
    baca.dls_staff_padding(6),
)

# va

maker(
    ("va", (1, 2)),
    baca.pitch("C3"),
    baca.rest_extra_offset(
        (-1.5, 0),
        baca.selectors.rest(-1),
    ),
)

maker(
    ("va", 3),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
)

maker(
    ("va", (4, 5)),
    harmony.sixteenths(
        harmony.glissando_counts_curtailed,
    ),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(1.5).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("va", 6),
    baca.make_notes(),
    baca.pitch("D4"),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", 8),
    baca.clef("alto"),
    baca.pitch("C3"),
)

maker(
    ("va", (9, 11)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("G4"),
    baca.flat_glissando(
        selector=baca.selectors.leaves((None, -1)),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

# vc1

maker(
    ("vc1", (1, 2)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("vc1", 3),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("vc1", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        harmony.damp_counts_curtailed,
    ),
    baca.pitch("D#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("vc1", 6),
    harmony.tessera_2(
        3,
        rest_plts=[0],
    ),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("vc1", 8),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("vc1", (9, 11)),
    harmony.sixteenths(
        [3, -7],
    ),
    baca.clef("bass"),
    baca.pitch("D3"),
    baca.hairpin(
        "mp -- niente",
        map=baca.selectors.rleak_runs(),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
    baca.markup(
        r"\baca-seven-c",
        literal=True,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("vc2", 3),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths(
        harmony.damp_counts_curtailed,
    ),
    baca.clef("bass"),
    baca.pitch("C#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

maker(
    ("vc2", 6),
    harmony.tessera_2(
        2,
        rest_plts=[0],
    ),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("vc2", 8),
    baca.clef("treble"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("vc2", (9, 11)),
    baca.flat_glissando(
        selector=baca.selectors.leaves((None, -1)),
    ),
)

maker(
    ("vc2", [8, (9, 11)]),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("treble"),
    baca.pitch("E5", do_not_transpose=True),
    # NOTE: currently glissando must lexically precede trill spanner
    baca.new(
        baca.flat_glissando(),
        map=baca.selectors.runs(),
    ),
    baca.trill_spanner(
        alteration="Fqs5",
        map=baca.selectors.runs(),
    ),
    baca.markup(
        r"\baca-eleven-c",
        literal=True,
    ),
)

maker(
    ("cb1", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("<B5 C6 Db6>", do_not_transpose=True),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", 3),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<B5 C6 Db6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb1", (4, 5)),
    harmony.sixteenths(
        harmony.glissando_counts_curtailed,
    ),
    baca.clef("bass"),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

maker(
    ("cb1", 6),
    harmony.tessera_2(
        1,
        rest_plts=[0],
    ),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb1", 8),
    baca.clef("treble"),
    baca.pitch("E5", do_not_transpose=True),
    # NOTE: currently glissando must lexically precede trill spanner
    baca.new(
        baca.flat_glissando(),
        map=baca.selectors.runs(),
    ),
    baca.trill_spanner(
        alteration="Fqs5",
        map=baca.selectors.runs(),
    ),
    baca.markup(
        r"\baca-eleven-c",
        literal=True,
    ),
)

maker(
    ("cb1", 9),
    harmony.sixteenths(
        [1, 4, 1, "-"],
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([2, 2 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "O -> P4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb1", 10),
    harmony.sixteenths(
        [2, 3, 1, "-"],
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([2, 2 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "O -> P4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb1", 11),
    harmony.sixteenths(
        [1, 3, 2, "-"],
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "O -> P4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb1", (9, 11)),
    baca.pitch("E5", do_not_transpose=True),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", 2),
    harmony.sixteenths(
        ["-", 2, 2, 2, 2],
        fuse=True,
        extra_counts=[4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.tleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("cb2", (2, 3)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<A#5 B5 C6>", do_not_transpose=True),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("cb2", (4, 5)),
    harmony.sixteenths(
        harmony.glissando_counts_curtailed,
    ),
    baca.clef("bass"),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_).pheads().filter_duration(">=", (1, 8)),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

maker(
    ("cb2", 6),
    harmony.tessera_2(0),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.selectors.tleaves(),
    ),
)

maker(
    ("cb2", 8),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", (9, 11)),
    baca.clef("treble"),
    baca.pitch("E5", do_not_transpose=True),
    # NOTE: currently glissando must lexically precede trill spanner
    baca.flat_glissando(
        selector=baca.selectors.leaves((None, -1)),
    ),
    baca.trill_spanner(
        # large right padding because open-volta follows in next segment
        abjad.tweak(6).bound_details__right__padding,
        abjad.tweak(3).staff_padding,
        alteration="Fqs5",
    ),
    baca.markup(
        r"\baca-eleven-c",
        literal=True,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        [-4, 6, 2, -4],
        untie=True,
    ),
    baca.new(
        # excluded cb1 because of current gliss / pitch trill order contention
        baca.flat_glissando(),
        match=[0, 1, 2, 4],
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.selectors.lparts([2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[1, 2],
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 2),
    harmony.sixteenths(
        [-2, "+", -1],
        untie=True,
    ),
    baca.new(
        # excluded cb1 because of gliss / pitch trill order contention
        baca.flat_glissando(),
        match=[0, 1, 2],
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.selectors.lparts([2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[1, 2],
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    harmony.sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
    # TODO: promote to harmony.sixteenths()
    baca.invisible_music(
        baca.selectors.pleaves(([1], 2)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=baca.selectors.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -3,
        baca.selectors.pleaf(1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        baca.selectors.pleaf(-1),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    harmony.sixteenths(
        [8, 4, -4],
    ),
    baca.new(
        baca.flat_glissando(),
        # excluded cb1 because of current gliss / trill order contention
        match=[0, 1, 2, 4],
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        # excluded cb1 because of current gliss / trill order contention
        match=[1, 2],
    ),
)

# va, vc1, vc2, cb1

maker(
    (["va", "vc1", "vc2", "cb1"], 3),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.triple_staccato(baca.selectors.pheads()),
    baca.hairpin(
        "p < f",
        selector=baca.selectors.tleaves(),
    ),
)

# vc1, vc2, cb2

maker(
    (["va", "vc2", "cb2"], [9, 11]),
    harmony.sixteenths(
        [2],
        written_quarters=True,
    ),
)

maker(
    (["va", "vc2", "cb2"], 10),
    harmony.tuplet(
        [10 * (1,)],
        written_quarters=True,
    ),
)

maker(
    (["va", "vc2", "cb2"], (9, 11)),
    # TODO: move invisible command into rhythm-maker
    baca.invisible_music(
        baca.selectors.leaves(([1], 2)),
    ),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.tleaves(),
    ),
    baca.dynamic(
        "niente",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.new(
        baca.trill_spanner(
            # large right padding because open-volta follows in next segment
            abjad.tweak(6).bound_details__right__padding,
            abjad.tweak(3).staff_padding,
        ),
        # excluded cb2 because of gliss / trill order contention
        match=[0, 1],
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 11)),
    baca.dls_staff_padding(4),
)
