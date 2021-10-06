import abjad
import baca

from harmony import library as harmony

#########################################################################################
######################################### 04 [D] ########################################
#########################################################################################

stage_markup = (
    ("[D.1-6]", 1),
    ("[D.7]", 8),
    ("[◀B.6]", 9, "#darkgreen"),
    ("[D.8]", 10),
)

score = harmony.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    time_signatures=[
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (3, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "D",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "D",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("72", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(9 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(9 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(11 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(7 - 1)),
    baca.global_fermata("short", baca.selectors.rest(10 - 1)),
)

# bfl

commands(
    ("bfl", (1, 6)),
    harmony.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
)

commands(
    ("bfl", 8),
    harmony.tessera_1(
        6,
        advance=72,
        gap=True,
    ),
    baca.pitch("F#3"),
)

commands(
    ("bfl", 9),
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
        "o<| ff |> p",
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
)

commands(
    ("bfl", 11),
    harmony.tessera_1(
        6,
        advance=72 + 12,
        gap=True,
    ),
    baca.pitch("F#3"),
)

commands(
    ("bfl", (1, 11)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 6)),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
    baca.new(
        harmony.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=baca.selectors.tleaves(),
        ),
        measures=(1, 2),
    ),
    baca.new(
        harmony.purpleheart_staff_positions([0, 2, 0, 2, 2]),
        baca.hairpin(
            "p < f",
            selector=baca.selectors.tleaves(),
        ),
        measures=(5, 6),
    ),
)

commands(
    ("perc1", 9),
    harmony.appoggiato(
        counts=[7],
        rest_after=True,
    ),
    harmony.purpleheart_staff_positions([-2]),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc1", (1, 11)),
    baca.dls_staff_padding(5.5),
)

# perc2

commands(
    ("perc2", 1),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
    harmony.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("perc2", (5, 6)),
    harmony.train(
        [2],
        rest_leaves=[0],
    ),
    harmony.purpleheart_staff_positions([2]),
    baca.hairpin(
        "p < f",
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("perc2", 8),
    harmony.train(
        [2],
        rest_leaves=[0, 1, 2],
    ),
    baca.dynamic("p-sub"),
)

commands(
    ("perc2", 9),
    harmony.sixteenths(
        [4, 4, "-"],
    ),
)

commands(
    ("perc2", (8, 9)),
    harmony.purpleheart_staff_positions([2]),
    baca.metric_modulation_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

commands(
    ("perc2", 11),
    harmony.sixteenths(
        [-6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
    harmony.purpleheart_staff_positions([0]),
    baca.dynamic("f-sub"),
    baca.metric_modulation_spanner(
        abjad.tweak(3).staff_padding,
        right_broken=True,
        selector=baca.selectors.pleaves(rleak=True),
    ),
)

commands(
    ("perc2", (1, 11)),
    baca.dls_staff_padding(5.5),
)

# hp

commands(
    ("hp", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.pitch("C#4"),
)

commands(
    ("hp", 8),
    harmony.tessera_1(
        5,
        advance=72,
    ),
    baca.pitch("C#4"),
)

commands(
    ("hp", 9),
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
        "p < ff > p",
        map=baca.selectors.clparts([3]),
        pieces=baca.selectors.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", 11),
    harmony.tessera_1(
        5,
        advance=72 + 12,
    ),
    baca.pitch("C#4"),
)

commands(
    ("hp", (1, 11)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", (1, 6)),
    harmony.tessera_1(
        4,
        gap=True,
    ),
)

commands(
    ("va", 8),
    harmony.tessera_1(
        4,
        advance=72,
        gap=True,
    ),
)

commands(
    ("va", 9),
    baca.clef("alto"),
    baca.staff_lines(5),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-27 - 21),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.dls_staff_padding(
        4,
        selector=baca.selectors.leaves(grace=False),
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
    ("va", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.tessera_1(
        4,
        advance=72 + 12,
        gap=True,
    ),
)

commands(
    ("va", [(1, 6), 8, 11]),
    harmony.bridge_staff_position(),
)

commands(
    ("va", [(1, 8), 11]),
    baca.dls_staff_padding(6),
)

# vc1

commands(
    ("vc1", (1, 6)),
    harmony.tessera_1(
        3,
        gap=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("vc1", 8),
    harmony.tessera_1(
        3,
        advance=72,
        gap=True,
    ),
)

commands(
    ("vc1", [(1, 8), 11]),
    baca.pitch("F#3"),
)

commands(
    ("vc1", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-19 - 21),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
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
    ("vc1", 11),
    baca.clef("bass"),
    harmony.tessera_1(
        3,
        advance=72 + 12,
        gap=True,
    ),
)

commands(
    ("vc1", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc2

commands(
    ("vc2", (1, 6)),
    harmony.tessera_1(
        2,
        gap=True,
    ),
)

commands(
    ("vc2", 8),
    harmony.tessera_1(
        2,
        advance=72,
        gap=True,
    ),
)

commands(
    ("vc2", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-18 - 21),
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
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
    ("vc2", 11),
    baca.clef("bass"),
    harmony.tessera_1(
        2,
        advance=72 + 12,
        gap=True,
    ),
)

commands(
    ("vc2", [(1, 8), 11]),
    baca.pitch("F3"),
)

commands(
    ("vc2", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc1, vc2

commands(
    (["vc1", "vc2"], [(1, 6), 8, 11]),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).ltleaves().rleak(grace=False),
    ),
)

# cb1

commands(
    ("cb1", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
)

commands(
    ("cb1", 8),
    harmony.tessera_1(
        1,
        advance=72,
    ),
)

commands(
    ("cb1", 9),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-32 - 21),
        do_not_transpose=True,
        selector=baca.selectors.plts(grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.tweak(-0.5).self_alignment_X,
        selector=baca.selectors.leaf(0, grace=False),
    ),
    baca.dls_staff_padding(
        6,
        selector=baca.selectors.leaves(grace=False),
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
    ("cb1", 11),
    harmony.tessera_1(
        1,
        advance=72 + 12,
    ),
)

commands(
    ("cb1", [(1, 6), 8, 11]),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves().rleak(grace=False),
    ),
    baca.markup(
        r"\baca-eleven-e",
        literal=True,
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(1.5).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("cb1", [(1, 8), 11]),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.pizzicato_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves().rleak(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.tweak(2.5).X_offset,
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("cb2", 8),
    baca.make_notes(),
)

commands(
    ("cb2", 9),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
    ),
)

commands(
    ("cb2", (8, 9)),
    baca.clef("bass"),
    baca.pitch("Ab1"),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("cb2", 11),
    baca.make_notes(),
    baca.flat_glissando(
        "E1",
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< f",
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("cb2", (1, 11)),
    baca.dls_staff_padding(4),
)

# cb1, cb2

commands(
    ("cb1", [(1, 6), 8, 11]),
    baca.note_head_style_harmonic(),
)

commands(
    ("cb2", (1, 6)),
    baca.note_head_style_harmonic(),
)

# bfl, hp, va, vc1, vc2, cb1, cb2

commands(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [(1, 6), 8, 11]),
    baca.accent(
        baca.selectors.pheads(),
    ),
)

commands(
    ("cb2", (1, 6)),
    baca.accent(
        baca.selectors.pheads(),
    ),
)

commands(
    (["bfl", "hp", "cb1", "cb2"], (1, 3)),
    baca.hairpin(
        "pp p mp mf f",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    (["bfl", "hp", "cb1", "cb2"], (4, 6)),
    baca.hairpin(
        "mf mp p pp pp pp",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    (["va", "vc2"], (1, 3)),
    baca.hairpin(
        'pp p mp mf "f"',
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    ("vc1", (1, 3)),
    baca.hairpin(
        'p mp mf "f"',
        bookend=False,
        pieces=baca.selectors.plts((1, None)),
    ),
)

commands(
    (["va", "vc1", "vc2"], (4, 6)),
    baca.hairpin(
        "mf mp p pp pp pp",
        bookend=False,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [8, 11]),
    baca.dynamic("pp"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1"], 9),
    harmony.appoggiato(
        counts=[7],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 9),
    baca.new(
        baca.note_head_style_harmonic(
            baca.selectors.pleaves(grace=True),
        ),
        map=lambda _: baca.Selection(_).pleaves(grace=True).runs(),
    ),
)

if __name__ == "__main__":
    keywords = baca.interpret.make_keyword_dictionary(
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[7, 10],
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        score=score,
        stage_markup=stage_markup,
        transpose_score=True,
    )
    metadata, persist, score, timing = baca.build.interpret_segment(
        commands,
        **keywords,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../../stylesheet.ily"],
        preamble=baca.interpret.nonfirst_preamble.split("\n"),
    )
    baca.build.make_segment_pdf(lilypond_file, metadata, persist, timing)
