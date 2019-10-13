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
    baca.stem_tremolo(
        baca.pleaves().get([0, 1], 3),
    ),
    baca.hairpin(
        "p <| f |> p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", 6),
    harmony.appoggiato(
        divisions=[12, 8],
        counts=[8, 4],
        incise=True,
    ),
    baca.pitches(
        "D3 E3",
        selector=baca.plts(grace=False),
        mock=True,
    ),
    baca.pitches(
        "F3 G3 A3 G3",
        selector=baca.plts(grace=True),
        mock=True,
    ),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
    ),
)

maker(
    ("bfl", (8, 11)),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.stem_tremolo(
        baca.plts().get([0, 1], 3),
    ),
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
    harmony.sixteenths(
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o<| mf",
        selector=baca.leaves()[:1].rleak(),
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.leaves()[-2:],
    ),
    baca.laissez_vibrer(),
    baca.markup(
        r"\baca-bd-superball-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 7),
    baca.staff_lines(3),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    harmony.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
    baca.dynamic("f"),
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
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.dynamic("p"),
)

maker(
    ("perc2", 6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
    harmony.sixteenths(
        [4, -6, 4, 4, -2],
    ),
    harmony.slate_staff_position(),
    baca.circle_bow_spanner(
        None,
        abjad.tweak(5.5).staff_padding,
        map=baca.plts(),
    ),
)

maker(
    ("perc2", 7),
    baca.staff_lines(3),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
    ),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
    baca.dynamic("f"),
)

maker(
    ("perc2", [8, 11]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
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
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.tuplet_bracket_up(),
    baca.dynamic("p"),
)

# hp

maker(
    ("hp", (1, 5)),
    baca.clef("treble"),
    harmony.sixteenths(
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
    baca.staff_position(
        [-1, 0, 1],
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.hairpin(
        "p < f > p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(4.5),
)

maker(
    ("hp", 6),
    harmony.sixteenths(
        [4, -6, 4, 4, -2],
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.whisk_staff_position(),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 7),
    harmony.sixteenths(
        [10, "-"],
    ),
    baca.clef("bass"),
    baca.staff_lines(5),
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
)

maker(
    ("hp", (8, 11)),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
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
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=divisions,
        counts=[2, 3, 4, 5, 6, 7],
    ),
)

maker(
    ("va", 6),
    harmony.appoggiato(
        divisions=[8, 12, 8],
        incise=True,
        ),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.plts(),
    ),
)

maker(
    ("va", 7),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
        extra_counts=[2],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("sfp"),
)

maker(
    ("va", 8),
    baca.clef("alto"),
    baca.staff_lines(5),
)

# vc1

maker(
    ("vc1", (1, 5)),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=divisions.rotate(-1),
        counts=[3, 4, 5, 6, 7],
        rest_to=1,
    ),
)

maker(
    ("vc1", 6),
    baca.skeleton(
        r" \times 5/3 { c4 c4 c4 }",
    ),
    baca.dynamic("p"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("vc1", 7),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
        extra_counts=[1],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("vc1", 8),
    baca.clef("bass"),
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

maker(
    ("vc2", 6),
    harmony.appoggiato(
        divisions=[12, 8],
        incise=True,
    ),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.plts(),
    ),
)

maker(
    ("vc2", 7),
    harmony.sixteenths(
        [10, "-"],
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

# cb1

maker(
    ("cb1", 1),
    harmony.sixteenths(
        [2, -2, 2, -2, "-"],
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[:4],
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
)

maker(
    ("cb1", (2, 5)),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.appoggiato(
        #divisions=divisions.rotate(-3),
        divisions=[8, 16, 16, 20, 12],
        counts=[5, 6, 7],
        rest_to=2,
    ),
)

maker(
    ("cb1", 6),
    harmony.sixteenths(
        [10, 4, 6],
    ), 
    baca.dynamic("p"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("cb1", 7),
    baca.staff_lines(1),
    baca.clef("percussion"),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("cb1", 8),
    baca.clef("bass"),
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

maker(
    ("cb2", 6),
    harmony.appoggiato(
        divisions=[12, 8],
        incise=True,
    ),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.plts(),
    ),
)

maker(
    ("cb2", 7),
    harmony.sixteenths(
        [10, "-"],
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

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 11)),
    harmony.appoggiato(
        counts=[7],
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], [(1, 5), (8, 11)]),
    baca.note_head_style_harmonic(
        baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)
