import abjad
import baca

from harmony import library

#########################################################################################
######################################### 07 [G] ########################################
#########################################################################################

stage_markup = (
    ("[G.1]", 1),
    ("[>H.1]", 2, "#darkgreen"),
    ("[G.2-3]", 4),
    ("[<F.3]", 6, "#darkgreen"),
    ("[>I.1]", 7, "#darkgreen"),
    ("[G.4]", 8),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (3, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (4, 4),
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
    (1 - 1, "57 3/5"),
    (1 - 1, "6:5(4)=4"),
    (2 - 1, "96"),
    (2 - 1, "5:3(4)=4"),
    (4 - 1, "57 3/5"),
    (4 - 1, "3:5(4)=4"),
    (6 - 1, "48"),
    (6 - 1, "5:6(4)=4"),
    (7 - 1, "144"),
    (7 - 1, "3:2(8)=4"),
    (8 - 1, "57 3/5"),
    (8 - 1, "4:5(2)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in ((3 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-six",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    [2, 2, "-"],
    written_quarters=True,
    invisible_pairs=True,
    function=commands.get(1),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3))
voice.extend(music)

music = library.make_sixteenths(
    [1, 1, -28, 1, 1],
    written_eighths=True,
    invisible_pairs=True,
    function=commands.get(4, 5),
)
voice.extend(music)

music = library.make_sixteenths(
    ["-", -2, 4, -2, 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(6),
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(7, 8), (5, 8)])
    return result


music = library.make_sixteenths(
    [-4, 8, "-", 2, 2],
    preprocessor=preprocessor,
    extra_counts=[0, -2],
    denominator=None,
    written_quarters=[-2, -1],
    invisible=[-1],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_sixteenths(
    [1, 1, "-"],
    written_eighths=True,
    invisible_pairs=True,
    function=commands.get(8),
)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    [-15, 1],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [1, -11],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [1, -16, 1, "-"],
    function=commands.get(4, 5),
)
voice.extend(music)

music = library.make_sixteenths(
    [-19, 1],
    function=commands.get(6),
)
voice.extend(music)

music = library.make_sixteenths(
    [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_sixteenths(
    [1, "-"],
    function=commands.get(8),
)
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_sixteenths(
    [-4, "+"],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = baca.make_notes(commands.get(4, 5))
voice.extend(music)

music = library.make_sixteenths(
    [16, "-", 1],
    function=commands.get(6),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    ["+"],
    function=commands.get(8),
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    [2, 2, "-"],
    written_quarters=True,
    invisible_pairs=True,
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [6, 6],
    do_not_rewrite_meter=True,
    fuse=True,
    written_dotted_halves=[0],
    invisible=[1],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    [2, -28, 2],
    function=commands.get(4, 5),
)
voice.extend(music)

music = library.make_sixteenths(
    [-2, 4, "-", 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(6),
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (2, 4), (1, 8), (5, 8)])
    return result


music = library.make_sixteenths(
    [-4, -4, 8, -2, -4, 2, 2],
    preprocessor=preprocessor,
    extra_counts=[0, 4, 0, -2],
    denominator=None,
    written_quarters=[-2, -1],
    invisible=[-1],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_sixteenths(
    [1, 1, "-"],
    written_eighths=[0, 1],
    invisible=[1],
    do_not_rewrite_meter=True,
    function=commands.get(8),
)
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_appoggiato_rhythm(
    counts=[5, 0, 0, 0, 0],
    divisions=[4, 12],
    extra_counts=[0, 8],
    prefix_counts=[0, 3],
    prefix_talea=[8, 4, 4],
    tie=[6],
    voice_name=voice.name,
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, "+"],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3), head=voice.name)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    counts=[4],
    fuse=True,
    voice_name=voice.name,
    function=commands.get(4),
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    [6, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[0, -2],
    denominator=None,
    tie=[0],
    function=commands.get(5),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, 12, -4],
    function=commands.get(6),
)
voice.extend(music)

music = library.make_sixteenths(
    [-4, "+"],
    function=commands.get(7, 8),
)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    counts=[15, 1],
    fuse=True,
    do_not_rewrite_meter=True,
    written_wholes=[0],
    invisible_pairs=True,
    tie=[0],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [12],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_appoggiato_rhythm(
    divisions=[4, 4, 4, 4, 4, 4, 4, 4],
    counts=[4, 0, 0, 0, 0, 0, 0, 0],
    voice_name=voice.name,
    function=commands.get(4, 5),
)
voice.extend(music)

music = library.make_sixteenths(
    [-1, 2, "-"],
    function=commands.get(6),
)
voice.extend(music)

music = library.make_sixteenths(
    [-4, 8, "-"],
    function=commands.get(7),
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    [8, 4, 4, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[0, 8],
    denominator=None,
    function=commands.get(8),
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    [-4, "+"],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [12],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    ["+"],
    function=commands.get(4, 5),
)
voice.extend(music)

music = library.make_sixteenths(
    [-1, 2, "-"],
    function=commands.get(6),
)
voice.extend(music)

music = library.make_sixteenths(
    [-4, 8, "-"],
    function=commands.get(7),
)
voice.extend(music)

music = baca.make_repeat_tied_notes(commands.get(8))
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    [4, 4, 4, 4],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [12],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_appoggiato_rhythm(
    counts=[4],
    fuse=True,
    voice_name=voice.name,
    function=commands.get(4, 5),
)
voice.extend(music)

music = baca.make_repeated_duration_notes(
    commands.get(6),
    [(1, 4)],
)
voice.extend(music)

music = library.make_sixteenths(
    [-4, 8, "-"],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 4, 4],
    function=commands.get(8),
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    [-4, "+"],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    ["+"],
    function=commands.get(4, 5),
)
voice.extend(music)

music = baca.make_repeated_duration_notes(
    commands.get(6),
    [(1, 4)],
)
voice.extend(music)

music = library.make_sixteenths(
    [-4, 8, "-"],
    function=commands.get(7),
)
voice.extend(music)

music = baca.make_repeat_tied_notes(commands.get(8))
voice.extend(music)

# anchor notes

commands(
    ["perc2", "va", "vc1", "vc2", "cb2"],
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
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        map=lambda _: baca.select.clparts(_, [3]),
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
)

commands(
    ("bfl", (4, 5)),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.hairpin(
        "o<| mf |>o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
    ),
    baca.dynamic_text_x_offset(
        -2,
        lambda _: baca.select.pleaf(_, 3),
    ),
)

commands(
    ("bfl", 6),
    baca.pitch("Ab3"),
    baca.dynamic("mf"),
)


commands(
    ("bfl", 7),
    baca.tuplet_bracket_up(),
    baca.pitch(
        "G3",
        lambda _: baca.select.runs(_)[:1],
    ),
    baca.pitch(
        "Bb5",
        lambda _: baca.select.runs(_)[1:],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_)[-2:],
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[-2:],
    ),
)

commands(
    ("bfl", (6, 7)),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
)

commands(
    ("bfl", 8),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("bfl", (7, 8)),
    baca.tuplet_bracket_staff_padding(6.5),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 11.5"),
        selector=lambda _: baca.select.leaves(_)[4:9],
    ),
)

commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(3),
    baca.staff_position(2),
    baca.dynamic("mp"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 5)),
    baca.staff_lines(3),
    baca.staff_position(2),
    baca.hairpin(
        "f mp",
        selector=lambda _: baca.select.pleaves(_),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("perc1", 6),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 7),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("perc1", (6, 7)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 8),
    baca.staff_lines(3),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

# perc2

commands(
    ("perc2", (1, 2)),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 5)),
    baca.stem_tremolo(),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("perc2", 6),
    baca.stem_tremolo(),
    baca.new(
        library.brake_drum_staff_position(),
        baca.damp(),
        baca.dynamic("mf"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    ("perc2", (4, 6)),
    baca.new(
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        selector=lambda _: abjad.select.run(_, 0),
    ),
)

commands(
    ("perc2", 8),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (1, 8)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.whisk_staff_position(),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        left_broken=True,
    #        map=lambda _: baca.select.clparts(_, [3]),
    #        pieces=lambda _: baca.select.clparts(_, [1]),
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        left_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
    ),
)

commands(
    ("hp", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("<B5 C6 D6>"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak padding 2.5"),
    ),
)

commands(
    ("hp", (4, 5)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.whisk_staff_position(),
    baca.dynamic('"f"'),
    baca.dynamic(
        "mf",
        selector=lambda _: baca.select.phead(_, -1),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("hp", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitches("F#4 G#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.text_spanner(
        r"\baca-fingernail-markup =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        selector=lambda _: baca.select.rleaves(_),
    ),
)


commands(
    ("hp", 7),
    baca.new(
        baca.pitch("<B5 C#6>"),
        baca.double_flageolet(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        ),
        baca.dls_staff_padding(4 + 2),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.whisk_staff_position(),
        baca.markup(r"\baca-whisk-markup"),
        selector=lambda _: baca.select.pleaf(_, -2),
    ),
    #    baca.hairpin(
    #        'o< "f" >o',
    #        forbid_al_niente_to_bar_line=True,
    #        pieces=lambda _: baca.select.lparts(_, [1, 1]),
    #        selector=lambda _: baca.select.leaves(_)[-2:],
    #    ),
    baca.new(
        baca.dynamic('"f"'),
        baca.dls_staff_padding(6 + 2),
        selector=lambda _: baca.select.pleaf(_, -2),
    ),
)

commands(
    ("hp", 8),
    library.whisk_staff_position(),
    #    baca.hairpin(
    #        'o< "f" >o niente',
    #        pieces=lambda _: baca.select.lparts(_, [1, 2]),
    #        selector=lambda _: baca.select.leaves(_)[:3],
    #    ),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6 + 2),
)

commands(
    ("hp", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[5:10],
    ),
)

# va

commands(
    ("va", 1),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)

commands(
    ("va", (1, 2)),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        library.appoggiato_pitches_b_flat(),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_, grace=False)[1:],
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[7:12],
    ),
)

commands(
    ("va", 4),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)


commands(
    ("va", 6),
    baca.hairpin(
        "pp >o niente",
        selector=lambda _: baca.select.leaves(_)[1:3],
    ),
)

commands(
    ("va", (4, 6)),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_, grace=False)[1:],
    ),
)

