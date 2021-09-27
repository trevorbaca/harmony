import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [A] #####################################
###############################################################################

stage_markup = (
    ("[A.1]", 1),
    ("[A.2]", 2),
    ("[▶C.1]", 3, "#darkgreen"),
)

commands = baca.CommandAccumulator(
    **baca.segments(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    score_template=harmony.ScoreTemplate(),
    time_signatures=[
        (6, 4),
        (5, 4),
        (3, 4),
    ],
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "A",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "A",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.open_volta(baca.selectors.skip(2 - 1)),
    baca.close_volta(baca.selectors.skip(3 - 1), format_slot="after"),
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(3 - 1)),
)

# bfl

commands(
    ("bfl", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Bfl."),
        baca.start_markup(
            r"\harmony-bass-flute-markup",
            literal=True,
        ),
    ),
    harmony.appoggiato(
        divisions=[16, 8, 12, 8],
        counts=[9, 6, 8, 4],
        incise=True,
    ),
    baca.pitch(
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
    baca.dls_staff_padding(5),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.dots_x_extent_false(
        baca.selectors.leaves(grace=False),
    ),
)

commands(
    ("bfl", 3),
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

# perc1

commands(
    "perc1",
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 1),
    harmony.margin_markup("Perc. I"),
    baca.start_markup(
        r"\harmony-percussion-i-markup",
        literal=True,
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        ["-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.selectors.leaves((-2, None)),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 2),
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
    ("perc1", [1, 2]),
    baca.breathe(),
)

commands(
    ("perc1", (1, 2)),
    harmony.bass_drum_staff_position(),
)

commands(
    ("perc1", 3),
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

# perc2

commands(
    ("perc2", (1, 2)),
    baca.suite(
        harmony.margin_markup("Perc. II"),
        baca.start_markup(
            r"\harmony-percussion-ii-markup",
            literal=True,
        ),
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 3),
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
        abjad.tweak(5 + 1).staff_padding,
        literal=True,
    ),
)

# hp

commands(
    ("hp", (1, 2)),
    baca.suite(
        harmony.margin_markup("Hp."),
        baca.start_markup(
            r"\harmony-harp-markup",
            literal=True,
        ),
    ),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
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
    ("hp", 3),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [10, "-"],
    ),
    baca.pitch("G1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "mf-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(6),
)

# va

commands(
    ("va", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Va."),
        baca.start_markup(
            r"\harmony-viola-markup",
            literal=True,
        ),
    ),
    harmony.appoggiato(
        divisions=[16, 8, 12, 8],
        incise=True,
    ),
    baca.pitch("Gqf4"),
    baca.markup(
        r"\baca-seven-a",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.plts(),
    ),
)

commands(
    ("va", 3),
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
    baca.dynamic("sfp"),
    baca.dls_staff_padding(6),
)

# vc1

commands(
    ("vc1", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Vc. I"),
        baca.start_markup(
            r"\harmony-cello-i-markup",
            literal=True,
        ),
    ),
    baca.skeleton(
        r"c4 \times 5/3 { c4 c4 c4 } \times 5/3 { c4 c4 c4 }",
    ),
    baca.repeat_tie(
        baca.selectors.leaves([1, 4]),
    ),
    baca.tuplet_bracket_down(),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.selectors.lparts([4, 5]),
        selector=lambda _: baca.Selection(_).leaves().rleak().rleak(),
    ),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 ->",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    ("vc1", 3),
    baca.clef(
        "percussion",
        baca.selectors.leaf(1),
    ),
    baca.staff_lines(
        1,
        baca.selectors.leaf(1),
    ),
    harmony.sixteenths(
        [5, -5, 1, -4],
        extra_counts=[1],
    ),
    baca.new(
        harmony.bridge_staff_position(),
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic("sfp"),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("vc1", (1, 3)),
    baca.new(
        baca.pitch("A2"),
        baca.accent(),
        baca.stem_tremolo(),
        baca.dls_staff_padding(6),
        selector=baca.selectors.pheads((None, -1)),
    ),
    baca.new(
        baca.dls_staff_padding(6),
        selector=baca.selectors.pheads((-1, None)),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((2, -2)),
    ),
)

# vc2

commands(
    ("vc2", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Vc. II"),
        baca.start_markup(
            r"\harmony-cello-ii-markup",
            literal=True,
        ),
    ),
    harmony.appoggiato(
        divisions=[16, 8, 12, 8],
        incise=True,
    ),
    baca.pitch("B3"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.plts(),
    ),
)

commands(
    ("vc2", 3),
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
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc2", (1, 3)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Cb. I"),
        baca.start_markup(
            r"\harmony-contrabass-i-markup",
            literal=True,
        ),
    ),
    harmony.sixteenths(
        [18, 6, 10, 4, 6],
    ),
    baca.pitch("A1"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.selectors.lparts([4, 7]),
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 ->",
        abjad.tweak(3).staff_padding,
        final_piece_spanner=False,
        pieces=baca.selectors.plts(),
    ),
)

commands(
    ("cb1", 3),
    baca.staff_lines(1),
    baca.clef("percussion"),
    baca.skeleton(
        r"r4 \times 4/5 { r4. c16 r16 c16 r16 }",
    ),
    baca.tuplet_number_text(abjad.Markup("5:4")),
    harmony.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("sfp"),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5 + 1).staff_padding,
        right_broken=True,
        selector=baca.selectors.leaves((-4, None), rleak=True),
    ),
)

# cb2

commands(
    ("cb2", (1, 2)),
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Cb. II"),
        baca.start_markup(
            r"\harmony-contrabass-ii-markup",
            literal=True,
        ),
    ),
    harmony.appoggiato(
        divisions=[16, 8, 12, 8],
        incise=True,
    ),
    baca.pitch("Dqs3"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.tweak(5.5 + 1).staff_padding,
        literal=True,
    ),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3 + 1).staff_padding,
        map=baca.selectors.plts(),
    ),
)

commands(
    ("cb2", 3),
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
    baca.scp_spanner(
        "P1 =|",
        abjad.tweak(3 + 1).staff_padding,
        autodetect_right_padding=False,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb2", (1, 3)),
    baca.dls_staff_padding(4),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(
        commands,
        **baca.segments(runtime=True),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
