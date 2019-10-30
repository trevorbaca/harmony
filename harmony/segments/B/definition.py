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
    deactivate=[
        *abjad.tags.instrument_color_tags(),
        *abjad.tags.margin_markup_color_tags(),
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
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
        abjad.tweak(
            (0, 18),
            tag=abjad.tags.NOT_PARTS,
        ).extra_offset,
        abjad.tweak(
            (0, 10),
            tag=abjad.tags.ONLY_PARTS,
        ).extra_offset,
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

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-one",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(12 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", (1, 5)),
    harmony.sixteenths(
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        baca.pleaves().get([0, 1], 3),
    ),
    baca.hairpin(
        "p <| mf |> p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(3),
)

maker(
    ("bfl", 6),
    harmony.appoggiato(
        divisions=[12, 8],
        counts=[8, 4],
        incise=True,
    ),
    baca.pitches(
        "A3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a,
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.pheads(grace=False).get([0, 2]),
    ),
    baca.dynamic(
        "mf-mp",
        selector=baca.pheads(grace=False).get([1, 3]),
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.pitch("F3"),
    baca.dynamic('"mf"'),
    baca.dls_staff_padding(3),
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
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        baca.plts().get([0, 1], 3),
    ),
    baca.hairpin(
        "p <| mp |> p",
        map=baca.clparts([3]),
        measures=8,
        pieces=baca.clparts([1]),
    ),
    baca.hairpin(
        "p <| mf |> p",
        map=baca.clparts([3]),
        measures=9,
        pieces=baca.clparts([1]),
    ),
    baca.hairpin(
        "p <| f |> p",
        map=baca.clparts([3]),
        measures=10,
        pieces=baca.clparts([1]),
    ),
    baca.hairpin(
        "p <| ff |> p",
        map=baca.clparts([3]),
        measures=11,
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(3),
)

# perc1

maker(
    ("perc1", (1, 5)),
    harmony.appoggiato(
        counts=[4, 4, 4, 4, 4, 0, 0, 0],
        divisions=[16, 20, 16, 20, 10, 6],
        prefix_talea=[2, 3],
        prefix_counts=[0, 0, 0, 0, 0, 2],
        rest_after=[0, 1, 2, 3, 4],
        tie=[-2],
        written_quarters=[-2],
        invisible=[-1],
    ),
    baca.staff_position(
        -2,
        selector=baca.leaves(grace=True),
    ),
    baca.new(
        baca.staff_lines(
            1,
            baca.leaf(1, grace=False),
        ),
        baca.hairpin(
            "o<| f",
            selector=baca.leaves()[-3:],
        ),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.tweak(3).staff_padding,
            literal=True,
            selector=baca.pleaf(0, grace=False),
        ),
        measures=5,
    ),
)

maker(
    ("perc1", 6),
    harmony.sixteenths(
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o<| mf",
        selector=baca.leaves()[:1].rleak(),
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.leaves()[-2:],
    ),
)

maker(
    ("perc1", (5, 6)),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.dls_staff_padding(6),
        selector=baca.plts(grace=False),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves(grace=False)[2:8],
    ),
)

maker(
    ("perc1", 7),
    baca.staff_lines(3),
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
    baca.dynamic("p"),
    baca.dls_staff_padding(7.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc1", (8, 11)),
    harmony.appoggiato(
        counts=[7],
        rest_after=True,
    ),
    baca.staff_position(-2),
    baca.new(
        baca.dynamic("p"),
        selector=baca.rest(0),
        measures=8,
    ),
    baca.new(
        baca.dynamic("mp"),
        selector=baca.rest(0),
        measures=9,
    ),
    baca.new(
        baca.dynamic("mf"),
        selector=baca.rest(0),
        measures=10,
    ),
    baca.new(
        baca.dynamic("f"),
        selector=baca.rest(0),
        measures=11,
    ),
    baca.dls_staff_padding(7),
)

# perc2

maker(
    ("perc2", (1, 3)),
    baca.staff_lines(1),
    baca.make_repeat_tied_notes(),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 4),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.tuplet_bracket_up(),
)

