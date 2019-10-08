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
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("bfl", (5, 9)),
    harmony.sixteenths(
        [-1, 3, -8, 4, -8, -1, "+"],
    ),
    baca.accent(),
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
    baca.staff_lines(5),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", (5, 9)),
    harmony.sixteenths(
        [-1, 3, -8, 4, -8, -1, "+"],
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

# perc2

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
    harmony.tuplet(
        [(-4, 1)],
    ),
    baca.pitch(
        "<A4 B4>",
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

maker(
    ("hp", [5, 9]),
    harmony.tuplet(
        [(-4, 1)],
    ),
    baca.pitch(
        "<A4 B4>",
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
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.95).self_alignment_X,
    ),
)

# vc1

maker(
    ("vc1", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("vc1", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
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
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("vc2", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
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
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("cb1", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
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
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("cb2", (5, 9)),
    harmony.sixteenths(
        [3, -1, -8, 47, -1],
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
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)
