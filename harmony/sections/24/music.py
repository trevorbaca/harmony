import abjad
import baca

from harmony import library

#########################################################################################
######################################### 24 [X] ########################################
#########################################################################################

stage_markup = (
    ("[X.1-3]", 1),
    ("[<V.6]", 4, "#darkgreen"),
    ("[X.4-5]", 5),
    ("[X.6-8]", 7),
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
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
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

skips = score["Skips"]
manifests = commands.manifests()

for index, item in (
    (1 - 1, "48"),
    (1 - 1, "2.=4"),
    (4 - 1, "72"),
    (4 - 1, "3:2(4)=4"),
    (5 - 1, "48"),
    (5 - 1, "4.=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [2, 3, -3],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 9),
    [2, 2, -2],
)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [5, -3],
)
voice.extend(music)

music = baca.make_notes(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 9),
    [3, -3],
)
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [2, -8, 2, -3, 2, -8],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5),
    [1, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(4, 4), (4, 4), (4, 4), (1, 4)])
    return result


music = library.make_sixteenths(
    commands.get(7, 9),
    [16, 16, 16, -4, 2],
    preprocessor=preprocessor,
    extra_counts=[0, 0, 0, 2],
    denominator=None,
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [1, -9, 1, -4, 1, -9],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 9),
    [3, -3],
)
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [2, 2, -10],
    written_quarters=[0, 1, 4, 5],
    invisible=[1, 5],
    tie_runs=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4),
    ["+"],
    after_graces=[1],
)
voice.extend(music)

music = library.make_tessera_3(
    commands.get(5, 9),
    4,
)
voice.extend(music)


# VC1

voice = score["Cello.1.Music"]


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
    return result


music = library.make_sixteenths(
    commands.get(1, 3),
    [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[4, 0, 4],
    denominator=None,
    written_quarters=[5],
    invisible=[6],
    tie=[6],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4),
    [4, "-"],
)
voice.extend(music)

music = library.make_tessera_3(
    commands.get(5, 9),
    3,
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [2, 2, -10],
    written_quarters=[0, 1, 4, 5],
    invisible=[1, 5],
    tie_runs=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4),
    ["+"],
    after_graces=[1],
)
voice.extend(music)

music = library.make_tessera_3(
    commands.get(5, 9),
    2,
)
voice.extend(music)


# CB1

voice = score["Contrabass.1.Music"]


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
    return result


music = library.make_sixteenths(
    commands.get(1, 3),
    [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[4, 0, 4],
    denominator=None,
    written_quarters=[5],
    invisible=[6],
    tie=[6],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4),
    [4, "-"],
)
voice.extend(music)

music = library.make_tessera_3(
    commands.get(5, 9),
    1,
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    commands.get(1, 3),
    [2, 2, -10],
    written_quarters=[0, 1, 4, 5],
    invisible=[1, 5],
    tie_runs=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4),
    ["+"],
    after_graces=[1],
)
voice.extend(music)

music = library.make_tessera_3(
    commands.get(5, 9),
    0,
)
voice.extend(music)

# anchor notes

commands(
    "perc2",
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
    ("bfl", (1, 3)),
    baca.pitch("F5"),
    baca.hairpin(
        "niente o< mf >o",
        pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 9"),
        pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (5, 9)),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (1, 9)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 3)),
    library.slate_staff_position(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 4),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (5, 9)),
    library.slate_staff_position(),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 9)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 3)),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o<| mf",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 5),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)


commands(
    ("perc2", (7, 9)),
    baca.staff_lines(1),
    baca.new(
        library.tam_tam_staff_position(),
        baca.flat_glissando(),
        selector=lambda _: abjad.select.run(_, 0),
    ),
    baca.new(
        library.purpleheart_staff_positions([2]),
        selector=lambda _: baca.select.leaves(_)[-2:],
    ),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pheads(_), [0, 2]),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(
        6,
        lambda _: baca.select.leaves(_)[:-2],
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.new(
        baca.dynamic("ff"),
        baca.dls_staff_padding(5),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
    baca.staff_lines(
        3,
        selector=lambda _: abjad.select.leaf(_, -2),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, -1),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-1:]),
    ),
)

