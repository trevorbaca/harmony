import abjad
import baca

import harmony

###############################################################################
##################################### [Y] #####################################
###############################################################################

stage_markup = (
    ("[▶AA.1]", 1, "#darkgreen"),
    ("[Y.1]", 2),
    ("[◀X.8]", 3, "#darkgreen"),
    ("[Y.2]", 5),
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
    fermata_measure_empty_overrides=[4, 11],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
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
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "Y",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "Y",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(4 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(11 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-two",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(4 - 1),
        ),
    ),
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-three",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(11 - 1),
        ),
    ),
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
        harmony.warble_pitches.rotate(-7),
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
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        map=baca.selectors.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 3),
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
    ("bfl", (5, 10)),
    harmony.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-8),
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
        selector=baca.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        map=baca.selectors.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 2),
    harmony.sixteenths(
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
    harmony.slate_staff_position(),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    harmony.slate_staff_position(),
)

maker(
    ("perc1", (2, 3)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.leaves()[1:8],
    ),
)

maker(
    ("perc1", (5, 9)),
    harmony.sixteenths(
        [1, -23, -1, 1, -22],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 10),
    harmony.sixteenths(
        [-1, 1, -2, -8, -12, 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, 8],
        denominator=None,
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, -20, 4],
    ),
    baca.staff_position(2),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-10, "+"],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

maker(
    ("perc2", 3),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("perc2", (2, 3)),
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
    ("perc2", (5, 9)),
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
    ("perc2", 10),
    harmony.sixteenths(
        [-1, 1, 1, -1, -8, -12, 4, 4],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, 8],
        denominator=None,
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads((None, 2)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves((None, 2)),
    ),
    baca.hairpin(
        "f >o niente",
        map=baca.selectors.rleak_runs(None, 1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        abjad.tweak(0).self_alignment_X,
        literal=True,
        selector=baca.selectors.pleaf(2),
    ),
)

maker(
    ("perc2", (2, 10)),
    baca.dls_staff_padding(6),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-24, 4],
    ),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pince-markup",
        abjad.tweak(4 + 2).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.tweak(6 + 2).staff_padding,
            literal=True,
        ),
        selector=baca.selectors.pleaf(0),
    ),
)

maker(
    ("hp", 3),
    harmony.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)

maker(
    ("hp", (2, 3)),
    harmony.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.leaves()[1:8],
    ),
)

maker(
    ("hp", (5, 10)),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-24, -1, 3, -20],
    ),
    baca.pitch("G1"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4 + 3),
    baca.markup(
        r"\baca-lv-into-fermata-markup",
        literal=True,
        selector=baca.selectors.phead(-1),
    ),
)

# va

maker(
    ("va", (1, 2)),
    baca.make_notes(),
    baca.pitch("Ab4"),
    baca.flat_glissando(),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", 3),
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
        selector=baca.leaves(),
    ),
)

maker(
    ("va", (5, 10)),
    harmony.tessera_4(4),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=baca.plts().partition_by_counts(
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=baca.leaves().rleak(),
        ),
        baca.untie(
            baca.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            baca.selectors.leaf(0),
        ),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            baca.selectors.leaf(-1),
        ),
        baca.note_head_transparent(
            baca.leaves()[1:-1],
        ),
    ),
)

# vc1

maker(
    ("vc1", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
)

maker(
    ("vc1", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<A4 B4 C5>"),
)

maker(
    ("vc1", 3),
    harmony.sixteenths(
        [4, 2, 7, 7],
    ),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("vc1", (5, 10)),
    harmony.tessera_4(3),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! >"
            " mf < ff-scratch -- niente",
            pieces=baca.plts().partition_by_counts(
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=baca.leaves().rleak(),
        ),
        baca.untie(
            baca.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<A4 B4 C5>",
            baca.selectors.pleaves([0, -1]),
        ),
        baca.note_head_transparent(
            baca.leaves()[1:-1],
        ),
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
)

maker(
    ("vc2", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<G4 Ab4 Bb4>"),
)

maker(
    ("vc2", 3),
    harmony.sixteenths(
        [9, 11],
    ),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("vc2", (5, 10)),
    harmony.tessera_4(2),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=baca.plts().partition_by_counts(
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=baca.leaves().rleak(),
        ),
        baca.untie(
            baca.leaves(),
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
            baca.leaves()[1:-1],
        ),
    ),
)

# cb1

maker(
    ("cb1", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
)

maker(
    ("cb1", (1, 2)),
    baca.clef("treble"),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
)

maker(
    ("cb1", 3),
    harmony.sixteenths(
        [4, 9, 7],
    ),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb1", (5, 10)),
    harmony.tessera_4(1),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=baca.plts().partition_by_counts(
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=baca.leaves().rleak(),
        ),
        baca.untie(
            baca.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<A4 B4 C5>",
            baca.selectors.pleaves([0, -1]),
            do_not_transpose=True,
        ),
        baca.note_head_transparent(
            baca.leaves()[1:-1],
        ),
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
)

maker(
    ("cb2", (1, 2)),
    baca.clef("treble"),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
)

maker(
    ("cb2", 3),
    harmony.sixteenths(
        [9, 11],
    ),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", (5, 10)),
    harmony.tessera_4(0),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=baca.plts().partition_by_counts(
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=baca.leaves().rleak(),
        ),
        baca.untie(
            baca.leaves(),
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
            baca.leaves()[1:-1],
        ),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 2),
    baca.make_notes(),
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads((1, None)),
    ),
    baca.flat_glissando(),
    baca.dynamic("f"),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 10)),
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
