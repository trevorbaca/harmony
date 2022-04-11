import abjad
import baca

from harmony import library

#########################################################################################
######################################### 13 [M] ########################################
#########################################################################################

stage_markup = (
    ("[M.1]", 1),
    ("[M.2]", 3),
    ("[◀J.6]", 4, "#darkgreen"),
    ("[◀L.4]", 5, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (3, 4),
        (1, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "M",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "M",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("2.=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 5 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 2 - 1)),
    baca.global_fermata("short", lambda _: baca.select.rest(_, 6 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twelve",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 2 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-thirteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 6 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 1),
    library.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TODO: promote into library.sixteenths():
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
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=baca.selectors.leaves((None, 3)),
    ),
)

commands(
    ("bfl", 3),
    library.sixteenths(
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
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("bfl", 4),
    library.appoggiato(
        counts=[9],
        incise=True,
    ),
    baca.pitches(
        "A3",
        baca.selectors.leaves(grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a, -9),
        baca.selectors.leaves(grace=True),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.pleaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("bfl", 5),
    library.sixteenths(
        [4, 8],
    ),
    baca.pitch("Dtqf5"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
    baca.breathe(
        baca.selectors.pleaf(1),
    ),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=baca.selectors.lparts([1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        map=baca.selectors.clparts([2]),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
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
    library.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
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
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc1", 3),
    library.appoggiato(
        divisions=[20, 8],
        counts=[0, 3],
        rest_after=True,
    ),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    baca.make_notes(),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 5),
    library.sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
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
    library.appoggiato(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
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
        selector=baca.selectors.leaf(0, grace=False),
    ),
)

commands(
    ("perc2", 3),
    library.appoggiato(
        divisions=[20, 8],
        counts=[0, 4],
        rest_after=True,
    ),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("perc2", 4),
    baca.staff_lines(1),
    library.sixteenths(
        [20, "-", 1, -1],
    ),
    baca.new(
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=baca.selectors.pleaf(0),
    ),
    baca.new(
        library.bass_drum_staff_position(),
        baca.flat_glissando(),
        baca.stem_tremolo(),
        selector=baca.selectors.plt(0),
    ),
    baca.new(
        library.brake_drum_staff_position(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.5"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc2", 5),
    library.sixteenths(
        [2, -2],
    ),
    library.brake_drum_staff_position(),
)

commands(
    ("perc2", (4, 5)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
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
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [-4, 4, 8, -4],
    ),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.selectors.lparts([1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (3, 4)),
    library.sixteenths(
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    ),
    baca.clef("treble"),
    baca.pitches(
        "Bb5 A5 G#5",
        lambda _: baca.select.plts(_)[:-1],
    ),
    baca.flageolet(
        baca.selectors.pheads(),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_)[:-1],
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
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((1, 8), rleak=True),
    ),
)

commands(
    ("hp", 5),
    library.sixteenths(
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
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
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
    library.appoggiato(
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
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("va", (1, 3)),
    baca.new(
        baca.pitch("Bb3"),
        selector=lambda _: baca.select.plts(_)[:1],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("Db3"),
        selector=lambda _: baca.select.plts(_, grace=False)[1:],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_d_flat_3,
        ),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
)

commands(
    ("va", (4, 5)),
    baca.make_repeat_tied_notes(),
    baca.pitch("D3"),
    baca.hairpin(
        "(mp) >o niente",
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

# vc1

commands(
    ("vc1", 1),
    library.appoggiato(
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
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("vc1", (1, 3)),
    baca.new(
        baca.pitch("Aqf3"),
        selector=lambda _: baca.select.plts(_)[:1],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("C3"),
        selector=lambda _: baca.select.plts(_, grace=False)[1:],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_c_3,
        ),
        selector=lambda _: baca.select.plts(_, grace=True),
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
        abjad.Tweak(r"- \tweak staff-padding 3"),
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
    library.sixteenths(
        [7, -1, 12],
    ),
    baca.repeat_tie(
        baca.selectors.phead(0),
    ),
    baca.new(
        baca.pitch("F3"),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.plts(_)[:1],
    ),
    baca.pitch(
        "C3",
        selector=lambda _: baca.select.plts(_)[1:],
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
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=baca.selectors.plts((1, None), rleak=True),
    ),
)

commands(
    ("vc2", 3),
    baca.make_notes(),
    baca.dynamic(
        "mp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
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
        lambda _: baca.select.plts(_)[:1],
    ),
    baca.pitch(
        "F3",
        lambda _: baca.select.plts(_)[1:],
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=baca.selectors.plts((None, 1), rleak=True),
    ),
)

# cb1

commands(
    ("cb1", 1),
    library.appoggiato(
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
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("cb1", (1, 3)),
    baca.new(
        baca.pitch("Dtqf3"),
        selector=lambda _: baca.select.plts(_)[:1],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("B2"),
        selector=lambda _: baca.select.plts(_, grace=False)[1:],
    ),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitches(
            library.appoggiato_pitches_b_2,
        ),
        selector=lambda _: baca.select.plts(_, grace=True),
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
        abjad.Tweak(r"- \tweak staff-padding 3"),
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
    library.sixteenths(
        [7, -1, 12],
    ),
    baca.repeat_tie(
        baca.selectors.phead(0),
    ),
    baca.new(
        baca.pitch("Eb2"),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.plts(_)[:1],
    ),
    baca.pitch(
        "B2",
        lambda _: baca.select.plts(_)[1:],
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
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=baca.selectors.plts((1, None), rleak=True),
    ),
)

commands(
    ("cb2", 3),
    baca.make_notes(),
    baca.dynamic(
        "mp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
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
        lambda _: baca.select.plts(_)[:1],
    ),
    baca.pitch(
        "Eb2",
        lambda _: baca.select.plts(_)[1:],
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=baca.selectors.plts((None, 1), rleak=True),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 4),
    library.sixteenths(
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
    library.sixteenths(
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
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=baca.selectors.leaves((-4, None), rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
    baca.dls_staff_padding(4),
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
        fermata_measure_empty_overrides=[2, 6],
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
