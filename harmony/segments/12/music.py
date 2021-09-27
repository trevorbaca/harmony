import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [L] #####################################
###############################################################################

stage_markup = (
    ("[L.1]", 1),
    ("[▶M.1]", 2, "#darkgreen"),
    ("[L.2-3]", 3),
    ("[◀J.6]", 10, "#darkgreen"),
    ("[L.4-5]", 11),
    ("[L.6-8]", 13),
)

commands = baca.CommandAccumulator(
    **baca.segments(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    score_template=harmony.ScoreTemplate(),
    time_signatures=[
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (4, 4),
    ],
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "L",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "L",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(3 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(10 - 1)),
    baca.metronome_mark("2=4", baca.selectors.skip(10 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("8=4", baca.selectors.skip(11 - 1)),
)

commands(
    "Global_Skips",
    baca.open_volta(baca.selectors.skip(11 - 1)),
    baca.double_volta(baca.selectors.skip(13 - 1)),
    baca.close_volta(baca.selectors.skip(15 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(9 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eleven",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(9 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", [1, 3, 5, 7]),
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
        match=[0],
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        match=[1],
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< p >o niente",
        match=[2],
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< pp >o niente",
        match=[3],
        pieces=baca.selectors.lparts([1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            left_broken=True,
        ),
        match=[0],
    ),
)

commands(
    ("bfl", 2),
    harmony.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TOOD: promote into harmony.sixteenths():
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
)

commands(
    ("bfl", 10),
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
        abjad.tweak(5).bound_details__right__padding,
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=False,
        direction=abjad.Down,
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("bfl", (11, 12)),
    harmony.sixteenths(
        [4, 8, 4, 12],
    ),
    baca.breathe(
        baca.selectors.pleaves([1, 3]),
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
    ("bfl", (13, 14)),
    harmony.sixteenths(
        [6, 6, 6, 6, 6, 10],
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
    ("bfl", 15),
    harmony.sixteenths(
        [6, 8, 2, 2],
        extra_counts=[0, 0, 0, 2],
        denominator=None,
        written_quarters=[-2, -1],
        invisible=[-1],
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves((-2, None)),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.selectors.pleaf(-1),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        pieces=baca.selectors.lparts([2, 4]),
        selector=baca.selectors.leaves((None, -1)),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.selectors.leaves((-2, None), rleak=True),
    ),
)

commands(
    ("bfl", (11, 15)),
    baca.pitch(
        "Dtqf5",
        baca.selectors.leaves((None, -2)),
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
    baca.pitch(
        "B4",
        baca.selectors.leaves((-2, None)),
    ),
    baca.hairpin(
        'o< "f" >o niente o< p >o niente'
        ' o< "f" >o niente o< p >o niente'
        ' o< "f" >o niente o< f >o niente',
        pieces=baca.selectors.lparts([1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 1, 2]),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", (1, 15)),
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
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
    # TODO: should be baca.staff_position(-2):
    baca.staff_positions(
        [-2, -8, -8, -8, -8],
        baca.selectors.runs((None, 1)),
        allow_repeats=True,
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
    ("perc1", [3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
)

commands(
    ("perc1", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc1", [(3, 4), (5, 6), (7, 8)]),
    baca.new(
        baca.dynamic("mp"),
        match=[0],
        selector=baca.selectors.pheads(),
    ),
    baca.new(
        baca.dynamic("p"),
        match=[1],
        selector=baca.selectors.pheads(),
    ),
    baca.new(
        baca.dynamic("pp"),
        match=[2],
        selector=baca.selectors.pheads(),
    ),
)

commands(
    ("perc1", (3, 8)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 10),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("perc1", (11, 12)),
    harmony.sixteenths(
        [2, -2],
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
    ("perc1", [13, 15]),
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
        match=[0],
    ),
)

commands(
    ("perc1", (10, 15)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 2),
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
    ("perc2", [3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
)

commands(
    ("perc2", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc2", (3, 8)),
    baca.staff_lines(1),
    baca.tuplet_bracket_up(),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (10, 12)),
    baca.make_notes(),
    harmony.bass_drum_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pheads([0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (13, 15)),
    harmony.sixteenths(
        [6, -6, 6, -6, 6, -10],
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
    ("perc2", (3, 15)),
    baca.dls_staff_padding(6),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 2),
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
    harmony.sixteenths(
        [-4, 4, "+"],
    ),
)

commands(
    ("hp", [3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
)

commands(
    ("hp", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("hp", (2, 4)),
    baca.clef("bass"),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o",
        bookend=False,
        pieces=baca.selectors.lparts([1, 4]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", (5, 8)),
    baca.clef("treble"),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.new(
        baca.dynamic("p"),
        measures=5,
    ),
    baca.new(
        baca.dynamic("p"),
        measures=6,
    ),
    baca.new(
        baca.dynamic("pp"),
        measures=7,
    ),
    baca.new(
        baca.dynamic("pp"),
        measures=8,
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("hp", (11, 12)),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        baca.selectors.pheads(),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", (1, 12)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (13, 15)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [6, -6, 6, -6, 6, -10],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

# va

commands(
    ("va", 1),
    baca.pitch("A5"),
    baca.dls_staff_padding(4),
)

commands(
    ("va", (2, 4)),
    baca.clef("alto"),
    harmony.appoggiato(
        divisions=[4, 48],
        counts=[7],
        rest_to=1,
    ),
    baca.note_head_style_harmonic_black(
        baca.selectors.leaves(grace=False),
    ),
    baca.pitch(
        "Db3",
        baca.selectors.leaves(grace=False),
    ),
    baca.note_head_style_harmonic_black(
        baca.selectors.leaves(grace=True),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_d_flat_3,
        baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("va", (5, 8)),
    harmony.rimbalzandi(
        rest_except=[1, 3, 6, 8, 11, 13, 14, 15],
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("va", 10),
    baca.pitch("D3"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("va", (13, 15)),
    harmony.sixteenths(
        [8, 3, 6],
    ),
)

commands(
    ("va", [(5, 8), (11, 15)]),
    baca.pitch("Bb3"),
)

commands(
    ("va", (5, 15)),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", 1),
    baca.pitch("Gqs6"),
)

commands(
    ("vc1", 2),
    baca.clef("bass"),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.note_head_style_harmonic_black(
        baca.selectors.leaves(grace=False),
    ),
    baca.pitch(
        "C3",
        baca.selectors.leaves(grace=False),
    ),
    baca.note_head_style_harmonic_black(
        baca.selectors.leaves(grace=True),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_c_3,
        baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", (3, 8)),
    harmony.rimbalzandi(
        extra_counts=[1],
        rest_except=[6, 7, 11, 14, 15, 19, 21, 22, 24, 25, 26],
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dls_staff_padding(4 + 2),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("vc1", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("vc1", (13, 15)),
    harmony.sixteenths(
        [14, 8, 8],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("vc1", (10, 15)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", [(3, 8), (11, 15)]),
    baca.pitch("Aqf3"),
    baca.markup(
        r"\baca-eleven-e-flat",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak((-2, 0)).extra_offset,
        literal=True,
        match=[0],
    ),
    baca.markup(
        r"\baca-eleven-e-flat",
        abjad.tweak(1).padding,
        abjad.tweak(3).X_offset,
        literal=True,
        match=[1],
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.pitch("F#5"),
)

commands(
    ("vc2", 2),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.pitch("C3"),
    baca.clef("bass"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("vc2", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc2", (3, 8)),
    harmony.rimbalzandi(
        extra_counts=[2],
        rest_except=[0, 6, 10, 11, 14, 16, 19, 21, 22, 23, 25, 27, 28, 29],
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc2", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("vc2", (13, 15)),
    harmony.sixteenths(
        [8, 8, 14],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("vc2", [(3, 8), (11, 15)]),
    baca.pitch("F3"),
)

commands(
    ("vc2", (10, 15)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    baca.pitch(
        "C#6",
        do_not_transpose=True,
    ),
)

commands(
    ("cb1", 2),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.clef("bass"),
    baca.note_head_style_harmonic_black(
        baca.selectors.leaves(grace=False),
    ),
    baca.pitch(
        "B2",
        baca.selectors.leaves(grace=False),
    ),
    baca.note_head_style_harmonic_black(
        baca.selectors.leaves(grace=True),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_2,
        baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("cb1", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", (3, 8)),
    harmony.rimbalzandi(
        rest_except=[1, 6, 9, 11, 14, 16, 19, 21, 22, 24, 25, 26, 28, 30, 31, 32],
        extra_counts=[3],
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("cb1", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("cb1", (13, 15)),
    harmony.sixteenths(
        [12, 7, 8],
        extra_counts=[1],
    ),
)

commands(
    ("cb1", (10, 15)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", [(3, 8), (11, 15)]),
    baca.pitch("Dtqf3"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak((-2, 0)).extra_offset,
        literal=True,
        match=[0],
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.tweak(3).X_offset,
        abjad.tweak(1).padding,
        literal=True,
        match=[1],
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.pitch(
        "Cqf6",
        do_not_transpose=True,
    ),
)

commands(
    ("cb2", 2),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("cb2", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb2", (3, 8)),
    harmony.rimbalzandi(
        rest_except=[1, 9, 16, 22, 27, 29, 31, 33, 34, 35],
        extra_counts=[4],
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("cb2", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

commands(
    ("cb2", (13, 15)),
    harmony.sixteenths(
        [8, 7, 12],
        extra_counts=[1],
    ),
)

commands(
    ("cb2", (10, 15)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb2", [(3, 8), (11, 15)]),
    baca.pitch("Eb2"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        ["+"],
    ),
    baca.note_head_style_harmonic(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (3, 8)),
    baca.triple_staccato(
        baca.selectors.pheads(),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 10),
    baca.make_notes(),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 12)),
    harmony.sixteenths(
        [4],
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T4 -> O",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        match=[0, 1, 2],
    ),
    baca.scp_spanner(
        "(T4) -> O",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        match=[3, 4],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (13, 15)),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        "sffp",
        selector=baca.selectors.pheads((1, -1)),
    ),
    baca.hairpin(
        "sffp >o niente",
        right_broken=True,
        selector=baca.selectors.plts((-1, None), rleak=True),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], (13, 15)),
    baca.tuplet_bracket_up(),
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
        fermata_measure_empty_overrides=[9],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
