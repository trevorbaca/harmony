import abjad
import baca

from harmony import library as harmony

#########################################################################################
######################################### 02 [B] ########################################
#########################################################################################

stage_markup = (
    ("[B.1-5]", 1),
    ("[◀A.2]", 6, "#darkgreen"),
    ("[▶C.1]", 7, "#darkgreen"),
    ("[B.6]", 8),
)

score = harmony.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    time_signatures=[
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (5, 4),
        (5, 4),
        (5, 4),
        (1, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "B",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "B",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("144", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("5:4(8)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(8 - 1)),
    baca.metronome_mark("5:4(8)=4", baca.selectors.skip(8 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(12 - 1)),
)

divisions = baca.Sequence([16, 20, 12, 12, 12, 16])
sixteenths = baca.Sequence([(2, 2, _ - 4) for _ in divisions])
sixteenths = sixteenths.flatten()

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-one",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(12 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", (1, 5)),
    harmony.sixteenths(
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        baca.selectors.pleaves(([0, 1], 3)),
    ),
    baca.hairpin(
        "p <| mf |> p",
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dls_staff_padding(3),
)

commands(
    ("bfl", 6),
    harmony.appoggiato(
        divisions=[12, 8],
        counts=[8, 4],
        incise=True,
    ),
    baca.pitches(
        "A3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads([0, 2], grace=False),
    ),
    baca.dynamic(
        "mf-mp",
        selector=baca.selectors.pheads([1, 3], grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("bfl", 7),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.dls_staff_padding(3),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
    ),
)

commands(
    ("bfl", (8, 11)),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        baca.selectors.plts(([0, 1], 3)),
    ),
    baca.hairpin(
        "p <| mp |> p",
        map=baca.selectors.clparts([3]),
        measures=8,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "p <| mf |> p",
        map=baca.selectors.clparts([3]),
        measures=9,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "p <| f |> p",
        map=baca.selectors.clparts([3]),
        measures=10,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "p <| ff |> p",
        map=baca.selectors.clparts([3]),
        measures=11,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dls_staff_padding(3),
)

# perc1

commands(
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
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.new(
        baca.staff_lines(
            1,
            baca.selectors.leaf(1, grace=False),
        ),
        baca.hairpin(
            "o<| f",
            selector=baca.selectors.leaves((-3, None)),
        ),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.tweak(6).staff_padding,
            literal=True,
            selector=baca.selectors.pleaf(0, grace=False),
        ),
        measures=5,
    ),
)

commands(
    ("perc1", 6),
    harmony.sixteenths(
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o<| mf",
        selector=lambda _: baca.Selection(_).leaves()[:1].rleak(),
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.selectors.leaves((-2, None)),
    ),
)

commands(
    ("perc1", (5, 6)),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.dls_staff_padding(6),
        selector=baca.selectors.plts(grace=False),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.selectors.leaves((2, 8), grace=False),
    ),
)

commands(
    ("perc1", 7),
    baca.staff_lines(3),
    harmony.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
    harmony.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(5 + 1).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", (8, 11)),
    harmony.appoggiato(
        counts=[7],
        rest_after=True,
    ),
    baca.staff_position(-2),
    baca.new(
        baca.dynamic("p"),
        selector=baca.selectors.rest(0),
        measures=8,
    ),
    baca.new(
        baca.dynamic("mp"),
        selector=baca.selectors.rest(0),
        measures=9,
    ),
    baca.new(
        baca.dynamic("mf"),
        selector=baca.selectors.rest(0),
        measures=10,
    ),
    baca.new(
        baca.dynamic("f"),
        selector=baca.selectors.rest(0),
        measures=11,
    ),
    baca.dls_staff_padding(
        5.5,
        selector=baca.selectors.leaves(grace=False),
    ),
)

# perc2

commands(
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
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 4),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.tuplet_bracket_up(),
)

commands(
    ("perc2", (1, 4)),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(([0, -1])),
    ),
)

commands(
    ("perc2", 5),
    harmony.sixteenths(
        ["-", 6],
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 6),
    harmony.sixteenths(
        [4, -6, 4, 4, -2],
    ),
)

commands(
    ("perc2", (5, 6)),
    harmony.slate_staff_position(),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.selectors.runs((None, 1), rleak=True),
    ),
)

commands(
    ("perc2", 7),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    ),
    harmony.purpleheart_staff_positions([0, 0, -2, 0, -2]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(5.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", [8, 11]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc2", (9, 10)),
    baca.make_notes(),
)

commands(
    ("perc2", (8, 11)),
    baca.staff_lines(1),
    baca.tuplet_bracket_up(),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(([0, -1])),
    ),
    baca.hairpin(
        "p < mf",
    ),
    baca.dls_staff_padding(6.5),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

# hp

commands(
    ("hp", (1, 5)),
    baca.clef("treble"),
    harmony.sixteenths(
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "p < f > p",
        map=baca.selectors.clparts([3]),
        measures=1,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "(p) < f > p",
        map=baca.selectors.clparts([3]),
        measures=(2, 5),
        pieces=baca.selectors.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(3),
)

commands(
    ("hp", 6),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, -6, 4, 4, -2],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", 7),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [10, "-"],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
)

