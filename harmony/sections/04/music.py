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

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
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
    (1 - 1, "72"),
    (1 - 1, "5:4(4)=4"),
    (9 - 1, "144"),
    (9 - 1, "8=4"),
    (11 - 1, "72"),
    (11 - 1, "2=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (7 - 1, "fermata"),
    (10 - 1, "short"),
):
    baca.global_fermata(rests[index], string)

# BFL

voice = score["BassFlute.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    6,
    gap=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_tessera_1(
    commands.get(8),
    6,
    advance=72,
    gap=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [2, 2, 16],
    invisible=([1], 3),
    written_quarters=([0, 1], 3),
    tie=([2], 3),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

music = library.make_tessera_1(
    commands.get(11),
    6,
    advance=72 + 12,
    gap=True,
)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_phjc_rhythm(
    commands.get(1, 6),
    [1, 2, 1],
    [2, 2, 2, 2, 2, 2, 2, 1],
    extra_counts=[2],
    rest_except=[0, 1, 2, -4, -3, -2],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7, 8))
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(9),
    counts=[7],
    rest_after=True,
    voice_name=voice.name,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10, 11))
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_phjc_rhythm(
    commands.get(1),
    [1, 2],
    [2, 2, 2, 2, 2, 2, 2, 1],
    extra_counts=[0, 6],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 4))
voice.extend(music)

music = library.make_train_rhythm(
    commands.get(5, 6),
    [2],
    rest_leaves=[0],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_train_rhythm(
    commands.get(8),
    [2],
    rest_leaves=[0, 1, 2],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [4, 4, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [-6, 6],
    fuse=True,
    do_not_rewrite_meter=True,
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    5,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_tessera_1(
    commands.get(8),
    5,
    advance=72,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [2, 2, 16],
    invisible=([1], 3),
    written_quarters=([0, 1], 3),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10))
voice.extend(music)

music = library.make_tessera_1(
    commands.get(11),
    5,
    advance=72 + 12,
)
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    4,
    gap=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_tessera_1(
    commands.get(8),
    4,
    advance=72,
    gap=True,
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(9),
    counts=[7],
    voice_name=voice.name,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(11),
    4,
    advance=72 + 12,
    gap=True,
)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    3,
    gap=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(8),
    3,
    advance=72,
    gap=True,
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(9),
    counts=[7],
    voice_name=voice.name,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(11),
    3,
    advance=72 + 12,
    gap=True,
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    2,
    gap=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(8),
    2,
    advance=72,
    gap=True,
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(9),
    counts=[7],
    voice_name=voice.name,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(11),
    2,
    advance=72 + 12,
    gap=True,
)
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    1,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(8),
    1,
    advance=72,
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(9),
    counts=[7],
    voice_name=voice.name,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(10), head=voice.name)
voice.extend(music)

music = library.make_tessera_1(
    commands.get(11),
    1,
    advance=72 + 12,
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_tessera_1(
    commands.get(1, 6),
    0,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(8))
voice.extend(music)

music = library.make_tuplet(
    commands.get(9),
    [(1,)],
    force_augmentation=True,
)
pleaf = baca.select.pleaf(music, 0)
baca.repeat_tie_function(pleaf)
voice.extend(music)

music = baca.make_mmrests(commands.get(10), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(11))
voice.extend(music)

# anchor notes

commands(
    ["perc2", "vc1", "vc2", "cb1", "cb2"],
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
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[7, 10],
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
