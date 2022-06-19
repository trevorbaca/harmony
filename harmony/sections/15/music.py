import abjad
import baca

from harmony import library

#########################################################################################
######################################### 15 [O] ########################################
#########################################################################################

stage_markup = (
    ("[O.1-2]", 1),
    ("[<L.2]", 3, "#darkgreen"),
    ("[<L.4]", 4, "#darkgreen"),
    ("[O.3-4]", 5),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (2, 4),
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

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    function=commands.get(1, 2),
)
voice.extend(music)

music = library.make_sixteenths(
    [6, 6],
    fuse=True,
    do_not_rewrite_meter=True,
    written_dotted_halves=([0], 1),
    invisible_pairs=True,
    function=commands.get(3),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, 8],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [-1, 3, -8, 4, -8, -1, "+"],
    function=commands.get(5, 9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    function=commands.get(1, 2),
)
voice.extend(music)

music = library.make_sixteenths(
    [12, 16, -4],
    function=commands.get(3),
)
voice.extend(music)

music = library.make_sixteenths(
    [3, 1, "-"],
    written_quarters=True,
    invisible_pairs=True,
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [-1, 3, -8, 4, -8, -1, "+"],
    function=commands.get(5, 9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = baca.make_mmrests(commands.get(1, 3))
voice.extend(music)

music = library.make_sixteenths(
    [2, -2],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_phjc_rhythm(
    [1],
    [1, 2, 1, 1, -1],
    extra_counts=[1],
    rest_nonfirst=True,
    function=commands.get(5),
)
voice.extend(music)

music = library.make_phjc_rhythm(
    [1],
    [1, 2, 1, 1, 1],
    extra_counts=[1, 0],
    rest=[0, 1, -1],
    function=commands.get(6, 7),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(8, 10))
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    ["-", 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(1),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2))
voice.extend(music)

music = library.make_sixteenths(
    [12, 16, -4],
    function=commands.get(3),
)
voice.extend(music)

music = library.make_sixteenths(
    [2, -2],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    ["-", 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6, 8))
voice.extend(music)

music = library.make_sixteenths(
    ["-", 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = baca.make_mmrests(commands.get(1, 3))
voice.extend(music)

music = library.make_sixteenths(
    [4],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [5, -7, 5, -7, 37, "-"],
    function=commands.get(5, 10),
)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    [3, -1, -4, 7, -1, -10, 3, -1, -2],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [4],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [3, -1, -8, 47, -1],
    function=commands.get(5, 9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    [3, -1, -4, 7, -1, -10, 3, -1, -2],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_skeleton(
    r"\times 8/10 { c4 r4 r4 r8. }",
)
voice.extend(music)

music = library.make_sixteenths(
    [4],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [3, -1, -8, 47, -1],
    function=commands.get(5, 9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    [3, -1, -4, 7, -1, -10, 3, -1, -2],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_skeleton(
    r"\times 8/11 { r4 c4 r4 r4 r32 }",
)
voice.extend(music)

music = library.make_sixteenths(
    [4],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [3, -1, -8, 47, -1],
    function=commands.get(5, 9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    [3, -1, -4, 7, -1, -10, 3, -1, -2],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_skeleton(
    r"\times 8/12 { r4 c4 r4 r4 r8 }",
)
voice.extend(music)

music = library.make_sixteenths(
    [4],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [3, -1, -8, 47, -1],
    function=commands.get(5, 9),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", (1, 2)),
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
    ("bfl", 3),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mp >o !",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 4),
    baca.pitch("Dtqf5"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak staff-padding 8"),
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
    baca.breathe(
        lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("bfl", (5, 9)),
    baca.pitch(
        "E3",
        lambda _: baca.select.plt(_, 0),
    ),
    baca.pitch(
        "F#5",
        lambda _: baca.select.plts(_)[1:],
    ),
    baca.accent(),
    baca.dynamic("mf"),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.phead(_, 1),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        selector=lambda _: baca.select.phead(_, 2),
    ),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        argument=r"\baca-cov-markup =|",
        map=lambda _: baca.select.runs(_)[:1],
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.trill_spanner(
        map=lambda _: baca.select.runs(_)[1:2],
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        map=lambda _: baca.select.runs(_)[2:3],
    ),
)

commands(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 2)),
    library.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 3),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc1", 4),
    baca.clef("percussion"),
    baca.staff_lines(1),
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
    ("perc1", (5, 9)),
    library.slate_staff_position(),
    baca.new(
        baca.flat_glissando(
            hide_stem_selector=lambda _: baca.select.leaves(_)[2:-1],
        ),
        measures=(7, 9),
    ),
    baca.dynamic('"f"'),
    baca.dynamic(
        '"f"-sempre',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: baca.select.phead(_, 2),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 4),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
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
    library.purpleheart_staff_positions([2, -2, 0]),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc2", (6, 7)),
    library.purpleheart_staff_positions([-2, 0, 2, 0, 2, -2]),
)

commands(
    ("perc2", (5, 10)),
    baca.dls_staff_padding(5),
)

# hp

commands(
    ("hp", 1),
    baca.clef("treble"),
    baca.damp(
        lambda _: baca.select.rest(_, 0),
    ),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("hp", 3),
    baca.pitch("Eb4"),
    baca.dynamic("mp"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
)

commands(
    ("hp", 4),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", [5, 9]),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.new(
        baca.dynamic("f-ancora"),
        match=[0],
    ),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("hp", (1, 10)),
    baca.dls_staff_padding(4 + 2),
)

# va

commands(
    ("va", 4),
    baca.pitch("Bb3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", (5, 10)),
    baca.pitch("F4"),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pheads(_)[:2],
    ),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: baca.select.phead(_, 2),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

# vc1

commands(
    ("vc1", (1, 2)),
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
    ("vc1", 4),
    baca.pitch("Aqf3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("vc1", (5, 9)),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_)[:1],
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=lambda _: baca.select.runs(_)[1:2],
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
)

# vc2

commands(
    ("vc2", (1, 2)),
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
)

commands(
    ("vc2", 3),
    baca.literal(
        [
            r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
            r'\once \override TupletNumber.text = #"10:8"',
        ]
    ),
    baca.pitch("F3"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.scp_spanner(
        "P4 ||",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", 4),
    baca.pitch("F3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", (5, 9)),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_)[:1],
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=lambda _: baca.select.runs(_)[1:2],
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
)

# cb1

commands(
    ("cb1", (1, 2)),
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
    ("cb1", 3),
    baca.literal(
        [
            r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
            r'\once \override TupletNumber.text = #"11:8"',
        ]
    ),
    baca.pitch("Dtqf3"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak X-offset 3"),
    ),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.scp_spanner(
        "P4 ||",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb1", 4),
    baca.pitch("Dtqf3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb1", (5, 9)),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_)[:1],
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=lambda _: baca.select.runs(_)[1:2],
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
)

# cb2

commands(
    ("cb2", (1, 2)),
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
    ("cb2", 3),
    baca.literal(
        [
            r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
            r'\once \override TupletNumber.text = #"12:8"',
        ]
    ),
    baca.pitch("Eb2"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.scp_spanner(
        "P4 ||",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", 4),
    baca.pitch("Dtqf3"),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb2", (5, 9)),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_)[:1],
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o<| fff-scratch",
        map=lambda _: baca.select.runs(_)[1:2],
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
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
