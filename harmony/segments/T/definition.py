import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [T] #####################################
###############################################################################

stage_markup = (
    ("[▶U.1]", 1, "darkgreen"),
    ("[▶V.3]", 2, "darkgreen"),
    ("[T.1-8]", 3),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "T",
        baca.skip(3 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
)

# bfl

maker(
    ("bfl", (3, 10)),
    harmony.sixteenths([-8, 8, -16, 4], [1]),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
)

maker(
    ("perc1", (3, 10)),
    harmony.sixteenths([8, -8, 8, -8, 8, -16], [2]),
    baca.markup(r"\baca-slate-scrape-markup", literal=True),
    harmony.slate_staff_position(),
)

# perc2

maker(
    ("perc2", (3, 10)),
    harmony.sixteenths([2, -8, 2, -8, 2, -20], [1]),
    baca.markup(r"\baca-slate-brush-markup", literal=True),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
    harmony.slate_staff_position(),
)

# hp

maker(
    ("hp", (3, 10)),
    harmony.sixteenths([2, -20, 2, -24]),
    baca.markup(r"\baca-sons-xylophoniques-markup", literal=True),
    baca.laissez_vibrer(baca.ptails()),
)

# va

maker(
    ("va", (3, 10)),
    harmony.sixteenths([2, -8, 2, -4, 2, -26], [2]),
)

# vc1

maker(
    ("vc1", (3, 10)),
    harmony.sixteenths([3, -7, 3, -7, 3, -7, 3, -14], [1]),
)

# vc2

maker(
    ("vc2", (3, 10)),
    harmony.sixteenths([3, -5, 3, -5, 3, -5, 3, -23], [1]),
)

# cb1

maker(
    ("cb1", (3, 10)),
    harmony.sixteenths([3, -7, 3, -7, 3, -7, 3, -14]),
)

# cb2

maker(
    ("cb2", (3, 10)),
    harmony.sixteenths([3, -5, 3, -5, 3, -5, 3, -23]),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (3, 10)),
    baca.staff_lines(1),
    baca.chunk(
        baca.clef("percussion"),
        baca.clef_shift("percussion"),
    ),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
    baca.staff_position(0),
)
