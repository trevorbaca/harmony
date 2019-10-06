import abjad
import baca
import harmony
import os


###############################################################################
##################################### [B] #####################################
###############################################################################

stage_markup = (
    ("[B.1-5]", 1),
    ("[◀A.2]", 6, "darkgreen"),
    ("[▶C.1]", 7, "darkgreen"),
    ("[B.6]", 8),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[12],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (5, 4), (4, 4), (5, 4), (4, 4),
        (5, 4), (3, 4),
        (5, 4), (5, 4), (5, 4), (5, 4),
        (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=12,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "B",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(8)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(6 - 1)),
    baca.metronome_mark("4.=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(7 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("5:4(8)=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(12 - 1)),
)

divisions = baca.sequence([16, 20, 12, 12, 12, 16])
sixteenths = baca.sequence([(2, 2, _ - 4) for _ in divisions])
sixteenths = sixteenths.flatten()

# bfl

maker(
    ("bfl", (1, 5)),
    harmony.sixteenths(
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.stem_tremolo(baca.pleaves().get([0, 1], 3)),
    baca.hairpin(
        "p <| f |> p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", (8, 11)),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.stem_tremolo(baca.plts().get([0, 1], 3)),
    baca.hairpin(
        "p <| f |> p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

# perc1

maker(
    ("perc1", (1, 5)),
    harmony.appoggiato(
        counts=[4],
        rest_all=True,
    ),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
)

maker(
    ("perc1", 7),
    baca.staff_lines(3),
)

maker(
    ("perc1", (8, 11)),
    harmony.appoggiato(
        counts=[7],
        rest_all=True,
    ),
)

# perc2

maker(
    ("perc2", (1, 5)),
    baca.staff_lines(1),
    baca.make_repeat_tied_notes(),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(hide_middle_stems=True),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("p"),
)

maker(
    ("perc2", 7),
    baca.staff_lines(3),
)

maker(
    ("perc2", [8, 11]),
    harmony.tuplet([(1,)], force_augmentation=True),
)

maker(
    ("perc2", (9, 10)),
    baca.make_notes(),
)

maker(
    ("perc2", (8, 11)),
    baca.staff_lines(1),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(hide_middle_stems=True),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.tuplet_bracket_up(),
    baca.dynamic("p"),
)

# hp

maker(
    ("hp", (1, 5)),
    harmony.sixteenths(
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "p < f > p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(4.5),
)

maker(
    ("hp", (8, 11)),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "p < f > p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(4.5),
)

# va

maker(
    ("va", (1, 5)),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=divisions,
        counts=[2, 3, 4, 5, 6, 7],
    ),
)

maker(
    ("va", 7),
    baca.staff_lines(1),
)

maker(
    ("va", 8),
    baca.staff_lines(5),
)

# vc1

maker(
    ("vc1", (1, 5)),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=divisions.rotate(-1),
        counts=[3, 4, 5, 6, 7],
        rest_to=1,
    ),
)

maker(
    ("vc1", 7),
    baca.staff_lines(1),
)

maker(
    ("vc1", 8),
    baca.staff_lines(5),
)

# vc2

maker(
    ("vc2", (1, 5)),
    harmony.appoggiato(
        divisions=divisions.rotate(-2),
        counts=[4, 5, 6, 7],
        rest_to=2,
    ),
)

# cb1

maker(
    ("cb1", (1, 5)),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=divisions.rotate(-3),
        counts=[5, 6, 7],
        rest_to=3,
    ),
)

maker(
    ("cb1", 7),
    baca.staff_lines(1),
)

maker(
    ("cb1", 8),
    baca.staff_lines(5),
)

# cb2

maker(
    ("cb2", (1, 5)),
    harmony.appoggiato(
        divisions=divisions.rotate(-4),
        counts=[6, 7],
        rest_to=4,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 11)),
    harmony.appoggiato(counts=[7]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)
