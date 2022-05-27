import abjad
import baca

from harmony import library

#########################################################################################
######################################### 04 [D] ########################################
#########################################################################################

stage_markup = (
    ("[D.1-6]", 1),
    ("[D.7]", 8),
    ("[<B.6]", 9, "#darkgreen"),
    ("[D.8]", 10),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.section_accumulation_defaults(),
    instruments=library.instruments(),
    margin_markups=library.margin_markups(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (3, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

commands(
    "GlobalSkips",
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("5:4(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 9 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 9 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 11 - 1)),
    baca.metronome_mark("2=4", lambda _: baca.select.skip(_, 11 - 1)),
)

commands(
    "GlobalRests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 7 - 1)),
    baca.global_fermata("short", lambda _: baca.select.rest(_, 10 - 1)),
)

# BFL

commands(
    ("bfl", (1, 6)),
    library.make_tessera_1(
        6,
        gap=True,
    ),
)

commands(
    ("bfl", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 8),
    library.make_tessera_1(
        6,
        advance=72,
        gap=True,
    ),
)

commands(
    ("bfl", 9),
    library.make_sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
)

commands(
    ("bfl", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 11),
    library.make_tessera_1(
        6,
        advance=72 + 12,
        gap=True,
    ),
)

# PERC1

commands(
    ("perc1", (1, 6)),
    library.make_phjc_rhythm(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
)

commands(
    ("perc1", (7, 8)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", 9),
    library.make_appoggiato_rhythm(
        counts=[7],
        rest_after=True,
    ),
)

commands(
    ("perc1", (10, 11)),
    baca.make_mmrests_flat(),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_phjc_rhythm(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
)

commands(
    ("perc2", (2, 4)),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", (5, 6)),
    library.make_train_rhythm(
        [2],
        rest_leaves=[0],
    ),
)

commands(
    ("perc2", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 8),
    library.make_train_rhythm(
        [2],
        rest_leaves=[0, 1, 2],
    ),
)

commands(
    ("perc2", 9),
    library.make_sixteenths(
        [4, 4, "-"],
    ),
)

commands(
    ("perc2", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 11),
    library.make_sixteenths(
        [-6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
)

# HP

commands(
    ("hp", (1, 6)),
    library.make_tessera_1(5),
)

commands(
    ("hp", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 8),
    library.make_tessera_1(
        5,
        advance=72,
    ),
)

commands(
    ("hp", 9),
    library.make_sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    ),
)

commands(
    ("hp", 10),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 11),
    library.make_tessera_1(
        5,
        advance=72 + 12,
    ),
)

# VA

commands(
    ("va", (1, 6)),
    library.make_tessera_1(
        4,
        gap=True,
    ),
)

commands(
    ("va", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("va", 8),
    library.make_tessera_1(
        4,
        advance=72,
        gap=True,
    ),
)

commands(
    ("va", 9),
    library.make_appoggiato_rhythm(
        counts=[7],
    ),
)

commands(
    ("va", 10),
    baca.make_mmrests(),
)

commands(
    ("va", 11),
    library.make_tessera_1(
        4,
        advance=72 + 12,
        gap=True,
    ),
)

# VC1

commands(
    ("vc1", (1, 6)),
    library.make_tessera_1(
        3,
        gap=True,
    ),
)

commands(
    ("vc1", 7),
    baca.make_mmrests(),
)

commands(
    ("vc1", 8),
    library.make_tessera_1(
        3,
        advance=72,
        gap=True,
    ),
)

commands(
    ("vc1", 9),
    library.make_appoggiato_rhythm(
        counts=[7],
    ),
)

commands(
    ("vc1", 10),
    baca.make_mmrests(),
)

commands(
    ("vc1", 11),
    library.make_tessera_1(
        3,
        advance=72 + 12,
        gap=True,
    ),
)

# VC2

commands(
    ("vc2", (1, 6)),
    library.make_tessera_1(
        2,
        gap=True,
    ),
)

commands(
    ("vc2", 7),
    baca.make_mmrests(),
)

commands(
    ("vc2", 8),
    library.make_tessera_1(
        2,
        advance=72,
        gap=True,
    ),
)

commands(
    ("vc2", 9),
    library.make_appoggiato_rhythm(
        counts=[7],
    ),
)

commands(
    ("vc2", 10),
    baca.make_mmrests(),
)

commands(
    ("vc2", 11),
    library.make_tessera_1(
        2,
        advance=72 + 12,
        gap=True,
    ),
)

# CB1

commands(
    ("cb1", (1, 6)),
    library.make_tessera_1(1),
)

commands(
    ("cb1", 7),
    baca.make_mmrests(),
)

commands(
    ("cb1", 8),
    library.make_tessera_1(
        1,
        advance=72,
    ),
)

commands(
    ("cb1", 9),
    library.make_appoggiato_rhythm(
        counts=[7],
    ),
)

commands(
    ("cb1", 10),
    baca.make_mmrests(),
)

commands(
    ("cb1", 11),
    library.make_tessera_1(
        1,
        advance=72 + 12,
    ),
)

# CB2

commands(
    ("cb2", (1, 6)),
    library.make_tessera_1(0),
)

commands(
    ("cb2", 7),
    baca.make_mmrests(),
)

commands(
    ("cb2", 8),
    baca.make_notes(),
)

commands(
    ("cb2", 9),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("cb2", 10),
    baca.make_mmrests(),
)

commands(
    ("cb2", 11),
    baca.make_notes(),
)

# phantom & reapply

music_voices = [_ for _ in voice_names if "MusicVoice" in _]

commands(
    music_voices,
    baca.append_phantom_measure(),
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", (1, 6)),
    baca.pitch("F#3"),
)

commands(
    ("bfl", 8),
    baca.pitch("F#3"),
)

commands(
    ("bfl", 9),
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.plts(_), [0, 1], 3),
    ),
    baca.hairpin(
        "o<| ff |> p",
        map=lambda _: baca.select.clparts(_, [3]),
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
)

commands(
    ("bfl", 11),
    baca.pitch("F#3"),
)

commands(
    ("bfl", (1, 11)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 6)),
    baca.new(
        library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        measures=(1, 2),
    ),
    baca.new(
        library.purpleheart_staff_positions([0, 2, 0, 2, 2]),
        baca.hairpin(
            "p < f",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        measures=(5, 6),
    ),
)

commands(
    ("perc1", 9),
    library.purpleheart_staff_positions([-2]),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)

commands(
    ("perc1", (1, 11)),
    baca.dls_staff_padding(5.5),
)

# perc2

commands(
    ("perc2", 1),
    library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
    baca.hairpin(
        "f > p",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc2", (5, 6)),
    library.purpleheart_staff_positions([2]),
    baca.hairpin(
        "p < f",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("perc2", 8),
    baca.dynamic("p-sub"),
)

commands(
    ("perc2", (8, 9)),
    library.purpleheart_staff_positions([2]),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
)

commands(
    ("perc2", 11),
    library.purpleheart_staff_positions([0]),
    baca.dynamic("f-sub"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
)

commands(
    ("perc2", (1, 11)),
    baca.dls_staff_padding(5.5),
)

# hp

commands(
    ("hp", (1, 6)),
    baca.clef("treble"),
    baca.pitch("C#4"),
)

commands(
    ("hp", 8),
    baca.pitch("C#4"),
)

commands(
    ("hp", 9),
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "p < ff > p",
        map=lambda _: baca.select.clparts(_, [3]),
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", 11),
    baca.pitch("C#4"),
)

commands(
    ("hp", (1, 11)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", (1, 6)),
)

commands(
    ("va", 9),
    baca.clef("alto"),
    baca.staff_lines(5),
    baca.pitch(
        "Ab3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -27 - 21),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.dls_staff_padding(
        4,
        selector=lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("va", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("va", [(1, 6), 8, 11]),
    library.bridge_staff_position(),
)

commands(
    ("va", [(1, 8), 11]),
    baca.dls_staff_padding(6),
)

# vc1

commands(
    ("vc1", (1, 6)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("vc1", [(1, 8), 11]),
    baca.pitch("F#3"),
)

commands(
    ("vc1", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -19 - 21),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("vc1", 11),
    baca.clef("bass"),
)

commands(
    ("vc1", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc2

commands(
    ("vc2", (1, 6)),
)

commands(
    ("vc2", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -18 - 21),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("vc2", 11),
    baca.clef("bass"),
)

commands(
    ("vc2", [(1, 8), 11]),
    baca.pitch("F3"),
)

commands(
    ("vc2", (1, 11)),
    baca.dls_staff_padding(4),
)

# vc1, vc2

commands(
    (["vc1", "vc2"], [(1, 6), 8, 11]),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleak(baca.ltleaves(_), grace=False),
    ),
)

# cb1

commands(
    ("cb1", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
)

commands(
    ("cb1", 9),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -32 - 21),
        do_not_transpose=True,
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "ff-p",
        abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.dls_staff_padding(
        6,
        selector=lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 10"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("cb1", [(1, 6), 8, 11]),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleaves(_, grace=False),
    ),
    baca.markup(r"\baca-eleven-e"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", [(1, 8), 11]),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 6)),
    baca.clef("treble"),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
    ),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak X-offset 2.5"),
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", (8, 9)),
    baca.clef("bass"),
    baca.pitch("Ab1"),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb2", 11),
    baca.flat_glissando(
        "E1",
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o< f",
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("cb2", (1, 11)),
    baca.dls_staff_padding(4),
)

# cb1, cb2

commands(
    ("cb1", [(1, 6), 8, 11]),
    baca.note_head_style_harmonic(),
)

commands(
    ("cb2", (1, 6)),
    baca.note_head_style_harmonic(),
)

# bfl, hp, va, vc1, vc2, cb1, cb2

commands(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [(1, 6), 8, 11]),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("cb2", (1, 6)),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    (["bfl", "hp", "cb1", "cb2"], (1, 3)),
    baca.hairpin(
        "pp p mp mf f",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    (["bfl", "hp", "cb1", "cb2"], (4, 6)),
    baca.hairpin(
        "mf mp p pp pp pp",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    (["va", "vc2"], (1, 3)),
    baca.hairpin(
        'pp p mp mf "f"',
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    ("vc1", (1, 3)),
    baca.hairpin(
        'p mp mf "f"',
        bookend=False,
        pieces=lambda _: baca.select.plts(_)[1:],
    ),
)

commands(
    (["va", "vc1", "vc2"], (4, 6)),
    baca.hairpin(
        "mf mp p pp pp pp",
        bookend=False,
        pieces=lambda _: baca.select.plts(_),
    ),
)

commands(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [8, 11]),
    baca.dynamic("pp"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1"], 9),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
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
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[7, 10],
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
