import abjad
import baca

from harmony import library

#########################################################################################
######################################### 19 [S] ########################################
#########################################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[◀R.1]", 2, "#darkgreen"),
    ("[S.2-3]", 4),
    ("[▶T.1]", 11, "#darkgreen"),
    ("[S.4]", 12),
    ("[▶T.1]", 13, "#darkgreen"),
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
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (5, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "S",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "S",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
    baca.open_volta(baca.selectors.skip(1 - 1)),
    baca.close_volta(baca.selectors.skip(2 - 1)),
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("72", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.selectors.skip(2 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.selectors.skip(4 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(11 - 1)),
    baca.metronome_mark("96", baca.selectors.skip(12 - 1)),
    baca.metronome_mark("4.=4", baca.selectors.skip(12 - 1)),
    baca.metronome_mark("144", baca.selectors.skip(13 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(13 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(3 - 1)),
    baca.global_fermata("fermata", baca.selectors.rest(10 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eighteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-nineteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=baca.selectors.skip(10 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    library.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -5),
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
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_),
            (3, 4),
        ),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp-markup").bound_details__left__text,
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.tleaves(),
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
    return result


commands(
    ("bfl", 9),
    library.sixteenths(
        [4, 4, 4, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", 12),
    library.warble(
        extra_counts=[2],
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -5),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_),
            (3, 4),
        ),
        selector=baca.selectors.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp-markup").bound_details__left__text,
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.tleaves(),
    ),
)

commands(
    ("bfl", [11, 13]),
    library.sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
        map=baca.selectors.rleak_runs(),
    ),
)

commands(
    ("bfl", (1, 13)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(3),
    library.appoggiato(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(2),
    ),
    baca.dls_staff_padding(
        5,
        baca.selectors.leaves(grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=baca.selectors.leaf(2, grace=False),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(1),
    library.sixteenths(
        [4, 2, "-"],
    ),
    library.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(
        baca.selectors.phead(1),
    ),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=baca.selectors.pleaves((1, None), rleak=True),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 8)),
    baca.staff_lines(3),
    library.appoggiato(
        divisions=[1, 19, 1, 15],
        counts=[0, 5, 0, 6, 0, 7, 0, 8, 0, 9],
        rest_after=True,
    ),
    baca.dynamic(
        "ff-sempre",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.rest(1),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=baca.selectors.leaf(1, grace=False),
    ),
)

commands(
    ("perc1", 9),
    library.appoggiato(
        divisions=[16],
        counts=[19],
        rest_after=True,
    ),
)

commands(
    ("perc1", (4, 9)),
    library.purpleheart_staff_positions([2]),
)

commands(
    ("perc1", 12),
    baca.staff_lines(3),
    library.appoggiato(
        divisions=[20],
        counts=[25],
        rest_after=True,
    ),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(0),
    ),
    baca.dls_staff_padding(
        5,
        baca.selectors.leaves(grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc1", [11, 13]),
    baca.staff_lines(1),
    library.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# perc2

commands(
    ("perc2", 1),
    library.appoggiato(
        divisions=[4, 1, 11],
        counts=[0, 0, 4],
        rest_after=[-2, -1],
    ),
    baca.new(
        library.purpleheart_staff_positions([0]),
        selector=baca.selectors.pleaves((None, 1)),
    ),
    baca.new(
        library.purpleheart_staff_positions([2]),
        selector=baca.selectors.pleaves((1, None)),
    ),
    baca.dynamic(
        "ff-ancora",
        selector=baca.selectors.rest(1),
    ),
    baca.dls_staff_padding(5),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(1),
    library.sixteenths(
        [4, 2, "-"],
    ),
    library.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("p"),
    baca.dynamic(
        "f",
        selector=baca.selectors.phead(1),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 8)),
    baca.staff_lines(3),
    library.appoggiato(
        divisions=[1, 19, 1, 15],
        counts=[0, 4, 0, 5, 0, 6, 0, 7, 0, 8],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=baca.selectors.leaf(1, grace=False),
    ),
)

commands(
    ("perc2", 9),
    library.appoggiato(
        divisions=[16],
        counts=[18],
        rest_after=True,
    ),
)

commands(
    ("perc2", (4, 9)),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff-sempre",
        abjad.tweak(-0.9).self_alignment_X,
        selector=baca.selectors.rest(1),
    ),
    baca.dls_staff_padding(5),
)

commands(
    ("perc2", 11),
    baca.staff_lines(1),
    library.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    library.slate_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 12),
    baca.staff_lines(3),
    library.appoggiato(
        divisions=[20],
        counts=[24],
        rest_after=True,
    ),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=baca.selectors.rest(0),
    ),
    baca.dls_staff_padding(
        5,
        baca.selectors.leaves(grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc2", 13),
    baca.staff_lines(1),
    baca.skeleton(
        r"r4. \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
    library.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:]),
    ),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], [1, (4, 9), 12]),
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
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
)

