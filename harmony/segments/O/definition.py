import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [O] #####################################
###############################################################################

stage_markup = (
    ("[O.1-2]", 1),
    ("[◀L.3]", 3, "darkgreen"),
    ("[◀L.4]", 4, "darkgreen"),
    ("[O.3-4]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *abjad.tags.instrument_color_tags(),
        *abjad.tags.margin_markup_color_tags(),
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (3, 4), (3, 4),
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (2, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "O",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
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
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [12, -20],
    ),
    baca.pitch("<Eb3 Eb4 Bb4>"),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [4, 8],
    ),
    baca.pitch("Dtqf5"),
    baca.markup(
        r"\harmony-seven-e-flat",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
    baca.breathe(
        baca.pleaf(1),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.clparts([2]),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
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
    baca.dynamic("p"),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.75).self_alignment_X,
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
        map=baca.run(0),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(
        map=baca.run(1),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        map=baca.run(2),
    ),
)

# perc1

maker(
    ("perc1", (1, 2)),
    harmony.sixteenths(
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
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
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
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
        map=baca.runs(),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (5, 9)),
    harmony.sixteenths(
        [-1, 3, -8, 4, -8, -1, "+"],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
    baca.new(
        baca.flat_glissando(
            hide_stem_selector=baca.leaves()[2:-1],
        ),
        measures=(7, 9),
    ),
)

# perc2

maker(
    ("perc2", 4),
    harmony.sixteenths(
        [2, -2],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
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
    baca.staff_positions(
        [2, -2, 0],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc2", (6, 7)),
    harmony.phjc(
        [1],
        [1, 2, 1, 1, 1],
        extra_counts=[1, 0],
        rest=[0, 1, -1],
    ),
    baca.staff_positions(
        [-2, 0, 2, 0, 2, -2],
        allow_repeats=True,
    ),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
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
    baca.staff_position(
        [-1, 0],
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

maker(
    ("hp", 3),
    harmony.sixteenths(
        [12, 16, -4],
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-soundboard-pizz-markup",
        literal=True,
    ),
)

maker(
    ("hp", [5, 9]),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.staff_position(
        [-1, 0],
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

# va

maker(
    ("va", (5, 10)),
    harmony.sixteenths(
        [5, -7, 5, -7, 37, "-"],
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.95).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

# vc1

maker(
    ("vc1", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc1", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.run(0),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff",
        map=baca.run(1),
        selector=baca.leaves().rleak(),
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc2", 3),
    baca.literal([
        r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
        r'\once \override TupletNumber.text = #"10:8"',
    ]),
    baca.skeleton(
        r"\times 8/10 { c4 r4 r4 r8. }",
    ),
    baca.triple_staccato(
        baca.pheads(),
    ),
)

maker(
    ("vc2", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.run(0),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff",
        map=baca.run(1),
        selector=baca.leaves().rleak(),
    ),
)

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb1", 3),
    baca.literal([
        r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
        r'\once \override TupletNumber.text = #"11:8"',
    ]),
    baca.skeleton(
        r"\times 8/11 { r4 c4 r4 r4 r32 }",
    ),
    baca.triple_staccato(
        baca.pheads(),
    ),
)

maker(
    ("cb1", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.run(0),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff",
        map=baca.run(1),
        selector=baca.leaves().rleak(),
    ),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb2", 3),
    baca.literal([
        r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
        r'\once \override TupletNumber.text = #"12:8"',
    ]),
    baca.skeleton(
        r"\times 8/12 { r4 c4 r4 r4 r8 }",
    ),
    baca.triple_staccato(
        baca.pheads(),
    ),
)

maker(
    ("cb2", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.run(0),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o<| fff",
        map=baca.run(1),
        selector=baca.leaves().rleak(),
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
