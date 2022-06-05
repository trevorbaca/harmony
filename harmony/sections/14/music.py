import abjad
import baca

from harmony import library

#########################################################################################
######################################### 14 [N] ########################################
#########################################################################################

stage_markup = (
    ("[N.1-2]", 1),
    ("[>O.1]", 4, "#darkgreen"),
    ("[<M.1]", 5, "#darkgreen"),
    ("[N.3-6]", 6),
    ("[>P.1]", 11, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
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
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    commands.manifests(),
    commands.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

commands(
    "Skips",
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:5(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("5:3(4)=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("4:5(2)=4", lambda _: baca.select.skip(_, 6 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 11 - 1)),
    baca.metronome_mark("5:3(4)=4", lambda _: baca.select.skip(_, 11 - 1)),
)

commands(
    "Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 3 - 1)),
    baca.global_fermata("short", lambda _: baca.select.rest(_, 10 - 1)),
)

cerulean = [1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"]

# text

commands(
    "Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-fourteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 3 - 1),
        ),
    ),
)

commands(
    "Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-fifteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 10 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 2),
    library.make_warble_rhythm(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
)

commands(
    ("bfl", 3),
    baca.make_mmrests(),
)

commands(
    ("bfl", 4),
    library.make_sixteenths(
        [-1, 3, 4, -4, 4],
    ),
)

commands(
    ("bfl", 5),
    library.make_sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 6),
    library.make_warble_rhythm(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
)

commands(
    ("bfl", (7, 8)),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 9),
    library.make_warble_rhythm(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    ),
)

commands(
    ("bfl", 10),
    baca.make_mmrests(),
)

commands(
    ("bfl", 11),
    library.make_sixteenths(
        [3, -1, 8],
    ),
)

# PERC1

commands(
    ("perc1", (1, 2)),
    library.make_sixteenths(
        [2, "-", 2],
    ),
)

commands(
    ("perc1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 4),
    library.make_sixteenths(
        [-1, 3, 4, -4, 4],
    ),
)

commands(
    ("perc1", 5),
    library.make_appoggiato_rhythm(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
)

commands(
    ("perc1", 6),
    library.make_sixteenths(
        [2, "-"],
    ),
)

commands(
    ("perc1", (7, 8)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 9),
    library.make_sixteenths(
        ["-", 2],
    ),
)

commands(
    ("perc1", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 11),
    library.make_sixteenths(
        [41, -7, "+"],
    ),
)

# PERC2

commands(
    ("perc2", (1, 2)),
    library.make_sixteenths(
        [-22, 1, -3, 1, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("perc2", (3, 4)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 5),
    library.make_appoggiato_rhythm(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
)

commands(
    ("perc2", (6, 9)),
    library.make_sixteenths(
        cerulean,
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("perc2", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 11),
    library.make_sixteenths(
        [21, -14, 18, "-"],
    ),
)

# HP

commands(
    ("hp", (1, 2)),
    library.make_sixteenths(
        [22, "-"],
    ),
)

commands(
    ("hp", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 4),
    library.make_sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 5),
    library.make_sixteenths(
        [-4, 4, 8, -4],
    ),
)

commands(
    ("hp", (6, 9)),
    library.make_sixteenths(
        [54, "-"],
    ),
)

commands(
    ("hp", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 11),
    library.make_sixteenths(
        [21, -14, 18, "-"],
    ),
)

# VA

commands(
    ("va", (1, 2)),
    library.make_sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
)


commands(
    ("va", 3),
    baca.make_mmrests_flat(),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
    return result


commands(
    ("va", 4),
    library.make_sixteenths(
        ["-", 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

commands(
    ("va", 5),
    library.make_appoggiato_rhythm(
        divisions=[4, 12, 4],
        counts=[0, 7],
        rest_from=1,
    ),
)

commands(
    ("va", (6, 9)),
    library.make_sixteenths(
        [16, -12, 4, -16, 4, -8, 4],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("va", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("va", 11),
    library.make_sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
)

# VC1

commands(
    ("vc1", (1, 2)),
    library.make_sixteenths(
        [-16, 1, -16, 1, -6],
        extra_counts=[1],
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        [3, -1, -4, 7, -1],
    ),
)

commands(
    ("vc1", 5),
    library.make_appoggiato_rhythm(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
)

commands(
    ("vc1", (6, 8)),
    library.make_sixteenths(
        cerulean,
        extra_counts=[1],
    ),
)

commands(
    ("vc1", 9),
    library.make_sixteenths(
        [-4, 3, -1, 3, -1, -8, 3, -1],
        extra_counts=[0, 8],
    ),
)

commands(
    ("vc1", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", 11),
    library.make_sixteenths(
        [3, -1, 7, -1],
    ),
)

# VC2

commands(
    ("vc2", (1, 2)),
    library.make_sixteenths(
        [-9, 1, -11, 1, -3, 1, "-"],
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        [3, -1, -4, 7, -1],
    ),
)

commands(
    ("vc2", 5),
    library.make_sixteenths(
        [-8, 2, -6],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

commands(
    ("vc2", (6, 9)),
    library.make_sixteenths(
        cerulean,
    ),
)

commands(
    ("vc2", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", 11),
    library.make_sixteenths(
        [3, -1, 7, -1],
    ),
)

# CB1

commands(
    ("cb1", (1, 2)),
    library.make_sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        [3, -1, -4, 7, -1],
    ),
)

commands(
    ("cb1", 5),
    library.make_appoggiato_rhythm(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
)

commands(
    ("cb1", (6, 9)),
    library.make_sixteenths(
        [16, -8, 4, -16, 4, -12, 4],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb1", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", 11),
    library.make_sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
)

# CB2

commands(
    ("cb2", (1, 2)),
    library.make_sixteenths(
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", 4),
    library.make_sixteenths(
        [3, -1, -4, 7, -1],
    ),
)

commands(
    ("cb2", 5),
    library.make_sixteenths(
        [-8, 12],
    ),
)

commands(
    ("cb2", (6, 9)),
    library.make_sixteenths(
        [16, -12, 4, -8, 4, -16, 4],
        untie=True,
        after_graces=[1],
    ),
)

commands(
    ("cb2", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", 11),
    library.make_sixteenths(
        [2, 1, -1, 4, 2, 1, -1],
    ),
)

# anchor notes

commands(
    ["bfl", "va", "cb1", "cb2"],
    baca.append_anchor_note(),
)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 2),
    baca.pitches(
        library.warble_pitches(),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (3, 4)
        ),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("bfl", 4),
    baca.pitch("E3"),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("bfl", 5),
    # TODO: promote to library.make_sixteenths():
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, -1),
    ),
    baca.pitch("B4"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("bfl", 6),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -1),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (3, 4)
        ),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("bfl", 9),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -2),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (3, 4)
        ),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("bfl", (6, 9)),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("bfl", 11),
    baca.pitch("D5"),
    baca.dynamic("p"),
    baca.text_spanner(
        "A =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", (1, 11)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 2)),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 4),
    library.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 4)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 5),
    baca.staff_lines(3),
    baca.staff_position(
        -2,
        lambda _: baca.select.runs(_)[:1],
    ),
    baca.staff_position(
        0,
        lambda _: baca.select.runs(_)[1:],
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rest(_, 0),
    ),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.rest(_, 1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)

commands(
    ("perc1", 6),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 9),
    library.brake_drum_staff_position(),
)

commands(
    ("perc1", 11),
    library.brake_drum_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (6, 11)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 2)),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        '"ff"',
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (1, 4)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 5),
    baca.staff_lines(3),
    baca.staff_position(
        -2,
        lambda _: baca.select.runs(_)[:1],
    ),
    baca.staff_position(
        0,
        lambda _: baca.select.runs(_)[1:],
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rest(_, 0),
    ),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.rest(_, 1),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)

commands(
    ("perc2", (6, 9)),
    baca.staff_lines(1),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        '"ff"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.hairpin(
        # '"ff" "ff" "ff" "f" "f" mf mp p pp',
        '"ff" "ff" "f" "f" mf mp p pp',
        pieces=lambda _: baca.select.plts(_)[1:],
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 11),
    library.tam_tam_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
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
        map=lambda x: [
            _
            for _ in abjad.select.rests(x)
            if abjad.get.duration(_) >= abjad.Duration((1, 2))
        ],
    ),
)

# hp

commands(
    ("hp", (1, 2)),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(7),
)

commands(
    ("hp", 4),
    baca.clef("treble"),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f-ancora"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("hp", 5),
    baca.clef("bass"),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (6, 9)),
    baca.pitch("E1"),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", 11),
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
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("D#3", "E3"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)


commands(
    ("va", (4, 5)),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("Db3"),
        selector=lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[:3],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_d_flat_3(),
        ),
        selector=lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.pleaves(_, grace=False)[:4],
    ),
)

commands(
    ("va", (6, 9)),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("D#3", "E3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("va", 11),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
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
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        '"ff" "ff"',
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc1", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("vc1", 5),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("C3"),
        selector=lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_c_3(),
        ),
        selector=lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
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
    baca.tuplet_bracket_staff_padding(3),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        '"ff" "ff" "f" "f" mf mp p',
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc1", 9),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("vc1", 11),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
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
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        '"ff" "ff"',
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc2", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("vc2", 5),
    baca.tuplet_bracket_up(),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bridge_staff_position(),
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic('"ff"'),
)

commands(
    ("vc2", (6, 9)),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        '"ff" "ff" "f" mf mp p pp',
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("vc2", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[1:-3],
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
    baca.pitch("C#3"),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

# cb1

commands(
    ("cb1", (1, 2)),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("F2", "E2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 4),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("cb1", 5),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("B2"),
        selector=lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_b_2(),
        ),
        selector=lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("cb1", (6, 9)),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("F2", "E2"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 11),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("cb1", (1, 11)),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 2)),
    baca.note_head_style_harmonic(),
    baca.interpolate_pitches("D#2", "E2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 4),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("cb2", 5),
    baca.pitch("B2"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", (6, 9)),
    baca.note_head_style_harmonic(),
    baca.new(
        baca.interpolate_pitches("D#2", "E2"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 11),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
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
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.scp_spanner(
        "T1 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    (["va", "cb1", "cb2"], (6, 9)),
    baca.hairpin(
        "o< mp",
        selector=lambda _: abjad.select.run(_, 0),
    ),
    baca.hairpin(
        "o< mf",
        selector=lambda _: abjad.select.run(_, 1),
    ),
    baca.hairpin(
        "o< f",
        selector=lambda _: abjad.select.run(_, 2),
    ),
    baca.hairpin(
        "o< ff",
        selector=lambda _: abjad.select.run(_, 3),
    ),
    baca.scp_spanner(
        "T1 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    (["va", "cb1", "cb2"], 11),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.dynamic(
        "ppp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_section(
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
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[3, 10],
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
