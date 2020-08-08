import abjad
import baca
import harmony

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
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *baca.tags.instrument_color_tags(),
        *baca.tags.margin_markup_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[2, 6],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=abjad.Path(__file__).resolve().parent,
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
    baca.not_parts(
        baca.rehearsal_mark(
            "M",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "M",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
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

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twelve",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(2 - 1),
        ),
    ),
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-thirteen",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(6 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TODO: promote into harmony.sixteenths():
    baca.repeat_tie(
        baca.pleaf(-1),
    ),
    baca.pitch("B4"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("bfl", 3),
    harmony.sixteenths(
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("B4"),
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
        "A3",
        baca.leaves(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a.rotate(-9),
        baca.leaves(grace=True),
    ),
    baca.dynamic(
        "p",
        selector=baca.pleaf(0, grace=False),
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
        baca.pleaf(1),
    ),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=baca.lparts([1, 2]),
        selector=baca.leaves().rleak(),
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
)

maker(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.runs()[:1],
    ),
    baca.staff_position(
        0 ,
        baca.runs()[1:],
    ),
    baca.dynamic(
        "p",
        selector=baca.rest(0),
    ),
    baca.dynamic(
        "f",
        selector=baca.rest(1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", 3),
    harmony.appoggiato(
        divisions=[20, 8],
        counts=[0, 3],
        rest_after=True,
    ),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=baca.rest(-1),
    ),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
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
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (4, 5)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.runs()[:1],
    ),
    baca.staff_position(
        0 ,
        baca.runs()[1:],
    ),
    baca.dynamic(
        "p",
        selector=baca.rest(0),
    ),
    baca.dynamic(
        "f",
        selector=baca.rest(1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc2", 3),
    harmony.appoggiato(
        divisions=[20, 8],
        counts=[0, 4],
        rest_after=True,
    ),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=baca.rest(-1),
    ),
)

maker(
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
        selector=baca.pleaf(0),
    ),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.flat_glissando(),
        baca.stem_tremolo(),
        selector=baca.plt(0),
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
        selector=baca.pleaf(-1),
    ),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        [2, -2],
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc2", (4, 5)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.leaves()[3:].rleak(),
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], 1),
    baca.new(
        baca.dots_extra_offset((1, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=baca.rests().filter_duration(">=", (1, 2)),
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-4, 4, 8, -4],
    ),
    baca.pitch("<B2 C3 Db3>"),
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
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (3, 4)),
    harmony.sixteenths(
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    ),
    baca.clef("treble"),
    baca.pitches(
        "Bb5 A5 G#5",
        baca.plts()[:-1],
    ),
    baca.flageolet(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails()[:-1],
    ),
    baca.dynamic("f"),
    baca.new(
        baca.pitch("E4"),
        baca.dynamic("f-ancora"),
        baca.snap_pizzicato(),
        selector=baca.phead(-1),
    ),
)

maker(
    ("hp", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[1:8].rleak(),
    ),
)

maker(
    ("hp", 5),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        baca.pheads(),
    ),
)

maker(
    ("hp", (4, 5)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[6:].rleak(),
    ),
)

maker(
    ("hp", (1, 5)),
    baca.dls_staff_padding(4),
)

# va

maker(
    ("va", 1),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 7, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
    baca.repeat_tie(
        baca.pleaf(0),
    ),
    baca.stem_tremolo(
        baca.pleaf(0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.leaves(grace=False)[2:],
    ),
)

maker(
    ("va", 3),
    baca.make_notes(),
    baca.dynamic("mp"),
    baca.markup(
        "(half harm. pressure)",
        abjad.tweak(1.5).padding,
    ),
)

maker(
    ("va", (1, 3)),
    baca.new(
        baca.pitch("Bb3"),
        selector=baca.plts()[:1],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("Db3"),
        selector=baca.plts(grace=False)[1:],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_d_flat_3,
        ),
        selector=baca.plts(grace=True),
    ),
)

