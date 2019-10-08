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
    baca.repeat_tie(baca.pleaf(-1)),
    baca.stem_tremolo(baca.pleaves()),
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
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
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
    baca.markup(r"\baca-purpleheart-markup", literal=True),
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
    baca.markup(r"\baca-purpleheart-markup", literal=True),
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
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    harmony.sixteenths([-4, 4, 8, -4]),
    baca.pitch("<A4 B4 C5>", mock=True),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(r"\baca-bisb-markup", literal=True),
)

maker(
    ("hp", 3),
    baca.make_notes(),
    baca.laissez_vibrer(),
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
    baca.note_head_style_harmonic(baca.leaves()),
    baca.note_head_style_harmonic(baca.leaves(grace=True)),
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
    baca.note_head_style_harmonic(baca.leaves()),
    baca.note_head_style_harmonic(baca.leaves(grace=True)),
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
    harmony.sixteenths([-8, 12]),
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
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
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
    baca.note_head_style_harmonic(baca.leaves()),
    baca.note_head_style_harmonic(baca.leaves(grace=True)),
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
    harmony.sixteenths([-8, 12]),
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
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
)
