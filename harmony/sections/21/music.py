import abjad
import baca

from harmony import library

#########################################################################################
######################################### 21 [U] ########################################
#########################################################################################

stage_markup = (
    ("[>W.4]", 1, "#darkgreen"),
    ("[U.1]", 2),
    ("[>W.4]", 4, "#darkgreen"),
    ("[U.2]", 5),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (6, 4),
        (4, 4),
        (1, 4),
        (6, 4),
        (5, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    commands,
    commands.manifests(),
    commands.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

commands(
    "Skips",
    baca.close_volta(lambda _: baca.select.skip(_, 3 - 1)),
)

skips = score["Skips"]
manifests = commands.manifests()

for index, item in (
    (1 - 1, "96"),
    (1 - 1, "4.=4"),
    (2 - 1, "57 3/5"),
    (2 - 1, "3:5(4)=4"),
    (4 - 1, "96"),
    (4 - 1, "5:3(4)=4"),
    (5 - 1, "57 3/5"),
    (5 - 1, "3:5(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

baca.commands._open_volta(skips[1 - 1], commands.first_measure_number)

commands(
    "Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 3 - 1)),
)

# text

commands(
    "Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 3 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("bfl", 2),
    library.make_sixteenths(
        [-4, 2, 2],
        written_quarters=([0], 1),
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 4),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("bfl", 5),
    library.make_sixteenths(
        [4, -4],
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_sixteenths(
        [4, "-"],
    ),
)

commands(
    ("perc1", 2),
    library.make_phjc_rhythm(
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    ),
)


commands(
    ("perc1", 3),
    baca.make_mmrests_flat(),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (5, 4)])
    return result


commands(
    ("perc1", 4),
    library.make_sixteenths(
        [4, -4, 4, -4],
        preprocessor=preprocessor,
        extra_counts=[0, -8],
        denominator=None,
    ),
)

commands(
    ("perc1", 5),
    library.make_sixteenths(
        [4, -4],
    ),
)

# PERC2


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (5, 4)])
    return result


commands(
    ("perc2", 1),
    library.make_sixteenths(
        [4, -8, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -8],
        denominator=None,
    ),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [-4, 4],
    ),
)

commands(
    ("perc2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", 4),
    library.make_sixteenths(
        [4, "-"],
    ),
)

commands(
    ("perc2", 5),
    library.make_sixteenths(
        [6, 3, 7, 4],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [4, "-"],
    ),
)


commands(
    ("hp", (2, 3)),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", 4),
    library.make_sixteenths(
        [4, "-"],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (4, 4)])
    return result


commands(
    ("hp", 5),
    library.make_sixteenths(
        [-12, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("va", 2),
    library.make_sixteenths(
        [-4, 4],
    ),
)

commands(
    ("va", 3),
    baca.make_mmrests(),
)

commands(
    ("va", 4),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("va", 5),
    library.make_sixteenths(
        [-6, 1, -10, 1, "-"],
        extra_counts=[1],
    ),
)

# VC1


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (4, 4)])
    return result


commands(
    ("vc1", 1),
    library.make_sixteenths(
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    ),
)

commands(
    ("vc1", 2),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("vc1", 4),
    library.make_sixteenths(
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    ),
)

commands(
    ("vc1", 5),
    library.make_sixteenths(
        [3, 7, 4, 6],
    ),
)

# VC2

commands(
    ("vc2", 1),
    baca.make_notes(),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("vc2", 4),
    baca.make_notes(),
)

commands(
    ("vc2", 5),
    library.make_sixteenths(
        [7, 4, 6, 3],
    ),
)

# CB1


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (4, 4)])
    return result


commands(
    ("cb1", 1),
    library.make_sixteenths(
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    ),
)

commands(
    ("cb1", 2),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("cb1", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("cb1", 4),
    library.make_sixteenths(
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    ),
)

commands(
    ("cb1", 5),
    library.make_sixteenths(
        [4, 6, 3, 7],
    ),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [-4, 3, -1],
    ),
)

commands(
    ("cb2", 3),
    baca.make_mmrests_flat(),
)

commands(
    ("cb2", 4),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("cb2", 5),
    library.make_sixteenths(
        [6, 3, 7, 4],
    ),
)

# anchor notes

commands(
    ["bfl", "hp", "vc1", "vc2", "cb1", "cb2"],
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
    baca.pitch("E5"),
    baca.hairpin(
        "o< f >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        alteration="m2",
        map=lambda _: baca.select.runs(_)[:1],
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="m2",
        map=lambda _: baca.select.runs(_)[1:2],
    ),
)

commands(
    ("bfl", [1, 4]),
    baca.pitch("<B3 Dqf4>"),
    baca.markup(
        baca.levine_multiphonic(42),
        match=[0],
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
)

commands(
    ("bfl", 5),
    baca.pitch("E5"),
    baca.dynamic("mp"),
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
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2, -2, 0]),
    baca.dynamic("p"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)


commands(
    ("perc1", 4),
    baca.staff_lines(1),
    baca.tuplet_bracket_down(),
    baca.new(
        library.bass_drum_staff_position(),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.new(
        library.brake_drum_staff_position(),
        baca.dynamic("mp-ancora"),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("perc1", 5),
    library.brake_drum_staff_position(),
)

commands(
    ("perc1", (4, 5)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[2:],
    ),
)

# perc2


commands(
    ("perc2", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.tuplet_bracket_up(),
    baca.pitch(
        "E4",
        lambda _: baca.select.plt(_, 0),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
    baca.dls_staff_padding(
        4,
        lambda _: baca.select.leaves(_)[:2],
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bass_drum_staff_position(),
        baca.dynamic("mp"),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    ("perc2", 2),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.new(
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        ),
        selector=lambda _: baca.select.leaves(_)[2:],
    ),
)

commands(
    ("perc2", 4),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# hp

commands(
    ("hp", [1, 4]),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.new(
        baca.dynamic("f"),
        match=[0],
    ),
    baca.new(
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        match=[1],
    ),
    baca.markup(
        r"\baca-xyl-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
        match=[0],
    ),
)


commands(
    ("hp", 5),
    baca.tuplet_bracket_up(),
    baca.pitches("F5 E5 Eb5"),
    baca.flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("f"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-3:]),
    ),
)

commands(
    ("hp", (1, 5)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", [1, 4]),
    baca.pitch("E4"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "P4 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        left_broken=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 1),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
    ),
)

commands(
    ("va", 2),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("va", 5),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.note_head_style_harmonic(),
    baca.dynamic("mf"),
    baca.pizzicato_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
    ),
)

commands(
    ("va", [2, 5]),
    baca.pitch("Bb3"),
)

# vc1


commands(
    ("vc1", [1, 4]),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc1", 5),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("vc1", [2, 5]),
    baca.clef("treble"),
    baca.pitch("Aqf4"),
    baca.markup(r"\baca-eleven-e-flat"),
)

# vc2

commands(
    ("vc2", [1, 4]),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", 5),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", [2, 5]),
    baca.clef("treble"),
    baca.pitch("F4"),
)

# cb1


commands(
    ("cb1", [1, 4]),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", 5),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb1", [2, 5]),
    baca.clef("treble"),
    baca.pitch("Dtqf4"),
    baca.markup(r"\baca-seven-e-flat"),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
)

commands(
    ("cb2", [1, 4]),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        match=[0],
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "mf >o",
        bookend=False,
        match=[1],
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 5),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", [2, 5]),
    baca.pitch("Eb2"),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 2),
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

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
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
        fermata_measure_empty_overrides=[3],
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