maker(
    ("perc2", (1, 4)),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        ["-", 6],
    ),
    baca.dynamic('"mf"'),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(3 + 1).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 6),
    harmony.sixteenths(
        [4, -6, 4, 4, -2],
    ),
)

maker(
    ("perc2", (5, 6)),
    harmony.slate_staff_position(),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.runs()[:1].rleak(),
    ),
)

maker(
    ("perc2", 7),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(7.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
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
    baca.tuplet_bracket_up(),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.hairpin(
        "p < mf",
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(3 + 1).staff_padding,
        literal=True,
    ),
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
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "p < f > p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(3),
)

maker(
    ("hp", 6),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, -6, 4, 4, -2],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic('"mf"'),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 7),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [10, "-"],
    ),
    baca.pitch("G1"),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(7),
)

maker(
    ("hp", (8, 11)),
    baca.clef("treble"),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "p < mp > p",
        map=baca.clparts([3]),
        measures=8,
        pieces=baca.clparts([1]),
    ),
    baca.hairpin(
        "p < mf > p",
        map=baca.clparts([3]),
        measures=9,
        pieces=baca.clparts([1]),
    ),
    baca.hairpin(
        "p < f > p",
        map=baca.clparts([3]),
        measures=10,
        pieces=baca.clparts([1]),
    ),
    baca.hairpin(
        "p < ff > p",
        map=baca.clparts([3]),
        measures=11,
        pieces=baca.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(3),
)

# va

maker(
    ("va", (1, 5)),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=[16, 12, 16, 12, 16, 16],
        counts=[2, 3, 4, 5, 6, 7],
    ),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat,
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("va", 6),
    harmony.appoggiato(
        divisions=[8, 12, 8],
        incise=True,
        ),
    baca.pitch("Gqf4"),
    baca.dynamic("mp"),
    baca.dls_staff_padding(3),
    baca.markup(
        r"\harmony-seven-a",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
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
        denominator=None,
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
    baca.dls_staff_padding(9),
)

maker(
    ("va", 8),
    baca.clef("alto"),
    baca.staff_lines(5),
)

maker(
    ("va", (8, 11)),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-27),
        selector=baca.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.leaves(grace=False)[:-1],
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

# vc1

maker(
    ("vc1", (1, 4)),
    baca.clef("tenor"),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=[12, 16, 12, 16, 16, 16],
        counts=[3, 4, 5, 6, 7],
        rest_to=1,
    ),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-1),
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc1", 5),
    baca.clef("bass"),
    baca.make_notes(),
)

maker(
    ("vc1", 6),
    baca.skeleton(
        r" \times 5/3 { c4 c4 c4 }",
    ),
    baca.repeat_tie(
        baca.pleaf(0),
    ),
    baca.tuplet_bracket_down(),
)

maker(
    ("vc1", (5, 6)),
    baca.pitch(
        "A2",
        baca.leaves().rleak(),
    ),
    baca.stem_tremolo(
        baca.leaves().rleak().pleaves(),
    ),
    baca.accent(
        baca.leaves().rleak().pheads(),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.mgroups([1, 2]),
        selector=baca.leaves().rleak().rleak(),
    ),
    baca.dls_staff_padding(6),
    baca.scp_spanner(
        "P2 -> P4 -> P1 -> P3 ->",
        abjad.tweak(3).staff_padding,
        pieces=baca.plts(),
    ),
)

maker(
    ("vc1", 7),
    baca.clef("percussion"),
    baca.staff_lines(
        1,
        baca.leaf(1),
    ),
    harmony.sixteenths(
        [5, -5, 1, "-"],
        extra_counts=[1],
    ),
    baca.new(
        baca.staff_position(0),
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic("sfp"),
        baca.dls_staff_padding(9),
        selector=baca.pleaf(1),
    ),
)