commands(
    ("va", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[2:6],
    ),
)

commands(
    ("va", (7, 8)),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", (1, 8)),
    baca.dls_staff_padding(
        4,
        lambda _: baca.select.leaves(_, grace=False),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.pitch("E4"),
    baca.hairpin(
        "f >o niente",
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding -1.5"),
        abjad.Tweak(r"- \tweak staff-padding 3.5"),
        autodetect_right_padding=False,
        left_broken=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc1", 2),
    baca.pitch("<C5 Db5 Eb5>"),
    baca.dynamic("p"),
)

commands(
    ("vc1", (4, 5)),
    baca.pitch(
        "Bb3",
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 1),
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 9"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_, grace=False)[1:],
    ),
)

commands(
    ("vc1", 6),
    baca.pitch("E4"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc1", 7),
    baca.pitch("B4"),
)


commands(
    ("vc1", 8),
    baca.pitch("Bb4"),
    baca.espressivo(
        lambda _: baca.select.pheads(_)[-4:],
    ),
    baca.dynamic("pp"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-4:]),
    ),
)

commands(
    ("vc1", (1, 8)),
    baca.dls_staff_padding(4),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 4"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
    ),
)

commands(
    ("vc2", 2),
    baca.clef("treble"),
    baca.pitch("<B4 C5 D5>"),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("vc2", (4, 5)),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", 6),
    baca.clef("treble"),
    baca.pitch("Eqf4"),
    baca.dynamic("f"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc2", 7),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc2", 8),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        right_broken=True,
    ),
)

commands(
    ("vc2", (1, 8)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    baca.flat_glissando(
        "E1",
        left_broken=True,
    ),
    baca.hairpin(
        "ff >o",
        bookend=False,
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        left_broken=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("treble"),
    baca.pitch(
        "<C5 Db5 Eb5>",
        do_not_transpose=True,
    ),
    baca.dynamic("p"),
)

commands(
    ("cb1", (4, 5)),
    baca.pitch(
        "Bb3",
        do_not_transpose=True,
        selector=lambda _: baca.select.plts(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 2),
        do_not_transpose=True,
        selector=lambda _: baca.select.plts(_, grace=True),
    ),
    baca.dynamic(
        "mp-pp",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-b-flat-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            lambda _: baca.select.pleaves(_, grace=True),
        ),
        map=lambda _: abjad.select.runs(_, grace=True),
    ),
)

commands(
    ("cb1", 6),
    baca.clef("bass"),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "mf > p",
    ),
    baca.scp_spanner(
        "P1 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb1", 7),
    baca.note_head_style_harmonic(),
    baca.pitch("E3"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 8),
    baca.clef("treble"),
    baca.pitch(
        "Bb4",
        do_not_transpose=True,
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
)

commands(
    ("cb1", (1, 8)),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 2)),
    baca.pitch("Bb2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", (4, 5)),
    baca.pitch("Bb2"),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", 6),
    baca.flat_glissando("E1"),
    baca.hairpin(
        "p < f",
    ),
    baca.scp_spanner(
        "T1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.lparts(_, [2, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 7),
    baca.pitch("A1"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 8),
    baca.pitch("Bb2"),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        right_broken=True,
    ),
)

commands(
    ("cb2", (1, 8)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1"], 2),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 7),
    baca.stop_on_string(
        lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
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
