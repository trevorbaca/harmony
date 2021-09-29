import abjad
import baca

from harmony import library as harmony

#########################################################################################
######################################### 11 [K] ########################################
#########################################################################################

stage_markup = (
    ("[▶L.1]", 1, "#darkgreen"),
    ("[K.1]", 2),
    ("[K.2-3]", 4),
    ("[◀I.1]", 6, "#darkgreen"),
    ("[▶L.4]", 7, "#darkgreen"),
    ("[▶L.6]", 8, "#darkgreen"),
    ("[K.4]", 10),
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
        (4, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (6, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (4, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "K",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "K",
            baca.selectors.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(10 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.selectors.skip(10 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(9 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-nine",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-ten",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(9 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    harmony.sixteenths(
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    ),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        baca.levine_multiphonic(5),
        literal=True,
    ),
)

commands(
    ("bfl", 5),
    harmony.sixteenths(
        ["-", 4, -2, 4],
    ),
    baca.pitch("Ab3"),
    baca.dynamic("mf"),
)

commands(
    ("bfl", 6),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.pitch("G3"),
)

commands(
    ("bfl", (5, 6)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        selector=baca.selectors.leaves((1, 9)),
    ),
)

commands(
    ("bfl", 7),
    harmony.sixteenths(
        [4, 8],
    ),
    baca.breathe(
        baca.selectors.pleaf(1),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.clparts([2]),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
)


def selector(argument):
    selection = baca.Selection(argument).cmgroups([1])
    return baca.Selection(baca.Selection(_).pleaf(-1) for _ in selection)


commands(
    ("bfl", 8),
    harmony.sixteenths(
        [6, 6],
    ),
    baca.breathe(
        selector,
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.clparts([4]),
        pieces=baca.selectors.lparts([2, 2 + 1]),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", (7, 8)),
    baca.pitch("Dtqf5"),
    baca.hairpin(
        'o< "f" >o niente o< "f" >o niente',
        pieces=baca.selectors.lparts([1, 1, 2, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
)

commands(
    ("bfl", 10),
    harmony.sixteenths(
        ["-", 4, 4],
        fuse=True,
        do_not_rewrite_meter=True,
        written_quarters=([0], 1),
        invisible_pairs=True,
    ),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(5.5).staff_padding,
            right_broken=True,
        ),
        selector=baca.selectors.runs((-1, None), rleak=True),
    ),
)

commands(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", (4, 5)),
    harmony.sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< p > pp",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.hairpin(
        "pp < mp > pp",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.leaves((5, 8)),
    ),
)

commands(
    ("perc1", 6),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        '"f"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 7),
    harmony.sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 8),
    harmony.sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
    ),
)

commands(
    ("perc1", 10),
    harmony.sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        selector=baca.selectors.leaves((None, -1)),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        "o< p > pp pp < p > pp < p >o niente",
        abjad.tweak(10).staff_padding,
        pieces=baca.selectors.lparts([1, 1, 1, 1, 1, 1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", (2, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.bass_drum_staff_position(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaf(-1),
    ),
    baca.hairpin(
        "(p) >o niente",
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("perc2", 2),
    harmony.sixteenths(
        [-2, 10, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (4, 5)),
    harmony.sixteenths(
        [14, -4, 12, -2],
    ),
    harmony.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

commands(
    ("perc2", 6),
    harmony.sixteenths(
        [-12, -6, 3, -3],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 7),
    harmony.sixteenths(
        [2, -2],
    ),
    harmony.brake_drum_staff_position(),
)

commands(
    ("perc2", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves()[2:].rleak(),
    ),
)

commands(
    ("perc2", 8),
    harmony.sixteenths(
        [6, -6],
    ),
    harmony.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 10),
    harmony.sixteenths(
        [6, -4, 4, -2],
    ),
    harmony.tam_tam_staff_position(),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (1, 10)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.clef("treble"),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", 2),
    baca.clef("bass"),
    harmony.sixteenths(
        [-2, 10, "-"],
    ),
    baca.chunk(
        baca.pitch("C1"),
        baca.ottava_bassa(),
    ),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", (4, 5)),
    harmony.sixteenths(
        [14, -4, 12, -2],
    ),
    baca.chunk(
        baca.pitch("C1"),
        baca.ottava_bassa(),
    ),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

commands(
    ("hp", 6),
    baca.clef("treble"),
    harmony.sixteenths(
        [-4, -2, 4, -4, -6, 3, -3],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (1, 4), (1, 4), (3, 4)]),
        extra_counts=[0, 2, 0, 0],
        do_not_rewrite_meter=True,
        denominator=None,
    ),
    baca.new(
        baca.pitch("<B5 C#6>"),
        baca.double_flageolet(),
        baca.dynamic(
            "f-ancora",
            abjad.tweak(-0.9).self_alignment_X,
        ),
        selector=baca.selectors.pleaf(0),
    ),
    baca.new(
        baca.pitch("E4"),
        baca.dynamic(
            "f-ancora",
            abjad.tweak(-0.9).self_alignment_X,
        ),
        baca.snap_pizzicato(),
        selector=baca.selectors.phead(-1),
    ),
)

commands(
    ("hp", 7),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        baca.selectors.pheads(),
    ),
)

commands(
    ("hp", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=lambda _: baca.Selection(_).leaves()[5:].rleak(),
    ),
)

commands(
    ("hp", (1, 7)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [3, 1, 1, 1, -6],
        tie_all=True,
        written_quarters=[0],
        written_eighths=[2],
        invisible=[1, 3],
    ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=baca.selectors.lparts([1, 3]),
        selector=baca.selectors.run(0),
    ),
    baca.dls_staff_padding(6),
    baca.dynamic_text_x_offset(
        -1.5,
        baca.selectors.pleaf(1),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [6, -4, 4, -2],
    ),
    baca.chunk(
        baca.pitch("C1"),
        baca.ottava_bassa(),
    ),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (1, 10)),
    baca.ottava_bracket_staff_padding(8),
)

# va

commands(
    ("va", 1),
    harmony.sixteenths(
        ["+"],
        tie=[0],
    ),
    baca.pitch("D3"),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("va", 6),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\harmony-match-harp-decay-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("va", 8),
    harmony.sixteenths(
        [8, 3, 6],
    ),
    baca.clef("alto"),
    baca.pitch("Eb3"),
)

commands(
    ("va", [2, (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "A5",
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
        match=[0, 2],
    ),
)

# vc1

commands(
    ("vc1", 1),
    harmony.sixteenths(
        ["-", 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (2, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([0], 1),
        invisible=([1], 2),
    ),
    baca.tuplet_bracket_up(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=baca.selectors.lparts([1, 2]),
        selector=lambda _: baca.Selection(_).leaves()[-2:].rleak(),
    ),
    baca.dynamic_text_x_offset(
        -1.5,
        baca.selectors.pleaf(1),
    ),
    baca.trill_spanner(
        abjad.tweak(2.75).bound_details__right__padding,
        selector=lambda _: baca.Selection(_).leaves()[-2:].rleak(),
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5 + 1.5).staff_padding,
        autodetect_right_padding=False,
        # TODO: pitched trill suppresses start of text spanner
        # selector=lambda _: baca.Selection(_).leaves()[2:].rleak(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("vc1", 6),
    baca.clef(
        "bass",
        baca.selectors.phead(-1),
    ),
)

commands(
    ("vc1", 8),
    harmony.sixteenths(
        [14, 8, 8],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("vc1", (6, 8)),
    baca.pitch(
        "B4",
        baca.selectors.run(0),
    ),
    baca.pitch(
        "Aqf3",
        baca.selectors.run(1),
    ),
    baca.markup(
        r"\baca-eleven-e-flat",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
        selector=lambda _: baca.Selection(_).run(1).leaf(0),
    ),
)

commands(
    ("vc1", [(1, 2), (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "Gqs6",
        baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-eleven-d",
        abjad.tweak(2.5).X_offset,
        direction=abjad.Down,
        literal=True,
        match=[0, 2],
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        match=[0, 2],
        literal=True,
    ),
)

# vc2

commands(
    ("vc2", 1),
    harmony.sixteenths(
        ["+"],
        tie=[0],
    ),
    baca.pitch("D2"),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("vc2", 6),
    baca.clef(
        "bass",
        baca.selectors.phead(-1),
    ),
)

commands(
    ("vc2", 8),
    harmony.sixteenths(
        [8, 8, 14],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("vc2", [2, (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "F#5",
        baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
        match=[0, 2],
    ),
)

commands(
    ("vc2", (6, 8)),
    baca.pitch(
        "Dqs4",
        baca.selectors.run(0),
    ),
    baca.pitch(
        "F3",
        baca.selectors.run(1),
    ),
)

# cb1

commands(
    ("cb1", 1),
    harmony.sixteenths(
        ["-", 2, 2],
        preprocessor=lambda _: baca.Sequence(_)
        .fuse()
        .split_divisions([(1, 4), (2, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([0], 1),
        invisible=([1], 2),
    ),
    baca.tuplet_bracket_up(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=baca.selectors.lparts([1, 2]),
        selector=lambda _: baca.Selection(_).leaves()[-2:].rleak(),
    ),
    baca.dynamic_text_x_offset(
        -1.5,
        baca.selectors.pleaf(1),
    ),
    baca.trill_spanner(
        abjad.tweak(2.75).bound_details__right__padding,
        selector=lambda _: baca.Selection(_).leaves()[-2:].rleak(),
    ),
)

commands(
    ("cb1", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        autodetect_right_padding=False,
        # TODO: pitched trill suppresses start of text spanner
        # selector=lambda _: baca.Selection(_).leaves()[2:].rleak(),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("cb1", 8),
    harmony.sixteenths(
        [12, 7, 8],
        extra_counts=[1],
    ),
)

commands(
    ("cb1", [(1, 2), (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "C#6",
        baca.selectors.rleaves(),
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-fifteen-d",
        # abjad.tweak(1).padding,
        abjad.tweak(2.5).X_offset,
        direction=abjad.Down,
        literal=True,
        match=[0, 2],
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
        match=[0, 2],
    ),
)

commands(
    ("cb1", (6, 8)),
    baca.clef("bass"),
    baca.note_head_style_harmonic(
        baca.selectors.run(0),
    ),
    baca.pitch(
        "E3",
        baca.selectors.run(0),
    ),
    baca.pitch(
        "Dtqf3",
        baca.selectors.run(1),
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        # abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
        selector=lambda _: baca.Selection(_).run(1).leaf(0),
    ),
)

# cb2

commands(
    ("cb2", 1),
    harmony.sixteenths(
        ["+"],
        tie=[0],
    ),
    baca.pitch("D2"),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("cb2", 8),
    harmony.sixteenths(
        [8, 7, 12],
        extra_counts=[1],
    ),
)

commands(
    ("cb2", [2, (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "Cqf6",
        baca.selectors.rleaves(),
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-fourteen-d",
        abjad.tweak(5.5).staff_padding,
        literal=True,
        match=[0, 2],
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
        match=[0, 2],
    ),
)

commands(
    ("cb2", (6, 8)),
    baca.clef("bass"),
    baca.pitch(
        "A1",
        baca.selectors.run(0),
    ),
    baca.pitch(
        "Eb2",
        baca.selectors.run(1),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.trill_spanner(),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 5)),
    harmony.sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
    baca.flat_glissando(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| p |> pp",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.leaves((None, 3)),
    ),
    baca.hairpin(
        "pp <| mp |> pp",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.leaves((5, 8)),
    ),
    baca.trill_spanner(),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.tuplet_bracket_up(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        "sfp",
        selector=baca.selectors.pheads((1, None)),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 10),
    harmony.sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
    baca.note_head_style_harmonic(),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |> ! <| mp |>o niente",
        pieces=baca.selectors.lparts([1, 1, 1, 1, 1, 1, 1 + 1]),
        right_broken=True,
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.trill_spanner(
        right_broken=True,
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    harmony.sixteenths(
        [-4, 8, -6, 6],
    ),
    baca.stop_on_string(
        baca.selectors.rest(1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=baca.selectors.leaves((1, 3)),
    ),
    baca.accent(
        baca.selectors.phead(-1),
    ),
    baca.stem_tremolo(
        baca.selectors.plt(-1),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.phead(-1),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 7),
    harmony.sixteenths(
        [4],
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.Selection(_).leaves()[4:].rleak(),
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
        fermata_measure_empty_overrides=[3, 9],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        score=score,
        stage_markup=stage_markup,
        transpose_score=True,
    )
