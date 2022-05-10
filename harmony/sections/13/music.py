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
    library.make_sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 1),
    baca.reapply_persistent_indicators(),
    # TODO: promote into library.make_sixteenths():
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
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("bfl", 3),
    library.make_sixteenths(
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 3),
    baca.pitch("B4"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("bfl", 4),
    library.make_appoggiato_rhythm(
        counts=[9],
        incise=True,
    ),
)

commands(
    ("bfl", 4),
    baca.pitches(
        "A3",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a, -9),
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pleaf(_, 0, grace=False),
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
    library.make_sixteenths(
        [4, 8],
    ),
)

commands(
    ("bfl", 5),
    baca.pitch("Dtqf5"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
    baca.breathe(
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        map=lambda _: baca.select.clparts(_, [2]),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
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
    library.make_appoggiato_rhythm(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
)

commands(
    ("perc1", 1),
    baca.reapply_persistent_indicators(),
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
    ("perc1", 3),
    library.make_appoggiato_rhythm(
        divisions=[20, 8],
        counts=[0, 3],
        rest_after=True,
    ),
)

commands(
    ("perc1", 3),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("perc1", 4),
    baca.make_notes(),
)

commands(
    ("perc1", 4),
    baca.staff_lines(1),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
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
    library.make_sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("perc1", 5),
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
    library.make_appoggiato_rhythm(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
)

commands(
    ("perc2", 1),
    baca.reapply_persistent_indicators(),
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
    ("perc2", 3),
    library.make_appoggiato_rhythm(
        divisions=[20, 8],
        counts=[0, 4],
        rest_after=True,
    ),
)

commands(
    ("perc2", 3),
    baca.staff_position(0),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("perc2", 4),
    library.make_sixteenths(
        [20, "-", 1, -1],
    ),
)

commands(
    ("perc2", 4),
    baca.staff_lines(1),
    baca.new(
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.new(
        library.bass_drum_staff_position(),
        baca.flat_glissando(),
        baca.stem_tremolo(),
        selector=lambda _: baca.select.plt(_, 0),
    ),
    baca.new(
        library.brake_drum_staff_position(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.5"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    ("perc2", 5),
    library.make_sixteenths(
        [2, -2],
    ),
)

commands(
    ("perc2", 5),
    library.brake_drum_staff_position(),
)

commands(
    ("perc2", (4, 5)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:]),
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
    library.make_sixteenths(
        [-4, 4, 8, -4],
    ),
)

commands(
    ("hp", 1),
    baca.reapply_persistent_indicators(),
    baca.clef("bass"),
    baca.staff_lines(5),
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
    ("hp", (3, 4)),
    library.make_sixteenths(
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    ),
)

commands(
    ("hp", (3, 4)),
    baca.clef("treble"),
    baca.pitches(
        "Bb5 A5 G#5",
        lambda _: baca.select.plts(_)[:-1],
    ),
    baca.flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_)[:-1],
    ),
    baca.dynamic("f"),
    baca.new(
        baca.pitch("E4"),
        baca.dynamic("f-ancora"),
        baca.snap_pizzicato(),
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("hp", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:8]),
    ),
)

commands(
    ("hp", 5),
    library.make_sixteenths(
        [2, -2],
    ),
)

commands(
    ("hp", 5),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[6:]),
    ),
)

commands(
    ("hp", (1, 5)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", 1),
    library.make_appoggiato_rhythm(
        divisions=[4, 12, 4],
        counts=[0, 7, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
)

commands(
    ("va", 1),
    baca.reapply_persistent_indicators(),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaf(_, 0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.leaves(_, grace=False)[2:],
    ),
)

commands(
    ("va", 3),
    baca.make_notes(),
)

commands(
    ("va", 3),
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
)

commands(
    ("va", (4, 5)),
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
    library.make_appoggiato_rhythm(
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
)

commands(
    ("vc1", 1),
    baca.reapply_persistent_indicators(),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaf(_, 0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.leaves(_, grace=False)[2:],
    ),
)

commands(
    ("vc1", 3),
    baca.make_notes(),
)

commands(
    ("vc1", 3),
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
        selector=lambda _: baca.select.plt(_, 0),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc1", 5),
    baca.pitch(
        "Aqf3",
        lambda _: baca.select.lleak(baca.select.leaves(_)),
    ),
)

# vc2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [7, -1, 12],
    ),
)

commands(
    ("vc2", 1),
    baca.reapply_persistent_indicators(),
    baca.repeat_tie(
        lambda _: baca.select.phead(_, 0),
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
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
    ),
    baca.dynamic(
        "mp",
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[1:]),
    ),
)

commands(
    ("vc2", 3),
    baca.make_notes(),
)

commands(
    ("vc2", 3),
    baca.dynamic(
        "mp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("vc2", 4),
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 0),
    ),
    baca.hairpin(
        "(mp) >o niente",
        selector=lambda _: baca.select.leaves(_)[:-1],
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
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
    ),
)

# cb1

commands(
    ("cb1", 1),
    library.make_appoggiato_rhythm(
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
    ),
)

commands(
    ("cb1", 1),
    baca.reapply_persistent_indicators(),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaf(_, 0),
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.leaves(_, grace=False)[2:],
    ),
)

commands(
    ("cb1", 3),
    baca.make_notes(),
)

commands(
    ("cb1", 3),
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
        selector=lambda _: baca.select.plt(_, 0),
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb1", 5),
    baca.pitch(
        "Dtqf2",
        lambda _: baca.select.lleak(baca.select.leaves(_)),
    ),
)

# cb2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [7, -1, 12],
    ),
)

commands(
    ("cb2", 1),
    baca.reapply_persistent_indicators(),
    baca.repeat_tie(
        lambda _: baca.select.phead(_, 0),
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
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
    ),
    baca.dynamic(
        "mp",
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[1:]),
    ),
)

commands(
    ("cb2", 3),
    baca.make_notes(),
)

commands(
    ("cb2", 3),
    baca.dynamic(
        "mp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("cb2", 4),
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 0),
    ),
    baca.hairpin(
        "(mp) >o niente",
        selector=lambda _: baca.select.leaves(_)[:-1],
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
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    ("vc1", 4),
    library.make_sixteenths(
        ["+", 2],
        unbeam=True,
    ),
)

commands(
    ("vc2", 4),
    library.make_sixteenths(
        ["+", 2],
        unbeam=True,
    ),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        ["+", 2],
        unbeam=True,
    ),
)

commands(
    ("cb2", 4),
    library.make_sixteenths(
        ["+", 2],
        unbeam=True,
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 4),
    baca.new(
        baca.accent(),
        baca.stem_tremolo(),
        baca.dynamic("p"),
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("vc1", 5),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("vc2", 5),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("cb1", 5),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("cb2", 5),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 5),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-4:]),
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
