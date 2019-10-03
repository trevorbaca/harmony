import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [N] #####################################
###############################################################################

stage_markup = (
    ("[N.1-2]", 1),
    ("[▶O.1]", 4, "darkgreen"),
    ("[◀M.1]", 5, "darkgreen"),
    ("[N.3-6]", 6),
    ("[▶P.1]", 11, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 10],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (1, 4),
        (4, 4), (5, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (1, 4),
        (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "N",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(5 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(6 - 1)),
    baca.metronome_mark("96", baca.skip(11 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("short", baca.rest(10 - 1)),
)

cerulean = [
    #1, -3, 1, -4, 1, -5, 1, -6, 1, -7, 1, -8, 1, -9, 1, -10, 1, -11, 1, -12, 1, -99
    1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, -99
]


# bfl

maker(
    ("bfl", 2),
    harmony.thirty_seconds(
        rmakers.force_rest(baca.tuplet(0)),
        rmakers.force_rest(baca.pleaf(0)),
        divisions=[2],
        extra_counts=[2],
    ),
    baca.pitches("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3"),
    baca.trill_spanner(
        None,
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 6),
    harmony.thirty_seconds(
        rmakers.force_rest(baca.pleaf(0)),
        rmakers.force_rest(baca.tuplet(1)),
        divisions=[2],
        extra_counts=[2],
    ),
    baca.pitches("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3"),
    baca.trill_spanner(
        None,
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 9),
    harmony.thirty_seconds(
        rmakers.force_rest(baca.tuplet(0)),
        rmakers.force_rest(baca.pleaf(0)),
        divisions=[2],
        extra_counts=[2],
    ),
    baca.pitches("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3"),
    baca.trill_spanner(
        None,
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", (1, 2)),
    harmony.sixteenths([2, "-", 2]),
    harmony.brake_drum_staff_position(),
    baca.accent(baca.pheads()),
    baca.markup(r"\baca-brake-drum-markup", literal=True),
)

maker(
    ("perc1", 5),
    baca.staff_lines(3),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths([2, "-"]),
    harmony.brake_drum_staff_position(),
    baca.accent(baca.pheads()),
    baca.markup(r"\baca-brake-drum-markup", literal=True),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(["-", 2]),
    harmony.brake_drum_staff_position(),
    baca.accent(baca.pheads()),
)

# perc2

maker(
    ("perc2", (1, 2)),
    harmony.sixteenths([-22, 1, -3, 1, -99], extra_counts=[2]),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
        ),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

maker(
    ("perc2", 5),
    baca.staff_lines(3),
)

maker(
    ("perc2", (6, 9)),
    baca.staff_lines(1),
    harmony.sixteenths(cerulean, extra_counts=[2]),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
        ),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# hp

maker(
    ("hp", (1, 2)),
    baca.clef("bass"),
    harmony.sixteenths([22, "-"]),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mp"),
)

maker(
    ("hp", (6, 9)),
    harmony.sixteenths([54, "-"]),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(baca.pheads()),
    baca.articulation(r"baca-damp", baca.ptails().map(baca.rleak()[-1])),
    baca.dynamic("mf"),
)

# va

maker(
    ("va", (1, 2)),
    harmony.sixteenths([-8, 4, "-"], untie=True, grace_suffixes=[1]),
    baca.interpolate_staff_positions(-1, 1, mock=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

maker(
    ("va", (6, 9)),
    harmony.sixteenths(
        [16, -12, 4, -16, 4, -8, 4],
        untie=True,
        grace_suffixes=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(-1, 1, mock=True),
        map=baca.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.runs(),
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

# vc1

maker(
    ("vc1", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths([-16, 1, -16, 1, -6], extra_counts=[1]),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

maker(
    ("vc1", (6, 9)),
    harmony.sixteenths(cerulean, extra_counts=[1]),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

maker(
    ("vc1", 11),
    baca.clef("bass"),
    baca.staff_lines(5),
)

# vc2

maker(
    ("vc2", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths([-9, 1, -11, 1, -3, 1, -99]),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

maker(
    ("vc2", (6, 9)),
    harmony.sixteenths(cerulean),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

maker(
    ("vc2", 11),
    baca.clef("bass"),
    baca.staff_lines(5),
)

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths([-8, 4, "-"], untie=True, grace_suffixes=[1]),
    baca.interpolate_staff_positions(-1, 1, mock=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

maker(
    ("cb1", (6, 9)),
    harmony.sixteenths(
        [16, -8, 4, -16, 4, -12, 4],
        untie=True,
        grace_suffixes=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(-1, 1, mock=True),
        map=baca.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.runs(),
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths([-8, 4, "-"], untie=True, grace_suffixes=[1]),
    baca.interpolate_staff_positions(-1, 1, mock=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)

maker(
    ("cb2", (6, 9)),
    harmony.sixteenths(
        [16, -12, 4, -8, 4, -16, 4],
        untie=True,
        grace_suffixes=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(-1, 1, mock=True),
        map=baca.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.runs(),
    ),
    baca.stem_tremolo(baca.pleaves(grace=False)),
)
