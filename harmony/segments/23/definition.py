import abjad
import baca

import harmony

###############################################################################
##################################### [W] #####################################
###############################################################################

stage_markup = (
    ("[W.1]", 1),
    ("[▶Y.1]", 2, "#darkgreen"),
    ("[W.2-3]", 4),
    ("[W.4]", 6),
    ("[◀V.6]", 7, "#darkgreen"),
    ("[◀T.3]", 8, "#darkgreen"),
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
    fermata_measure_empty_overrides=[3],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4),
        (6, 4),
        (1, 4),
        (5, 4),
        (5, 4),
        (6, 4),
        (3, 4),
        (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "W",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "W",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("72", baca.skip(7 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("8=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# bfl

maker(
    ("bfl", 2),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-6),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 5)),
        map=baca.runs(),
        selector=baca.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", (4, 6)),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("<B3 Dqf4>"),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [-4, 8, "-"],
        extra_counts=[1],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [-16, 4],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (4, 6)),
    harmony.sixteenths(
        [4, -16, 4, -16, 4, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

maker(
    ("perc1", 7),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6 + 1).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    harmony.slate_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6 + 1).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 8)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch(
        "E4",
        baca.plt(0),
    ),
    baca.laissez_vibrer(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4 + 2).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 7),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6 + 2).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        [-2, 2, -8, 2, "-"],
        extra_counts=[1],
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6 + 2).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (7, 8)),
    baca.dls_staff_padding(6),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
)

maker(
    ("hp", 6),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-xyl-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

# va

maker(
    ("va", 1),
    baca.clef("alto"),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E3"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("va", 2),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

maker(
    ("va", (4, 6)),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("E3"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P -> T",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.mgroups([2, 1]),
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 7),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 8),
    harmony.sixteenths(
        [-6, 2, -4, 2, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

# vc1

maker(
    ("vc1", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<A4 B4 C5>"),
    baca.dynamic("pp"),
)

maker(
    ("vc1", (4, 5)),
    harmony.sixteenths(
        [4],
    ),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("vc1", (6, 7)),
    harmony.sixteenths(
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(
            [(2, 4), (4, 4), (3, 4)],
        ),
        extra_counts=[0, -4, 0],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[1:].rleak(),
    ),
    baca.scp_spanner(
        "T -> P =|",
        abjad.tweak(3).staff_padding,
        pieces=baca.mgroups([1, 2]),
    ),
)

maker(
    ("vc1", 8),
    harmony.sixteenths(
        [-7, 3, -7, 3],
        extra_counts=[1],
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("bass"),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.pitch("Dqf3"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(5).bound_details__right__padding,
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
    ),
)

maker(
    ("vc2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

maker(
    ("vc2", 4),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("vc2", (5, 6)),
    baca.make_notes(),
)

maker(
    ("vc2", (4, 6)),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", 7),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("vc2", 8),
    harmony.sixteenths(
        [-10, 3, -5, 2],
        extra_counts=[1],
    ),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E1"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("cb1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
    baca.dynamic("pp"),
)

maker(
    ("cb1", 4),
    baca.clef("bass"),
)

maker(
    ("cb1", (6, 7)),
    harmony.sixteenths(
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(
            [(2, 4), (4, 4), (3, 4)],
        ),
        extra_counts=[0, -4, 0],
        denominator=True,
    ),
    baca.tuplet_bracket_down(),
    baca.pitch("E1"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[1:].rleak(),
    ),
    baca.scp_spanner(
        "T -> P =|",
        abjad.tweak(3).staff_padding,
        pieces=baca.mgroups([1, 2]),
    ),
)

maker(
    ("cb1", 8),
    harmony.sixteenths(
        [1, -14, 1],
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("treble"),
)

maker(
    ("cb2", 2),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

maker(
    ("cb2", (5, 6)),
    harmony.sixteenths(
        [4],
    ),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "ff >o",
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "P3 -> T1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", 7),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)


maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 7)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    baca.make_notes(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.bridge_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
)