# hp

commands(
    ("hp", (1, 3)),
    baca.pitch("A4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "mf",
        selector=lambda _: abjad.select.get(baca.select.pheads(_), [0], 3),
    ),
    baca.dynamic(
        "mp",
        selector=lambda _: abjad.select.get(baca.select.pheads(_), [1], 3),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (5, 9)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.whisk_staff_position(),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# va

commands(
    ("va", (1, 3)),
    baca.clef("alto"),
    baca.pitch("F4"),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="M2",
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("va", 4),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

commands(
    ("va", (5, 9)),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 -> P3 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc1


commands(
    ("vc1", (1, 3)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.tuplet_bracket_down(),
    baca.new(
        baca.pitch("F4"),
        baca.triple_staccato(),
        selector=lambda _: abjad.select.get(baca.select.pheads(_), [0, 1, 2, -2, -1]),
    ),
    # NOTE: text spanner must currently come before pitched trill spanner
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[5:12],
    ),
    baca.new(
        baca.pitch("F4"),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="M2",
        ),
        map=lambda _: baca.select.rleak_runs(_, 1, -1),
    ),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: abjad.select.get(
            abjad.select.runs(baca.rleak(abjad.select.leaves(_))), [0, -1]
        ),
    ),
)

commands(
    ("vc1", 4),
    baca.pitch("F4"),
    baca.triple_staccato(),
)

commands(
    ("vc1", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[2:],
    ),
)

commands(
    ("vc1", (5, 9)),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc2

commands(
    ("vc2", (1, 3)),
    baca.clef("treble"),
    baca.pitch("F4"),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="M2",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    # NOTE: current clef / after-grace contention:
    baca.clef(
        "bass",
        lambda _: abjad.select.leaf(_, -1),
    ),
)

commands(
    ("vc2", 4),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

commands(
    ("vc2", (5, 9)),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb1


commands(
    ("cb1", (1, 3)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.tuplet_bracket_down(),
    baca.new(
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.triple_staccato(),
        selector=lambda _: abjad.select.get(baca.select.pheads(_), [0, 1, 2, -2, -1]),
    ),
    # NOTE: text spanner must currently come before pitched trill spanner
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[5:12],
    ),
    baca.new(
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="m2",
        ),
        map=lambda _: baca.select.rleak_runs(_, 1, -1),
    ),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: abjad.select.get(
            abjad.select.runs(baca.rleak(abjad.select.leaves(_))), [0, -1]
        ),
    ),
)

commands(
    ("cb1", 4),
    baca.pitch(
        "E4",
        do_not_transpose=True,
    ),
    baca.triple_staccato(),
)

commands(
    ("cb1", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[2:],
    ),
)

commands(
    ("cb1", (5, 9)),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb2

commands(
    ("cb2", (1, 3)),
    baca.clef("treble"),
    baca.pitch(
        "E4",
        do_not_transpose=True,
    ),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="m2",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    # NOTE: current clef / after-grace contention:
    baca.clef(
        "bass",
        lambda _: abjad.select.leaf(_, -1),
    ),
)

commands(
    ("cb2", 4),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

commands(
    ("cb2", (5, 9)),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "O -> P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 ->",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc2", "cb2"], (1, 3)),
    baca.new(
        baca.staff_lines(5),
        match=[0, 1],
    ),
    baca.hairpin(
        "niente o<| mp |>o",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

# va, vc2, cb2

commands(
    (["va", "vc2", "cb2"], 4),
    baca.new(
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
        match=[0, 1],
    ),
    baca.new(
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
        match=[2],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 9)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.chunk(
        baca.accent(
            lambda _: baca.select.pheads(_),
        ),
        baca.flat_glissando(),
    ),
    baca.dynamic("pp"),
    baca.hairpin(
        "(pp) < f",
        measures=(7, 8),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 9)),
    baca.dls_staff_padding(4),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_section(
        score,
        commands.manifests(),
        commands.time_signatures,
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=commands,
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
