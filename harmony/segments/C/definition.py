import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [C] #####################################
###############################################################################

stage_markup = (
    ("[C.1]", 1),
    ("[▶D.1]", 2, "darkgreen"),
    ("[▶F.3]", 3, "darkgreen"),
    ("[C.2-4]", 4),

)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4),
        (3, 4), (1, 4), (3, 4), (1, 4),
        (5, 4), (4, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "C",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("4.=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(5 - 1)),
)

cerulean = [-3, -3, 1, -3, -1]

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(cerulean),
    baca.staff_position(-6, not_yet_pitched=True),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.phjc([2, 1], [2, 2, 2, 2, 2, 2, 2, 1],
        rmakers.force_rest(baca.tuplets()[:1].pleaves()[:-1]),
        extra_counts=[2, 6],
    ),
    baca.staff_positions([0, 0, -2, 0, -2], allow_repeats=True),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.phjc([1, 2], [2, 2, 2, 2, 2, 2, 2, 1],
        rmakers.force_rest(baca.tuplet(0)),
        rmakers.force_rest(baca.pleaves()[:3]),
        extra_counts=[2, 6],
    ),
    baca.staff_positions([0, 0, -2, 0, -2], allow_repeats=True),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

# hp

maker(
    ("hp", 1),
    baca.clef("bass"),
    harmony.durata([5, -2]),
    baca.chunk(
        baca.staff_position(-14, not_yet_pitched=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
)

maker(
    ("hp", (6, 8)),
    harmony.durata([9, -6, 8, -2]),
    baca.chunk(
        baca.staff_position(-14, not_yet_pitched=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
)

# va

maker(
    ("va", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(cerulean),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

# vc1

maker(
    ("vc1", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(cerulean, [1], r=-1),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

# vc2

maker(
    ("vc2", 1),
    harmony.durata([5, -2], grace=True, untie=True),
    baca.interpolate_staff_positions(-1, 1, not_yet_pitched=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

maker(
    ("vc2", (6, 8)),
    harmony.durata([9, -6, 8, -2], grace=True, untie=True),
    baca.new(
        baca.interpolate_staff_positions(-1, 1, not_yet_pitched=True),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.runs(),
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(cerulean, [2], r=-1),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

# cb2

maker(
    ("cb2", 1),
    harmony.durata([5, -2], grace=True, untie=True),
    baca.interpolate_staff_positions(-8, -6, not_yet_pitched=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

maker(
    ("cb2", (6, 8)),
    harmony.durata([9, -6, 8, -2], grace=True, untie=True),
    baca.new(
        baca.interpolate_staff_positions(-8, -6, not_yet_pitched=True),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.runs(),
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)
