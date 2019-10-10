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
    1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"
]


# bfl

maker(
    ("bfl", 2),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
    baca.pitches(
        "G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3",
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves(),
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [-1, 3, 4, -4, 4],
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
    ("bfl", 5),
    harmony.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.repeat_tie(
        baca.pleaf(-1),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 6),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        "G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3",
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves(),
    ),
)

maker(
    ("bfl", 9),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
    baca.pitches(
        "G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3",
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves(),
    ),
)

maker(
    ("bfl", (6, 9)),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.tleaves(),
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("bfl", 11),
    harmony.sixteenths(
        [3, -1, 8],
    ),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", (1, 2)),
    harmony.sixteenths(
        [2, "-", 2],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 4),
    harmony.sixteenths(
        [-1, 3, 4, -4, 4],
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 5),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_all=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(
        ["-", 2],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        [41, -7, "+"],
    ),
    harmony.brake_drum_staff_position(),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        literal=True,
    ),
    baca.dynamic("p"),
)

# perc2

maker(
    ("perc2", (1, 2)),
    harmony.sixteenths(
        [-22, 1, -3, 1, "-"],
        extra_counts=[2],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
        ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("perc2", 5),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[4, 5],
        rest_all=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc2", (6, 9)),
    baca.staff_lines(1),
    harmony.sixteenths(
        cerulean,
        extra_counts=[2],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
        ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc2", 11),
    harmony.sixteenths(
        [21, -14, 18, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(baca.pheads()),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], 5),
    baca.new(
        baca.dots_extra_offset((2, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_false(),
        map=baca.rests().filter_duration(">=", (1, 2)),
    ),
)

# hp

maker(
    ("hp", (1, 2)),
    baca.clef("bass"),
    harmony.sixteenths(
        [22, "-"],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(
        baca.pheads(),
    ),
    baca.articulation(
        r"baca-damp",
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mp"),
)

maker(
    ("hp", 4),
    baca.clef("treble"),
    harmony.tuplet(
        [(-4, 1)],
    ),
    baca.staff_position(
        [-1, 0],
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

maker(
    ("hp", 5),
    harmony.sixteenths(
        [-4, 4, 8, -4],
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", (6, 9)),
    baca.clef("bass"),
    harmony.sixteenths(
        [54, "-"],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(
        baca.pheads(),
    ),
    baca.articulation(
        r"baca-damp",
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("f"),
)

maker(
    ("hp", 11),
    harmony.sixteenths(
        [21, -14, 18, "-"],
    ),
    baca.accent(
        baca.pheads(),
    ),
)

# va

maker(
    ("va", (1, 2)),
    harmony.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_staff_positions(-1, 1, mock=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("va", 5),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[7],
        rest_to=1,
        rest_from=1,
    ),
    baca.note_head_style_harmonic(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic(
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("va", (6, 9)),
    harmony.sixteenths(
        [16, -12, 4, -16, 4, -8, 4],
        untie=True,
        after_graces=[1],
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
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("va", 11),
    harmony.sixteenths(
        [2, 1, -1, 8],
        after_graces=[2, 4, 5],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

# vc1

maker(
    ("vc1", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-16, 1, -16, 1, -6],
        extra_counts=[1],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("vc1", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
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
    ("vc1", 5),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.note_head_style_harmonic(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic(
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc1", (6, 9)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        cerulean,
        extra_counts=[1],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc1", 11),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths([3, -1, 8]),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-9, 1, -11, 1, -3, 1, "-"],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("vc2", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
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
    ("vc2", 5),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("vc2", (6, 9)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        cerulean,
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc2", 11),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

# cb1

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_staff_positions(-1, 1, mock=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
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
    ("cb1", 5),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.note_head_style_harmonic(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic(
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("cb1", (6, 9)),
    harmony.sixteenths(
        [16, -8, 4, -16, 4, -12, 4],
        untie=True,
        after_graces=[1],
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
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb1", 11),
    harmony.sixteenths(
        [2, 1, -1, 8],
        after_graces=[4, 5, 2],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_staff_positions(-1, 1, mock=True),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        [3, -1, -4, 7, -1],
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
    ("cb2", 5),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("cb2", (6, 9)),
    harmony.sixteenths(
        [16, -12, 4, -8, 4, -16, 4],
        untie=True,
        after_graces=[1],
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
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb2", 11),
    harmony.sixteenths(
        [2, 1, -1, 8],
        after_graces=[5, 2, 4],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)