commands(
    ("hp", (8, 11)),
    baca.clef("treble"),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "p < mp > p",
        map=baca.selectors.clparts([3]),
        measures=8,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "(p) < mf > p",
        map=baca.selectors.clparts([3]),
        measures=9,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "(p) < f > p",
        map=baca.selectors.clparts([3]),
        measures=10,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.hairpin(
        "(p) < ff > p",
        map=baca.selectors.clparts([3]),
        measures=11,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(3),
)

# va

commands(
    ("va", (1, 5)),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.appoggiato(
        divisions=[16, 12, 16, 12, 16, 16],
        counts=[2, 3, 4, 5, 6, 7],
    ),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("va", 6),
    harmony.appoggiato(
        divisions=[8, 12, 8],
        incise=True,
    ),
    baca.pitch("Gqf4"),
    baca.dynamic("mp"),
    baca.dls_staff_padding(3),
    baca.markup(
        r"\baca-seven-a",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.plts(),
    ),
)

commands(
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
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic('"ff"'),
    baca.dls_staff_padding(6),
)

commands(
    ("va", 8),
    baca.clef("alto"),
    baca.staff_lines(5),
)

commands(
    ("va", (8, 11)),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-27),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.selectors.leaves((None, -1), grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

# vc1

commands(
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
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-1),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("vc1", 5),
    baca.clef("bass"),
    baca.make_notes(),
)

commands(
    ("vc1", 6),
    baca.skeleton(
        r" \times 5/3 { c4 c4 c4 }",
    ),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
    ),
    baca.tuplet_bracket_down(),
)

commands(
    ("vc1", (5, 6)),
    baca.pitch(
        "A2",
        baca.selectors.rleaves(),
    ),
    baca.stem_tremolo(
        lambda _: baca.Selection(_).leaves().rleak().pleaves(),
    ),
    baca.accent(
        lambda _: baca.Selection(_).leaves().rleak().pheads(),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([1, 2]),
        selector=lambda _: baca.Selection(_).leaves().rleak().rleak(),
    ),
    baca.dls_staff_padding(6),
    baca.scp_spanner(
        "P2 -> P4 -> P1 -> P3 ->",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    ("vc1", 7),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=baca.selectors.leaf(1),
    ),
    harmony.sixteenths(
        [5, -5, 1, "-"],
        extra_counts=[1],
    ),
    baca.new(
        harmony.bridge_staff_position(),
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic('"ff"'),
        baca.dls_staff_padding(6),
        selector=baca.selectors.pleaf(1),
    ),
)

commands(
    ("vc1", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((1, 5)),
    ),
)

commands(
    ("vc1", 8),
    baca.clef("tenor"),
    baca.staff_lines(5),
)

commands(
    ("vc1", (8, 11)),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-19),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.selectors.leaves((None, -1), grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

# vc2

commands(
    ("vc2", (1, 2)),
    harmony.sixteenths(
        [20, "-"],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(15, 8), (3, 8)]),
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
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dls_staff_padding(5),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", (3, 5)),
    baca.clef("tenor"),
    harmony.appoggiato(
        divisions=[8, 16, 12, 16],
        counts=[4, 5, 6, 7],
        rest_to=1,
    ),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-3),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
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
        map=baca.selectors.plts(),
    ),
)

commands(
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
        baca.selectors.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", (8, 11)),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-18),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.selectors.leaves((None, -1), grace=False),
    ),
    baca.dls_staff_padding(
        4,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

# cb1

commands(
    ("cb1", 1),
    harmony.sixteenths(
        [2, -2, 2, -2, "-"],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 4)),
    ),
)

commands(
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
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-2),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("cb1", 6),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, 4, 6],
    ),
    baca.pitch("A1"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "P2 -> P4 -> P1 -> P3 ->",
        abjad.tweak(3).staff_padding,
        final_piece_spanner=False,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    ("cb1", 7),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic('"ff"'),
    baca.dls_staff_padding(6),
    baca.rest_extra_offset(
        (-1, 0),
        baca.selectors.rest(-1),
    ),
)

commands(
    ("cb1", (8, 11)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-32),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.selectors.leaves((None, -1), grace=False),
    ),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

# cb2

commands(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [20, "-"],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(15, 8), (3, 8)]),
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
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dls_staff_padding(5),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
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
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(n=-4),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "f-mp",
        selector=baca.selectors.pheads(grace=False),
    ),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("cb2", 6),
    baca.clef("bass"),
    harmony.appoggiato(
        divisions=[12, 8],
        incise=True,
    ),
    baca.pitch("Dqs3"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.tweak(5.5 + 1).staff_padding,
        literal=True,
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(3),
    baca.damp_spanner(
        abjad.tweak(3 + 1).staff_padding,
        map=baca.selectors.plts(),
    ),
)

commands(
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
        baca.selectors.pleaves(grace=False),
    ),
    baca.hairpin(
        "mf >o niente",
    ),
    baca.dls_staff_padding(3),
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb2", (8, 11)),
    baca.clef("treble"),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-23),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.hairpin(
        "p < ff",
        selector=baca.selectors.leaves((None, -1), grace=False),
    ),
    baca.dls_staff_padding(
        6,
        baca.selectors.leaves(grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 11)),
    harmony.appoggiato(
        counts=[7],
    ),
)

commands(
    (["va", "vc1", "cb1"], [(1, 5), (8, 11)]),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
)

commands(
    ("vc2", [(3, 5), (8, 11)]),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
)

commands(
    (["cb2"], [(3, 5), (8, 11)]),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(
        commands,
        **baca.segment_interpretation_defaults(),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        global_rests_in_every_staff=True,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        fermata_measure_empty_overrides=[12],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        score=score,
        stage_markup=stage_markup,
        transpose_score=True,
    )