commands(
    ("hp", 2),
    library.sixteenths(
        [-4, 2, "-"],
    ),
    baca.pitch("G4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", [4, 6, 8]),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("hp", [5, 7, 9]),
    baca.make_notes(),
)

commands(
    ("hp", (4, 9)),
    baca.pitch("<G6 A6 Bb6>"),
    baca.ottava(),
    baca.ottava_bracket_staff_padding(5.5),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak X-offset 3"),
    ),
)

commands(
    ("hp", 12),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.pitch("<G6 A6 Bb6>"),
    baca.ottava(),
    baca.ottava_bracket_staff_padding(5.5),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak X-offset 4"),
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", [11, 13]),
    library.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

# va


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


commands(
    ("va", 2),
    library.sixteenths(
        [-4, -4, 2, 2, 2, 2, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.tuplet_bracket_up(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o niente o<| mp |>o",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.tleaves(),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:])[-1],
    ),
)

commands(
    ("va", [(1, 2), (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("va", 12),
    baca.clef("treble"),
)

commands(
    ("va", [11, 13]),
    library.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
)

# vc1

commands(("vc1", 1), baca.clef("treble"))

commands(
    ("vc1", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc1", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc1", 12),
    baca.clef("treble"),
)

commands(
    ("vc1", [11, 13]),
    library.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

# vc2

commands(
    ("vc2", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc2", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc2", 12),
    baca.clef("treble"),
)

commands(
    ("vc2", [11, 13]),
    library.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
    baca.new(
        baca.rest_extra_offset(
            (-1.5, 0),
            baca.selectors.rest(-1),
        ),
        match=[0],
    ),
)

# cb1

commands(
    ("cb1", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<B5 C6 Db6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("bass"),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb1", 4),
    baca.clef("treble"),
)

commands(
    ("cb1", 12),
    baca.clef("treble"),
)

commands(
    ("cb1", [11, 13]),
    library.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

# cb2

commands(
    ("cb2", 1),
    library.sixteenths(
        [-4, 2, 2, 2, 2],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.tuplet_bracket_up(),
)

commands(
    ("cb2", 2),
    library.sixteenths(
        [2, 2, 6, 2, -4],
        untie=True,
        written_quarters=[0],
        invisible=[1],
    ),
)

commands(
    ("cb2", (1, 2)),
    baca.pitch(
        "E5",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.lparts([1, 1, 1, 1, 1, 1, 2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    # TODO: text spanner currently must precede pitched trill spanner; fix
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.selectors.leaves((1, 8)),
    ),
    baca.trill_spanner(
        alteration="Fqs5",
    ),
)

commands(
    ("cb2", (4, 9)),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<A#5 B5 C6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb2", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("cb2", [11, 13]),
    library.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (1, 4), (2, 4)])
    return result


commands(
    ("cb2", 12),
    library.sixteenths(
        [3, -1, -8, "-", 3, -1, -8],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    ),
)

commands(
    ("cb2", (11, 13)),
    library.bridge_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
)

commands(
    ("cb2", (12, 13)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[4:]),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1"], 1),
    library.sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
    # TODO: promote to library.sixteenths()
    baca.invisible_music(
        baca.selectors.pleaves(([1], 2)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=baca.selectors.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -3,
        baca.selectors.pleaf(1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        baca.selectors.pleaf(-1),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["vc1", "vc2", "cb1"], 2),
    library.sixteenths(
        [-4, 6, 2, -4],
        untie=True,
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.selectors.lparts([2, 1 + 1]),
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[0, 1],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], [4, 6, 8]),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], [5, 7, 9]),
    baca.make_notes(),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 9)),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< fff-scratch",
    ),
    baca.dls_staff_padding(4 + 2),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 12),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "fff-scratch",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 12),
    baca.staff_lines(5),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.dynamic("pp"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 13)),
    baca.dls_staff_padding(6),
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
