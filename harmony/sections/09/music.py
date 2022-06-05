import abjad
import baca

from harmony import library

#########################################################################################
######################################### 09 [I] ########################################
#########################################################################################

stage_markup = (
    ("[I.1]", 1),
    ("[I.2]", 2),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (6, 4),
        (6, 4),
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
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.open_volta(lambda _: baca.select.skip(_, 1 - 1)),
    baca.double_volta(lambda _: baca.select.skip(_, 2 - 1)),
    baca.close_volta(lambda _: baca.select.skip(_, 2 - 1), site="after"),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("bfl", 2),
    library.make_sixteenths(
        [3, 6, 3, 3, 6, 3],
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
)

commands(
    ("perc1", 2),
    library.make_sixteenths(
        [2, -2, -4, -4, 2, -2, 2, -2, -4],
    ),
)

# PERC2

commands(
    ("perc2", 1),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [3, -6, 3, 3, -6, 3],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [-6, -2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("hp", 2),
    baca.make_mmrests_flat(),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [-4, "+"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("va", 2),
    library.make_sixteenths(
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("vc1", 2),
    library.make_sixteenths(
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("vc2", 2),
    library.make_sixteenths(
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

# CB1

commands(
    ("cb1", 1),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("cb1", 2),
    library.make_sixteenths(
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [-9, 3, -9, 3],
    ),
)

# anchor notes

commands(
    ["bfl", "perc2", "va", "vc1", "vc2", "cb1", "cb2"],
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
    ("bfl", 1),
    baca.pitch("G3"),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            left_broken=True,
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
        ),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
    ),
)

commands(
    ("bfl", 2),
    baca.pitch("Gb3"),
    baca.color_fingerings([0, 1, 2]),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("bfl", (1, 2)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 2),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("perc1", (1, 2)),
    library.slate_staff_position(),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 2),
    baca.new(
        library.bass_drum_staff_position(),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[:-1],
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-sponge-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.flat_glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[-1:]),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaf(_, -1),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.pitch("<B5 C#6>"),
    baca.double_flageolet(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

# va

commands(
    ("va", 1),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\harmony-match-harp-decay-markup",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", 2),
    baca.pitch("C4"),
)

# vc1

commands(
    ("vc1", (1, 2)),
    baca.pitch("B4"),
)

# vc2

commands(
    ("vc2", (1, 2)),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("bass"),
    baca.pitch("E3"),
    baca.note_head_style_harmonic(),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 2),
    baca.pitch("F3"),
)

# va, vc1, vc2, cb2


commands(
    (["va", "vc1", "vc2", "cb1"], 2),
    baca.tuplet_bracket_up(),
    baca.hairpin(
        "mp >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.new(
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            right_broken=True,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        match=[0, 1, 2],
    ),
    baca.new(
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        match=[3],
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 2),
    baca.clef("treble"),
    baca.pitches(
        "Fqs5 Gqf5",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("ff"),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 6.5"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.markup(
        r"\baca-thirteen-a",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
    baca.markup(
        r"\baca-fourteen-a",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.stop_on_string(
        lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
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
