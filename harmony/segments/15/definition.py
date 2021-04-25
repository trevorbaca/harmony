import abjad
import baca

import harmony

###############################################################################
##################################### [O] #####################################
###############################################################################

stage_markup = (
    ("[O.1-2]", 1),
    ("[◀L.2]", 3, "#darkgreen"),
    ("[◀L.4]", 4, "#darkgreen"),
    ("[O.3-4]", 5),
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
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (2, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "O",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "O",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

# bfl

maker(
    ("bfl", (1, 2)),
    harmony.sixteenths(
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    ),
    baca.pitch("E3"),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_halves=([0], 1),
        invisible_pairs=True,
    ),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mp >o !",
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [4, 8],
    ),
    baca.pitch("Dtqf5"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.leaves().rleak(),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.clparts([2]),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.breathe(
        baca.pleaf(1),
    ),
)

maker(
    ("bfl", (5, 9)),
    harmony.sixteenths(
        [-1, 3, -8, 4, -8, -1, "+"],
    ),
    baca.pitch(
        "E3",
        baca.plt(0),
    ),
    baca.pitch(
        "F#5",
        baca.plts()[1:],
    ),
    baca.accent(),
    baca.dynamic("mf"),
    baca.dynamic(
        "p",
        selector=baca.phead(1),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.75).self_alignment_X,
        selector=baca.phead(2),
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
        map=baca.selectors.runs((None, 1)),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.trill_spanner(
        map=baca.selectors.runs((1, 2)),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        map=baca.selectors.runs((2, 3)),
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
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    ),
    harmony.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 3),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [12, 16, -4],
    ),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 4),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (5, 9)),
    harmony.sixteenths(
        [-1, 3, -8, 4, -8, -1, "+"],
    ),
    harmony.slate_staff_position(),
    baca.new(
        baca.flat_glissando(
            hide_stem_selector=baca.leaves()[2:-1],
        ),
        measures=(7, 9),
    ),
    baca.dynamic('"f"'),
    baca.dynamic(
        '"f"-sempre',
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.phead(2),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (4, 10)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 4),
    harmony.sixteenths(
        [2, -2],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (1, 4)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc2", 5),
    baca.staff_lines(3),
    harmony.phjc(
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1],
        rest_nonfirst=True,
    ),
    harmony.purpleheart_staff_positions([2, -2, 0]),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (6, 7)),
    harmony.phjc(
        [1],
        [1, 2, 1, 1, 1],
        extra_counts=[1, 0],
        rest=[0, 1, -1],
    ),
    harmony.purpleheart_staff_positions([-2, 0, 2, 0, 2, -2]),
)

maker(
    ("perc2", (5, 10)),
    baca.dls_staff_padding(5),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.damp(
        baca.rest(0),
    ),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("hp", 3),
    harmony.sixteenths(
        [12, 16, -4],
    ),
    baca.pitch("Eb4"),
    baca.dynamic("mp"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        baca.pheads(),
    ),
    baca.dynamic("f"),
)

maker(
    ("hp", [5, 9]),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.new(
        baca.dynamic("f-ancora"),
        match=[0],
    ),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

maker(
    ("hp", (1, 10)),
    baca.dls_staff_padding(4 + 2),
)

# va

maker(
    ("va", 4),
    baca.pitch("Bb3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", (5, 10)),
    harmony.sixteenths(
        [5, -7, 5, -7, 37, "-"],
    ),
    baca.pitch("F4"),
    baca.dynamic(
        "p",
        selector=baca.pheads()[:2],
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.phead(2),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

# vc1

maker(
    ("vc1", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc1", 4),
    baca.pitch("Aqf3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("vc1", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs((None, 1)),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=baca.selectors.runs((1, 2)),
        selector=baca.leaves()[:-1],
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc2", 3),
    baca.literal(
        [
            r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
            r'\once \override TupletNumber.text = #"10:8"',
        ]
    ),
    baca.skeleton(
        r"\times 8/10 { c4 r4 r4 r8. }",
    ),
    baca.pitch("F3"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.scp_spanner(
        "P4 ||",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", 4),
    baca.pitch("F3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs((None, 1)),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=baca.selectors.runs((1, 2)),
        selector=baca.leaves()[:-1],
    ),
)

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb1", 3),
    baca.literal(
        [
            r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
            r'\once \override TupletNumber.text = #"11:8"',
        ]
    ),
    baca.skeleton(
        r"\times 8/11 { r4 c4 r4 r4 r32 }",
    ),
    baca.pitch("Dtqf3"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(3).X_offset,
        literal=True,
    ),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.scp_spanner(
        "P4 ||",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("cb1", 4),
    baca.pitch("Dtqf3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("cb1", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs((None, 1)),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=baca.selectors.runs((1, 2)),
        selector=baca.leaves()[:-1],
    ),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb2", 3),
    baca.literal(
        [
            r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
            r'\once \override TupletNumber.text = #"12:8"',
        ]
    ),
    baca.skeleton(
        r"\times 8/12 { r4 c4 r4 r4 r8 }",
    ),
    baca.pitch("Eb2"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.scp_spanner(
        "P4 ||",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", 4),
    baca.pitch("Dtqf3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("cb2", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs((None, 1)),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=baca.selectors.runs((1, 2)),
        selector=baca.leaves()[:-1],
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    harmony.sixteenths(
        [4],
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("p"),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)