maker(
    ("va", (4, 5)),
    baca.make_repeat_tied_notes(),
    baca.pitch("D3"),
    baca.hairpin(
        "(mp) >o niente",
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

maker(
    ("vc1", 1),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
    baca.repeat_tie(
        baca.pleaf(0),
    ),
    baca.stem_tremolo(
        baca.pleaf(0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.leaves(grace=False)[2:],
    ),
)

maker(
    ("vc1", 3),
    baca.make_notes(),
    baca.dynamic("mp"),
    baca.markup(
        "(half harm. pressure)",
        abjad.tweak(1.5).padding,
    ),
)

maker(
    ("vc1", (1, 3)),
    baca.new(
        baca.pitch("Aqf3"),
        selector=baca.plts()[:1],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("C3"),
        selector=baca.plts(grace=False)[1:],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_c_3,
        ),
        selector=baca.plts(grace=True),
    ),
)

maker(
    ("vc1", 4),
    baca.new(
        baca.pitch("D2"),
        baca.hairpin(
            "(mp) >o niente",
        ),
        selector=baca.plt(0),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(3).staff_padding,
        selector=baca.leaves(),
    ),
)

maker(
    ("vc1", 5),
    baca.pitch(
        "Aqf3",
        baca.leaves().lleak(),
    ),
)

# vc2

maker(
    ("vc2", 1),
    harmony.sixteenths(
        [7, -1, 12],
    ),
    baca.repeat_tie(
        baca.phead(0),
    ),
    baca.new(
        baca.pitch("F3"),
        baca.stem_tremolo(),
        selector=baca.plts()[:1],
    ),
    baca.pitch(
        "C3",
        baca.plts()[1:],
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.plts()[:1].rleak(),
    ),
    baca.dynamic(
        "mp",
        selector=baca.pleaf(-1),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.plts()[1:].rleak(),
    )
)

maker(
    ("vc2", 3),
    baca.make_notes(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc2", 4),
    baca.repeat_tie(
        baca.leaf(0),
    ),
    baca.hairpin(
        "(mp) >o niente",
        selector=baca.leaves()[:-1],
    ),
)

maker(
    ("vc2", (3, 5)),
    baca.pitch(
        "C3",
        baca.plts()[:1],
    ),
    baca.pitch(
        "F3",
        baca.plts()[1:],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.plts()[:1].rleak(),
    ),
)

# cb1

maker(
    ("cb1", 1),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
    baca.repeat_tie(
        baca.pleaf(0),
    ),
    baca.stem_tremolo(
        baca.pleaf(0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.leaves(grace=False)[2:],
    ),
)

maker(
    ("cb1", 3),
    baca.make_notes(),
    baca.dynamic("mp"),
    baca.markup(
        "(half harm. pressure)",
        abjad.tweak(1.5).padding,
    ),
)

maker(
    ("cb1", (1, 3)),
    baca.new(
        baca.pitch("Dtqf3"),
        selector=baca.plts()[:1],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("B2"),
        selector=baca.plts(grace=False)[1:],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            harmony.appoggiato_pitches_b_2,
        ),
        selector=baca.plts(grace=True),
    ),
)

maker(
    ("cb1", 4),
    baca.new(
        baca.pitch("D2"),
        baca.hairpin(
            "(mp) >o niente",
        ),
        selector=baca.plt(0),
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(3).staff_padding,
        selector=baca.leaves(),
    ),
)

maker(
    ("cb1", 5),
    baca.pitch(
        "Dtqf2",
        baca.leaves().lleak(),
    ),
)

# cb2

maker(
    ("cb2", 1),
    harmony.sixteenths(
        [7, -1, 12],
    ),
    baca.repeat_tie(
        baca.phead(0),
    ),
    baca.new(
        baca.pitch("Eb2"),
        baca.stem_tremolo(),
        selector=baca.plts()[:1],
    ),
    baca.pitch(
        "B2",
        baca.plts()[1:],
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.plts()[:1].rleak(),
    ),
    baca.dynamic(
        "mp",
        selector=baca.pleaf(-1),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.plts()[1:].rleak(),
    )
)

maker(
    ("cb2", 3),
    baca.make_notes(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("cb2", 4),
    baca.repeat_tie(
        baca.leaf(0),
    ),
    baca.hairpin(
        "(mp) >o niente",
        selector=baca.leaves()[:-1],
    ),
)

maker(
    ("cb2", (3, 5)),
    baca.pitch(
        "B2",
        baca.plts()[:1],
    ),
    baca.pitch(
        "Eb2",
        baca.plts()[1:],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.plts()[:1].rleak(),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 4),
    harmony.sixteenths(
        ["+", 2],
        unbeam=True,
    ),
    baca.new(
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic("p"),
        selector=baca.phead(-1),
    ),
)

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
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[-4:].rleak(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
    baca.dls_staff_padding(4),
)