maker(
    ("vc1", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[1:5],
    ),
)

maker(
    ("vc1", 8),
    baca.clef("tenor"),
    baca.staff_lines(5),
)

maker(
    ("vc1", (8, 11)),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-19),
        selector=baca.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.leaves(grace=False)[:-1],
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

# vc2

maker(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        [20, "-"],
        preprocessor=baca.sequence().fuse().split_divisions([(15, 8), (3, 8)]),
        denominator=None,
        do_not_rewrite_meter=True,
        extra_counts=[-6],
        untie=True,
        after_graces=[1],
    ),
    baca.tuplet_bracket_down(),
    baca.interpolate_pitches("G2", "F2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.dls_staff_padding(5),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc2", (3, 5)),
    baca.clef("tenor"),
    harmony.appoggiato(
        divisions=[8, 16, 12, 16],
        counts=[4, 5, 6, 7],
        rest_to=1,
    ),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-3),
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc2", 6),
    baca.clef("bass"),
    harmony.appoggiato(
        divisions=[12, 8],
        incise=True,
    ),
    baca.pitch("B3"),
    baca.dynamic("mp"),
    baca.dls_staff_padding(3),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
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
    baca.interpolate_pitches("G2", "F2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc2", (8, 11)),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-18),
        selector=baca.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.leaves(grace=False)[:-1],
    ),
    baca.dls_staff_padding(
        4,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

# cb1

maker(
    ("cb1", 1),
    harmony.sixteenths(
        [2, -2, 2, -2, "-"],
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:4],
    ),
)

maker(
    ("cb1", (2, 5)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=[16, 16, 12, 16, 12],
        counts=[5, 6, 7],
    ),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-2),
        do_not_transpose=True,
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        6,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("cb1", 6),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, 4, 6],
    ), 
    baca.pitch("A1"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.leaves().rleak(),
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "P2 -> P4 -> P1 -> P3 ->",
        abjad.tweak(3).staff_padding,
        final_piece_spanner=False,
        pieces=baca.plts(),
    ),
)

maker(
    ("cb1", 7),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
    baca.dls_staff_padding(6),
    baca.rest_extra_offset(
        (-1.5, 0),
        baca.rest(-1),
    ),
)

maker(
    ("cb1", (8, 11)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-32),
        do_not_transpose=True,
        selector=baca.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.leaves(grace=False)[:-1],
    ),
    baca.dls_staff_padding(
        6,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [20, "-"],
        preprocessor=baca.sequence().fuse().split_divisions([(15, 8), (3, 8)]),
        denominator=None,
        do_not_rewrite_meter=True,
        extra_counts=[-6],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F#2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.dls_staff_padding(5),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("cb2", (3, 5)),
    baca.clef("treble"),
    harmony.appoggiato(
        divisions=[8, 16, 12, 16],
        counts=[6, 7],
        rest_to=1,
    ),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-4),
        do_not_transpose=True,
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.pheads(grace=False)
    ),
    baca.dls_staff_padding(
        6,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("cb2", 6),
    baca.clef("bass"),
    harmony.appoggiato(
        divisions=[12, 8],
        incise=True,
    ),
    baca.pitch("Dqs3"),
    baca.markup(
        r"\harmony-eleven-a",
        abjad.tweak(5.5 + 1).staff_padding,
        literal=True,
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(3),
    baca.damp_spanner(
        abjad.tweak(3 + 1).staff_padding,
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
    baca.interpolate_pitches("G2", "F#2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.dls_staff_padding(3),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("cb2", (8, 11)),
    baca.clef("treble"),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-23),
        do_not_transpose=True,
        selector=baca.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.leaves(grace=False)[:-1],
    ),
    baca.dls_staff_padding(
        6,
        baca.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
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
    (["va", "vc1", "vc2", "cb1"], [(1, 5), (8, 11)]),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)

maker(
    (["cb2"], [(3, 5), (8, 11)]),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)
