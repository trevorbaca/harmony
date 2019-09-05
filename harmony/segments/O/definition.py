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
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
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

maker(
    "Global_Skips",
)

# bfl

maker(
    ("bfl", (1, 2)),
    harmony.sixteenths([-1, 3, 4, -4, 4, -1, 3, 4, -99]),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
    baca.accent(baca.pheads()),
)

# perc1

maker(
    ("perc1", (1, 2)),
    harmony.sixteenths([-1, 3, 4, -4, 4, -1, 3, 4, -99]),
    baca.markup(r"\baca-slate-scrape-markup", literal=True),
)

maker(
    ("perc1", 3),
    baca.staff_lines(5),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

# perc2

maker(
    ("perc2", 5),
    baca.staff_lines(3),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    harmony.tuplet([(-4, 1)]),
    baca.pitch("<A4 B4>", not_yet_pitched=True),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

# va

# vc1

maker(
    ("vc1", (1, 2)),
    harmony.sixteenths([3, -1, -4, 7, -1, -10, 3, -1, -2]),
    baca.staff_position(0, not_yet_pitched=True),
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

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths([3, -1, -4, 7, -1, -10, 3, -1, -2]),
    baca.staff_position(0, not_yet_pitched=True),
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

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths([3, -1, -4, 7, -1, -10, 3, -1, -2]),
    baca.staff_position(0, not_yet_pitched=True),
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

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths([3, -1, -4, 7, -1, -10, 3, -1, -2]),
    baca.staff_position(0, not_yet_pitched=True),
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
