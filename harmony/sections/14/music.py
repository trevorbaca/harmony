import abjad
import baca

from harmony import library

#########################################################################################
######################################### 14 [N] ########################################
#########################################################################################

stage_markup = (
    ("[N.1-2]", 1),
    ("[▶O.1]", 4, "#darkgreen"),
    ("[◀M.1]", 5, "#darkgreen"),
    ("[N.3-6]", 6),
    ("[▶P.1]", 11, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (1, 4),
        (3, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "N",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "N",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.selectors.skip(6 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.selectors.skip(11 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
    baca.global_fermata("short", baca.selectors.rest(10 - 1)),
)

cerulean = [1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"]

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-fourteen",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-fifteen",
            abjad.tweak((4, -30)).extra_offset,
            selector=baca.selectors.skip(10 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 2),
    library.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
    baca.pitches(
        library.warble_pitches,
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((3, 4)),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("bfl", 4),
    library.sixteenths(
        [-1, 3, 4, -4, 4],
    ),
    baca.pitch("E3"),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

commands(
    ("bfl", 5),
    library.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TODO: promote to library.sixteenths():
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
    ("bfl", 6),
    library.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -1),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((3, 4)),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("bfl", 9),
    library.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -2),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((3, 4)),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("bfl", (6, 9)),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("bfl", 11),
    library.sixteenths(
        [3, -1, 8],
    ),
    baca.pitch("D5"),
    baca.dynamic("p"),
    baca.text_spanner(
        "A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", (1, 11)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 2)),
    library.sixteenths(
        [2, "-", 2],
    ),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", 4),
    library.sixteenths(
        [-1, 3, 4, -4, 4],
    ),
    library.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", (1, 4)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 5),
    baca.staff_lines(3),
    library.appoggiato(
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
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc1", 6),
    baca.staff_lines(1),
    library.sixteenths(
        [2, "-"],
    ),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", 9),
    library.sixteenths(
        ["-", 2],
    ),
    library.brake_drum_staff_position(),
)

commands(
    ("perc1", 11),
    library.sixteenths(
        [41, -7, "+"],
    ),
    library.brake_drum_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", (6, 11)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 2)),
    library.sixteenths(
        [-22, 1, -3, 1, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        '"ff"',
        selector=baca.selectors.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        abjad.tweak(0.75).self_alignment_X,
    ),
)

commands(
    ("perc2", (1, 4)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 5),
    baca.staff_lines(3),
    library.appoggiato(
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
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc2", (6, 9)),
    baca.staff_lines(1),
    library.sixteenths(
        cerulean,
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic(
        '"ff"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.hairpin(
        # '"ff" "ff" "ff" "f" "f" mf mp p pp',
        '"ff" "ff" "f" "f" mf mp p pp',
        pieces=baca.selectors.plts((1, None)),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc2", 11),
    library.sixteenths(
        [21, -14, 18, "-"],
    ),
    library.tam_tam_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc2", (6, 11)),
    baca.dls_staff_padding(6),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 5),
    baca.new(
        baca.dots_extra_offset((1, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=lambda _: baca.Selection(_)
        .rests()
        .filter(lambda _: abjad.get.duration(_) >= abjad.Duration((1, 2))),
    ),
)

# hp

commands(
    ("hp", (1, 2)),
    baca.clef("bass"),
    library.sixteenths(
        [22, "-"],
    ),
    baca.pitch("E1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(7),
)

commands(
    ("hp", 4),
    baca.clef("treble"),
    library.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f-ancora"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
    ),
)

commands(
    ("hp", 5),
    library.sixteenths(
        [-4, 4, 8, -4],
    ),
    baca.clef("bass"),
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
    ),
)

commands(
    ("hp", (4, 5)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (6, 9)),
    library.sixteenths(
        [54, "-"],
    ),
    baca.pitch("E1"),
    baca.damp(
        baca.selectors.leaf_after_each_ptail(),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", 11),
    library.sixteenths(
        [21, -14, 18, "-"],
    ),
    baca.pitch("F1"),
    baca.dynamic("p"),
)

commands(
    ("hp", (6, 11)),
    baca.dls_staff_padding(7),
)

# va

commands(
    ("va", (1, 2)),
    library.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("D#3", "E3"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        # abjad.tweak((-3, 0)).extra_offset,
        # abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
    return result


commands(
    ("va", 4),
    library.sixteenths(
        ["-", 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

commands(
    ("va", 5),
    library.appoggiato(
        divisions=[4, 12, 4],
        counts=[0, 7],
        rest_from=1,
    ),
)

commands(
    ("va", (4, 5)),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("Db3"),
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.accent(
        baca.selectors.pheads((None, 3)),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_d_flat_3,
        ),
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "f >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.pleaves((None, 4), grace=False),
    ),
)

commands(
    ("va", (6, 9)),
    library.sixteenths(
        [16, -12, 4, -16, 4, -8, 4],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("D#3", "E3"),
        map=baca.selectors.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
    ),
)

commands(
    ("va", 11),
    library.sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
)

commands(
    ("va", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [-16, 1, -16, 1, -6],
        extra_counts=[1],
    ),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        '"ff" "ff"',
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc1", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("vc1", 5),
    library.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("C3"),
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_c_3,
        ),
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("vc1", (4, 5)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        cerulean,
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "ff" "f" "f" mf mp p',
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc1", 9),
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [-4, 3, -1, 3, -1, -8, 3, -1],
        extra_counts=[0, 8],
    ),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

commands(
    ("vc1", 11),
    library.sixteenths(
        [3, -1, 7, -1],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

commands(
    ("vc1", [9, 11]),
    baca.pitch("D#3"),
)

commands(
    ("vc1", (9, 11)),
    baca.dls_staff_padding(4),
)

# vc2

commands(
    ("vc2", (1, 2)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.sixteenths(
        [-9, 1, -11, 1, -3, 1, "-"],
    ),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        '"ff" "ff"',
        pieces=baca.selectors.plts(),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc2", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("vc2", 5),
    library.sixteenths(
        [-8, 2, -6],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bridge_staff_position(),
        selector=baca.selectors.leaf(1),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic('"ff"'),
)

commands(
    ("vc2", (6, 9)),
    library.sixteenths(
        cerulean,
    ),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.hairpin(
        '"ff" "ff" "f" mf mp p pp',
        pieces=baca.selectors.plts(),
    ),
)

commands(
    ("vc2", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((1, -3)),
    ),
)

commands(
    ("vc2", (5, 9)),
    baca.dls_staff_padding(6),
)

commands(
    ("vc2", 11),
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [3, -1, 7, -1],
    ),
    baca.pitch("C#3"),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.selectors.runs(),
    ),
)

# cb1

commands(
    ("cb1", (1, 2)),
    library.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("F2", "E2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        # abjad.tweak((-3, 0)).extra_offset,
        # abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

commands(
    ("cb1", 4),
    library.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("cb1", 5),
    library.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("B2"),
        selector=baca.selectors.leaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_b_2,
        ),
        selector=baca.selectors.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(grace=False, rleak=True),
    ),
)

commands(
    ("cb1", (6, 9)),
    library.sixteenths(
        [16, -8, 4, -16, 4, -12, 4],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("F2", "E2"),
        map=baca.selectors.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
    ),
)

commands(
    ("cb1", 11),
    library.sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
)

commands(
    ("cb1", (1, 11)),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 2)),
    library.sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("D#2", "E2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        # abjad.tweak((-3, 0)).extra_offset,
        # abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

commands(
    ("cb2", 4),
    library.sixteenths(
        [3, -1, -4, 7, -1],
    ),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=baca.selectors.leaf(-1),
        map=baca.selectors.rleak_runs(),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("cb2", 5),
    library.sixteenths(
        [-8, 12],
    ),
    baca.pitch("B2"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("cb2", (6, 9)),
    library.sixteenths(
        [16, -12, 4, -8, 4, -16, 4],
        untie=True,
        after_graces=[1],
    ),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("D#2", "E2"),
        map=baca.selectors.runs(),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=baca.selectors.runs(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.Down,
    ),
)

commands(
    ("cb2", 11),
    library.sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=baca.selectors.runs(),
    ),
)

commands(
    ("cb2", (1, 11)),
    baca.dls_staff_padding(4),
)

# va, cb1, cb2


commands(
    (["va", "cb1", "cb2"], 1),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.tleaves(),
    ),
    baca.scp_spanner(
        "T1 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    (["va", "cb1", "cb2"], (6, 9)),
    baca.hairpin(
        "o< mp",
        selector=baca.selectors.run(0),
    ),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.run(1),
    ),
    baca.hairpin(
        "o< f",
        selector=baca.selectors.run(2),
    ),
    baca.hairpin(
        "o< ff",
        selector=baca.selectors.run(3),
    ),
    baca.scp_spanner(
        "T1 -> P1",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=True,
        map=baca.selectors.runs(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    (["va", "cb1", "cb2"], 11),
    baca.alternate_bow_strokes(
        lambda _: baca.Selection(_)
        .pheads()
        .filter(lambda _: abjad.get.duration(_) >= abjad.Duration((1, 8))),
        abjad.tweak(4).staff_padding,
        full=True,
    ),
    baca.dynamic(
        "ppp",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.half_clt_spanner(
        abjad.tweak(8).staff_padding,
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_segment(
        score,
        commands,
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
        fermata_measure_empty_overrides=[3, 10],
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
