import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Y] #####################################
###############################################################################

stage_markup = (
    ("[▶AA.1]", 1, "darkgreen"),
    ("[Y.1]", 2),
    ("[◀X.6]", 3, "darkgreen"),
    ("[Y.2]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[4, 11],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (6, 4), (4, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Y",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(4 - 1)),
    baca.global_fermata("fermata", baca.rest(11 - 1)),
)

# bfl

maker(
    ("bfl", (5, 10)),
    harmony.thirty_seconds(
        [1], [4, 0, 0, 2, 0],
        rmakers.force_rest(baca.tuplets().get([1, 2, 4], 5)),
        divisions=baca.sequence().fuse().split_divisions(
            [(12, 16), (12, 16), (1, 16), (11, 16), (12, 16)],
            cyclic=True,
        ),
    ),
    baca.literal([
        r"\override NoteHead.font-size = -3",
        r"\override Accidental.font-size = -3",
        r"\override Accidental.X-offset = 0",
        r"\override Accidental.Y-offset = -2",
    ]),
    baca.pitches("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3"),
    baca.trill_spanner(
        None,
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 5)),
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.dls_staff_padding(5),
)

# perc1

maker(
    ("perc1", (5, 10)),
    harmony.sixteenths([1, -23, -1, 1, -22]),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak(False).X_extent,
    ),
    baca.accent(baca.pheads()),
)

# perc2

maker(
    ("perc2", 2),
    baca.staff_lines(1),
)

maker(
    ("perc2", 3),
    baca.staff_lines(3),
)

maker(
    ("perc2", 5),
    baca.staff_lines(1),
)

# hp

# va

# vc1

# vc2

# cb1

# cb2
