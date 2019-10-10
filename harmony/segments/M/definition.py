import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [M] #####################################
###############################################################################

stage_markup = (
    ("[M.1]", 1),
    ("[M.2]", 3),
    ("[◀J.6]", 4, "darkgreen"),
    ("[◀L.4]", 5, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[2, 6],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (1, 4), (6, 4),
        (6, 4), (3, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=6,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "M",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.skip(4 - 1)),
    baca.metronome_mark("96", baca.skip(5 - 1)),
    baca.metronome_mark("8=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("short", baca.rest(6 - 1)),
)

# bfl

maker(
    ("bfl", 1),
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
    ("bfl", 3),
    harmony.sixteenths(
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 4),
    harmony.appoggiato(
        counts=[9],
        incise=True,
    ),
    baca.pitches(
        "D3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=False),
        mock=True,
    ),
    baca.pitches(
        "G3 A3 B3 A3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=True),
        mock=True,
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [4, 8],
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
    baca.breathe(
        baca.pleaf(1),
    ),
)

# perc1

maker(
    ("perc1", 1),
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
    ("perc1", 3),
    harmony.appoggiato(
        divisions=[20, 8],
        counts=[0, 3],
        rest_all=True,
    ),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.dynamic("p"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 5),
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

# perc2

maker(
    ("perc2", 1),
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
    ("perc2", 3),
    harmony.appoggiato(
        divisions=[20, 8],
        counts=[0, 4],
        rest_all=True,
    ),
)

maker(
    ("perc2", 4),
    baca.staff_lines(1),
    baca.make_notes(),
    harmony.bass_drum_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        literal=True,
    ),
    baca.dynamic("p"),
)

maker(
    ("perc2", 5),
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

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
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
    ("hp", 3),
    baca.make_notes(),
    baca.laissez_vibrer(),
)

maker(
    ("hp", 5),
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

# va

maker(
    ("va", 1),
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
    ("va", 3),
    baca.make_notes(),
    baca.note_head_style_harmonic(),
    baca.dynamic("mp"),
)

# vc1

maker(
    ("vc1", 1),
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
    ("vc1", 3),
    baca.make_notes(),
    baca.note_head_style_harmonic(),
    baca.dynamic("mp"),
)

# vc2

maker(
    ("vc2", 1),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("vc2", 3),
    baca.make_notes(),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

# cb1

maker(
    ("cb1", 1),
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
    ("cb1", 3),
    baca.make_notes(),
    baca.note_head_style_harmonic(),
    baca.dynamic("mp"),
)

# cb2

maker(
    ("cb2", 1),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("cb2", 3),
    baca.make_notes(),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.make_notes(),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 5),
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
