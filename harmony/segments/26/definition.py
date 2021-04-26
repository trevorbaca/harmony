import abjad
import baca

import harmony

###############################################################################
##################################### [Z] #####################################
###############################################################################

stage_markup = (
    ("[Z.1-2]", 1),
    ("[▶CC.1]", 4, "#darkgreen"),
    ("[Z.3-5]", 5),
    ("[◀X.8]", 8, "#darkgreen"),
    ("[◀Y.2]", 9, "#darkgreen"),
    ("[Z.6]", 10),
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
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "Z",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "Z",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(9 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(9 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(10 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-four",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [4, 4, 16],
        written_halves=[0, 1],
        invisible_pairs=True,
        tie=[1, 2],
    ),
    baca.pitch("Bb4"),
    baca.hairpin(
        "pp < p >o",
        bookend=False,
        pieces=baca.selectors.lparts([1, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
    baca.text_spanner(
        "(T) -> A -> (T)",
        abjad.tweak(8).staff_padding,
        pieces=baca.selectors.lparts([1, 1 + 1]),
    ),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [-2, 2, 2],
    ),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(10).staff_padding,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=baca.selectors.rleak_runs(),
    ),
)

maker(
    ("bfl", 9),
    harmony.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-9),
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
        pieces=baca.leaves().partition_by_ratio((4, 5)),
        map=baca.selectors.runs(),
        selector=baca.selectors.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

maker(
    ("bfl", [(1, 2), (5, 7), 10]),
    harmony.sixteenths(
        [4, -12],
    ),
    baca.pitch("C3"),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
        map=baca.selectors.runs(),
    ),
)

maker(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", (1, 2)),
    harmony.sixteenths(
        [4, -12],
    ),
    harmony.slate_staff_position(),
    baca.dynamic('"ff"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (5, 6)),
    harmony.sixteenths(
        [4, -12],
    ),
    harmony.slate_staff_position(),
    baca.dynamic(
        '"ff"-ancora',
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

maker(
    ("perc1", 7),
    harmony.sixteenths(
        [4, "-", 6, -2],
    ),
    harmony.slate_staff_position(),
    baca.dynamic(
        "p",
        selector=baca.selectors.pleaf(1),
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    harmony.slate_staff_position(),
)

maker(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[2:],
    ),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(
        [1, -11, 4, -12, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, 8],
        denominator=None,
    ),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.tweak(6).staff_padding,
            literal=True,
        ),
        selector=baca.selectors.pleaf(0),
    ),
    baca.new(
        harmony.slate_staff_position(),
        selector=baca.selectors.pleaves((1, None)),
    ),
    baca.dynamic(
        '"ff"',
        selector=baca.selectors.pleaf(1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
        selector=baca.selectors.pleaf(1),
    ),
)

maker(
    ("perc1", 10),
    harmony.sixteenths(
        [4, -12],
    ),
    harmony.slate_staff_position(),
)

maker(
    ("perc1", (9, 10)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.leaves()[3:],
    ),
)

maker(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [-8, 1, -3],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic(
        "mp",
        selector=baca.selectors.pheads(),
    ),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 7),
    harmony.sixteenths(
        [-8, "+"],
    ),
)

maker(
    ("perc2", 8),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("perc2", (7, 8)),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 9),
    harmony.sixteenths(
        [2, -22, -1, 2, -21],
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "f >o niente",
        map=baca.selectors.rleak_runs(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (1, 9)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc2", 10),
    harmony.sixteenths(
        ["-", 2],
        extra_counts=[2],
        denominator=None,
    ),
    baca.staff_lines(
        3,
        baca.selectors.leaf(-2),
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        abjad.tweak(1).self_alignment_X,
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        right_broken=True,
        selector=baca.leaves()[-1:].rleak(),
    ),
)

# hp

maker(
    ("hp", (1, 2)),
    baca.clef("treble"),
    harmony.sixteenths(
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        baca.selectors.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
        selector=baca.selectors.pheads(),
    ),
)

maker(
    ("hp", (5, 6)),
    harmony.sixteenths(
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        baca.selectors.pheads(),
    ),
    baca.dynamic("f-ancora"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
        selector=baca.selectors.pheads(),
    ),
)

maker(
    ("hp", (1, 6)),
    baca.dls_staff_padding(4 + 2),
)

maker(
    ("hp", 7),
    harmony.sixteenths(
        ["-", 6, -2],
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.tweak(3).staff_padding,
            literal=True,
        ),
        selector=baca.selectors.pleaf(0),
    ),
)

maker(
    ("hp", 8),
    harmony.sixteenths(
        [1, -3, 3, -3, 3, -3],
    ),
)

maker(
    ("hp", (7, 8)),
    harmony.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[1:],
    ),
)

maker(
    ("hp", 9),
    baca.clef("treble"),
    baca.staff_lines(5),
)

maker(
    ("hp", 10),
    harmony.sixteenths(
        [-2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        baca.selectors.pheads(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
        selector=baca.selectors.pheads(),
    ),
)

# va

maker(
    ("va", (5, 7)),
    baca.make_repeat_tied_notes(),
)

maker(
    ("va", (4, 7)),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        alteration="Cb5",
    ),
)

maker(
    ("va", 8),
    harmony.sixteenths(
        [6, 3, 11],
    ),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("va", 9),
    harmony.tessera_4(4),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

# vc1

maker(
    ("vc1", 8),
    harmony.sixteenths(
        [4, 2, 7, 7],
    ),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("vc1", 9),
    harmony.tessera_4(3),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.tweak(True).to_barline,
        pieces=baca.plts(),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        baca.selectors.pleaves([0, -1]),
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

maker(
    ("vc1", [(1, 2), (5, 7), 10]),
    baca.pitch("D2"),
)

# vc2

maker(
    ("vc2", 8),
    harmony.sixteenths(
        [9, 11],
    ),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("vc2", 9),
    harmony.tessera_4(2),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        abjad.tweak(True).to_barline,
        bookend=False,
        pieces=baca.selectors.lparts([1, 2, 3, 2]),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        baca.selectors.pleaves([0, -1]),
    ),
    baca.pitch(
        "C5",
        baca.selectors.pleaves((1, -1)),
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

maker(
    ("vc2", [(1, 2), (5, 7), 10]),
    baca.pitch("C#2"),
)

# cb1

maker(
    ("cb1", 8),
    harmony.sixteenths(
        [4, 9, 7],
    ),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("cb1", 9),
    harmony.tessera_4(1),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.tweak(True).to_barline,
        bookend=False,
        pieces=baca.selectors.lparts([2, 3, 2]),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        baca.selectors.pleaves([0, -1]),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

maker(
    ("cb1", [(1, 2), (5, 7), 10]),
    baca.pitch("D2"),
)

# cb2

maker(
    ("cb2", 8),
    harmony.sixteenths(
        [9, 11],
    ),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("cb2", 9),
    harmony.tessera_4(0),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.tweak(True).to_barline,
        pieces=baca.selectors.lparts([2, 1, 1]),
    ),
    baca.untie(
        baca.selectors.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        baca.selectors.pleaves([0, -1]),
        do_not_transpose=True,
    ),
    baca.pitch(
        "C5",
        baca.selectors.pleaves((1, -1)),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        baca.selectors.pleaves((1, -1)),
    ),
)

maker(
    ("cb2", [(1, 2), (5, 7), 10]),
    baca.pitch("C#2"),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    harmony.sixteenths(
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    ),
    baca.hairpin(
        "pp < p > pp",
        pieces=baca.selectors.lparts([1, 1 + 1]),
    ),
    baca.new(
        baca.clef("treble"),
        baca.trill_spanner(
            abjad.tweak(2).bound_details__right__padding,
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

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads((1, None)),
    ),
    baca.hairpin(
        "o< f",
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 9),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], [(1, 2), (5, 7), 10]),
    harmony.sixteenths(
        [4, -12],
    ),
    baca.clef("bass"),
    baca.hairpin(
        "o<| ff",
        map=baca.selectors.rleak_runs(),
    ),
    baca.stop_on_string(
        baca.selectors.leaf(0),
        map=baca.selectors.leaf_in_each_rleak_run(-1),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)
