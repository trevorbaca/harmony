import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [M] #####################################
###############################################################################

stage_markup = (
    ("[M.1]", 1),
    ("[M.2]", 3),
    ("[◀J.6]", 4, "#darkgreen"),
    ("[◀L.4]", 5, "#darkgreen"),
)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    score_template=harmony.make_empty_score,
    time_signatures=[
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (3, 4),
        (1, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "M",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "M",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("144", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(5 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(2 - 1)),
    baca.global_fermata("short", baca.selectors.rest(6 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twelve",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(2 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-thirteen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(6 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    harmony.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TODO: promote into harmony.sixteenths():
    baca.repeat_tie(
        baca.selectors.pleaf(-1),
    ),
    baca.pitch("B4"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.lparts([1, 2 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("bfl", 3),
    harmony.sixteenths(
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("B4"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("bfl", 4),
    harmony.appoggiato(
        counts=[9],
        incise=True,
    ),
    baca.pitches(
        "A3",
        baca.selectors.leaves(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a.rotate(-9),
        baca.selectors.leaves(grace=True),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.pleaf(0, grace=False),
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
    ("bfl", 5),
    harmony.sixteenths(
        [4, 8],
    ),
    baca.pitch("Dtqf5"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
    baca.breathe(
        baca.selectors.pleaf(1),
    ),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
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

commands(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.selectors.runs((None, 1)),
    ),
    baca.staff_position(
        0,
        baca.selectors.runs((1, None)),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.rest(0),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.rest(1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc1", 3),
    harmony.appoggiato(
        divisions=[20, 8],
        counts=[0, 3],
        rest_after=True,
    ),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=baca.selectors.rest(-1),
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 5),
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
    ("perc1", (4, 5)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.selectors.runs((None, 1)),
    ),
    baca.staff_position(
        0,
        baca.selectors.runs((1, None)),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.rest(0),
    ),
    baca.dynamic(
        "f",
        selector=baca.selectors.rest(1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc2", 3),
    harmony.appoggiato(
        divisions=[20, 8],
        counts=[0, 4],
        rest_after=True,
    ),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=baca.selectors.rest(-1),
    ),
)

commands(
    ("perc2", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [20, "-", 1, -1],
    ),
    baca.new(
        baca.dynamic(
            "p-ancora",
            abjad.tweak(-0.9).self_alignment_X,
        ),
        baca.markup(
            r"\baca-bd-fingertips-markup",
            abjad.tweak(6).staff_padding,
            literal=True,
        ),
        selector=baca.selectors.pleaf(0),
    ),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.flat_glissando(),
        baca.stem_tremolo(),
        selector=baca.selectors.plt(0),
    ),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.tweak(6).staff_padding,
            abjad.tweak(0.5).self_alignment_X,
            literal=True,
        ),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc2", 5),
    harmony.sixteenths(
        [2, -2],
    ),
    harmony.brake_drum_staff_position(),
)

commands(
    ("perc2", (4, 5)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.selectors.leaves((3, None), rleak=True),
    ),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 1),
    baca.new(
        baca.dots_extra_offset((1, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=harmony.rests_filter_duration((">=", (1, 2))),
    ),
)

# hp

commands(
    ("hp", 1),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-4, 4, 8, -4],
    ),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", (3, 4)),
    harmony.sixteenths(
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    ),
    baca.clef("treble"),
    baca.pitches(
        "Bb5 A5 G#5",
        baca.selectors.plts((None, -1)),
    ),
    baca.flageolet(
        baca.selectors.pheads(),
    ),
    baca.laissez_vibrer(
        baca.selectors.ptails((None, -1)),
    ),
    baca.dynamic("f"),
    baca.new(
        baca.pitch("E4"),
        baca.dynamic("f-ancora"),
        baca.snap_pizzicato(),
        selector=baca.selectors.phead(-1),
    ),
)

commands(
    ("hp", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((1, 8), rleak=True),
    ),
)

commands(
    ("hp", 5),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        baca.selectors.pheads(),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.leaves((6, None), rleak=True),
    ),
)

commands(
    ("hp", (1, 5)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 7, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaf(0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.leaves((2, None), grace=False),
    ),
)

commands(
    ("va", 3),
    baca.make_notes(),
    baca.dynamic("mp"),
    baca.markup(
        r"\harmony-half-harm-pressure-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

commands(
    ("va", (1, 3)),
    baca.new(
        baca.pitch("Bb3"),
        selector=baca.selectors.plts((None, 1)),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("Db3"),
        selector=baca.selectors.plts((1, None), grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_d_flat_3,
        ),
        selector=baca.selectors.plts(grace=True),
    ),
)

commands(
    ("va", (4, 5)),
    baca.make_repeat_tied_notes(),
    baca.pitch("D3"),
    baca.hairpin(
        "(mp) >o niente",
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

commands(
    ("vc1", 1),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaf(0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.leaves((2, None), grace=False),
    ),
)

commands(
    ("vc1", 3),
    baca.make_notes(),
    baca.dynamic("mp"),
    baca.markup(
        r"\harmony-half-harm-pressure-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

commands(
    ("vc1", (1, 3)),
    baca.new(
        baca.pitch("Aqf3"),
        selector=baca.selectors.plts((None, 1)),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("C3"),
        selector=baca.selectors.plts((1, None), grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_c_3,
        ),
        selector=baca.selectors.plts(grace=True),
    ),
)

commands(
    ("vc1", 4),
    baca.new(
        baca.pitch("D2"),
        baca.hairpin(
            "(mp) >o niente",
        ),
        selector=baca.selectors.plt(0),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc1", 5),
    baca.pitch(
        "Aqf3",
        baca.selectors.leaves(lleak=True),
    ),
)

# vc2

commands(
    ("vc2", 1),
    harmony.sixteenths(
        [7, -1, 12],
    ),
    baca.repeat_tie(
        baca.selectors.phead(0),
    ),
    baca.new(
        baca.pitch("F3"),
        baca.stem_tremolo(),
        selector=baca.selectors.plts((None, 1)),
    ),
    baca.pitch(
        "C3",
        baca.selectors.plts((1, None)),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.selectors.plts((None, 1), rleak=True),
    ),
    baca.dynamic(
        "mp",
        selector=baca.selectors.pleaf(-1),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.plts((1, None), rleak=True),
    ),
)

commands(
    ("vc2", 3),
    baca.make_notes(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

commands(
    ("vc2", 4),
    baca.repeat_tie(
        baca.selectors.leaf(0),
    ),
    baca.hairpin(
        "(mp) >o niente",
        selector=baca.selectors.leaves((None, -1)),
    ),
)

commands(
    ("vc2", (3, 5)),
    baca.pitch(
        "C3",
        baca.selectors.plts((None, 1)),
    ),
    baca.pitch(
        "F3",
        baca.selectors.plts((1, None)),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.plts((None, 1), rleak=True),
    ),
)

# cb1

commands(
    ("cb1", 1),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaf(0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.leaves((2, None), grace=False),
    ),
)

commands(
    ("cb1", 3),
    baca.make_notes(),
    baca.dynamic("mp"),
    baca.markup(
        r"\harmony-half-harm-pressure-markup",
        abjad.tweak(1.5).padding,
        literal=True,
    ),
)

commands(
    ("cb1", (1, 3)),
    baca.new(
        baca.pitch("Dtqf3"),
        selector=baca.selectors.plts((None, 1)),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("B2"),
        selector=baca.selectors.plts((1, None), grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_b_2,
        ),
        selector=baca.selectors.plts(grace=True),
    ),
)

commands(
    ("cb1", 4),
    baca.new(
        baca.pitch("D2"),
        baca.hairpin(
            "(mp) >o niente",
        ),
        selector=baca.selectors.plt(0),
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb1", 5),
    baca.pitch(
        "Dtqf2",
        baca.selectors.leaves(lleak=True),
    ),
)

# cb2

commands(
    ("cb2", 1),
    harmony.sixteenths(
        [7, -1, 12],
    ),
    baca.repeat_tie(
        baca.selectors.phead(0),
    ),
    baca.new(
        baca.pitch("Eb2"),
        baca.stem_tremolo(),
        selector=baca.selectors.plts((None, 1)),
    ),
    baca.pitch(
        "B2",
        baca.selectors.plts((1, None)),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.selectors.plts((None, 1), rleak=True),
    ),
    baca.dynamic(
        "mp",
        selector=baca.selectors.pleaf(-1),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.plts((1, None), rleak=True),
    ),
)

commands(
    ("cb2", 3),
    baca.make_notes(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

commands(
    ("cb2", 4),
    baca.repeat_tie(
        baca.selectors.leaf(0),
    ),
    baca.hairpin(
        "(mp) >o niente",
        selector=baca.selectors.leaves((None, -1)),
    ),
)

commands(
    ("cb2", (3, 5)),
    baca.pitch(
        "B2",
        baca.selectors.plts((None, 1)),
    ),
    baca.pitch(
        "Eb2",
        baca.selectors.plts((1, None)),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.plts((None, 1), rleak=True),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 4),
    harmony.sixteenths(
        ["+", 2],
        unbeam=True,
    ),
    baca.new(
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic("p"),
        selector=baca.selectors.phead(-1),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 5),
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
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((-4, None), rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
    baca.dls_staff_padding(4),
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
        fermata_measure_empty_overrides=[2, 6],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
