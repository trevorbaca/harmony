import abjad
import baca

from harmony import library

#########################################################################################
######################################### 12 [L] ########################################
#########################################################################################

stage_markup = (
    ("[L.1]", 1),
    ("[>M.1]", 2, "#darkgreen"),
    ("[L.2-3]", 3),
    ("[<J.6]", 10, "#darkgreen"),
    ("[L.4-5]", 11),
    ("[L.6-8]", 13),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
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
    (1 - 1, "96"),
    (1 - 1, "3:2(4)=4"),
    (2 - 1, "144"),
    (2 - 1, "3:2(4)=4"),
    (3 - 1, "96"),
    (3 - 1, "4.=4"),
    (10 - 1, "48"),
    (10 - 1, "2=4"),
    (11 - 1, "96"),
    (11 - 1, "8=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

baca.open_volta(skips[11 - 1], commands.first_measure_number)
baca.double_volta(skips[13 - 1], commands.first_measure_number)
baca.close_volta(skips[15 - 1], commands.first_measure_number)

rests = score["Rests"]
for index, string in ((9 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[9 - 1],
    r"\harmony-text-eleven",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [6, 6],
    fuse=True,
    do_not_rewrite_meter=True,
    written_dotted_quarters=([0], 1),
    invisible_pairs=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [2, 2, 4, "-"],
    written_quarters=True,
    invisible_pairs=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [6, 6],
    fuse=True,
    do_not_rewrite_meter=True,
    written_dotted_quarters=([0], 1),
    invisible_pairs=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5),
    [6, 6],
    fuse=True,
    do_not_rewrite_meter=True,
    written_dotted_quarters=([0], 1),
    invisible_pairs=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    [6, 6],
    fuse=True,
    do_not_rewrite_meter=True,
    written_dotted_quarters=([0], 1),
    invisible_pairs=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(8, 9), head=voice.name)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(10),
    counts=[9],
    incise=True,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [4, 8, 4, 12],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 14),
    [6, 6, 6, 6, 6, 10],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(15),
    [6, 8, 2, 2],
    extra_counts=[0, 0, 0, 2],
    denominator=None,
    written_quarters=[-2, -1],
    invisible=[-1],
)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(2),
    divisions=[6, 14],
    counts=[5, 4],
    rest_after=True,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(4),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(6),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(8),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9, 10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [2, -2],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13),
    [3, 1, "-"],
    written_quarters=True,
    invisible_pairs=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(14))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(15),
    [3, 1, "-"],
    written_quarters=True,
    invisible_pairs=True,
)
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(2),
    divisions=[6, 14],
    counts=[4, 5],
    rest_after=True,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(4),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(6),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(8),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9))
voice.extend(music)

music = baca.make_notes(commands.get(10, 12))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [6, -6, 6, -6, 6, -10],
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-4, 4, "+"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(4),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(6),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    ["+"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(8),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9, 10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [2, -2],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [6, -6, 6, -6, 6, -10],
)
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(2, 4),
    divisions=[4, 48],
    counts=[7],
    rest_to=1,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_rimbalzandi_rhythm(
    commands.get(5, 8),
    rest_except=[1, 3, 6, 8, 11, 13, 14, 15],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [8, 3, 6],
)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(2),
    divisions=[4, 12, 4],
    counts=[6],
    rest_to=1,
    rest_from=1,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_rimbalzandi_rhythm(
    commands.get(3, 8),
    extra_counts=[1],
    rest_except=[6, 7, 11, 14, 15, 19, 21, 22, 24, 25, 26],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [14, 8, 8],
    extra_counts=[2],
    denominator=None,
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-8, 12],
)
voice.extend(music)

music = library.make_rimbalzandi_rhythm(
    commands.get(3, 8),
    extra_counts=[2],
    rest_except=[0, 6, 10, 11, 14, 16, 19, 21, 22, 23, 25, 27, 28, 29],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [8, 8, 14],
    extra_counts=[2],
    denominator=None,
)
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(2),
    divisions=[4, 12, 4],
    counts=[6],
    rest_to=1,
    rest_from=1,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_rimbalzandi_rhythm(
    commands.get(3, 8),
    rest_except=[1, 6, 9, 11, 14, 16, 19, 21, 22, 24, 25, 26, 28, 30, 31, 32],
    extra_counts=[3],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [12, 7, 8],
    extra_counts=[1],
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["+"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-8, 12],
)
voice.extend(music)

music = library.make_rimbalzandi_rhythm(
    commands.get(3, 8),
    rest_except=[1, 9, 16, 22, 27, 29, 31, 33, 34, 35],
    extra_counts=[4],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9), head=voice.name)
voice.extend(music)

music = baca.make_notes(commands.get(10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11, 12),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(13, 15),
    [8, 7, 12],
    extra_counts=[1],
)
voice.extend(music)

# anchor notes

commands(
    ["bfl", "va", "vc1", "vc2", "cb1", "cb2"],
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
    ("bfl", [1, 3, 5, 7]),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mf >o niente",
        match=[0],
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o< mp >o niente",
        match=[1],
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o< p >o niente",
        match=[2],
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o< pp >o niente",
        match=[3],
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        ),
        match=[0],
    ),
)

commands(
    ("bfl", 2),
    # TOOD: promote into music = library.make_sixteenths():
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
)

commands(
    ("bfl", 10),
    baca.pitches(
        "A3",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pleaf(_, 0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher-markup =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
        abjad.Tweak(r"- \tweak direction #down"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        autodetect_right_padding=False,
        bookend=False,
        direction=abjad.DOWN,
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("bfl", (11, 12)),
    baca.breathe(
        lambda _: abjad.select.get(baca.select.pleaves(_), [1, 3]),
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


def selector(argument):
    result = baca.cmgroups(argument, [1])
    return [baca.pleaf(_, -1) for _ in result]


commands(
    ("bfl", (13, 14)),
    baca.breathe(
        selector,
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        map=lambda _: baca.select.clparts(_, [4]),
        pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 15),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_)[-2:],
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        lambda _: baca.select.pleaf(_, -1),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=True,
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [2, 4]),
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-2:]),
    ),
)

commands(
    ("bfl", (11, 15)),
    baca.pitch(
        "Dtqf5",
        lambda _: baca.select.leaves(_)[:-2],
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
    baca.pitch(
        "B4",
        lambda _: baca.select.leaves(_)[-2:],
    ),
    baca.hairpin(
        'o< "f" >o niente o< p >o niente'
        ' o< "f" >o niente o< p >o niente'
        ' o< "f" >o niente o< f >o niente',
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", (1, 15)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc1", 2),
    baca.clef("percussion"),
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
    ("perc1", [(3, 4), (5, 6), (7, 8)]),
    baca.new(
        baca.dynamic("mp"),
        match=[0],
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.new(
        baca.dynamic("p"),
        match=[1],
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.new(
        baca.dynamic("pp"),
        match=[2],
        selector=lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("perc1", (3, 8)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc1", 10),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("perc1", (11, 12)),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", [13, 15]),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        match=[0],
    ),
)

commands(
    ("perc1", (10, 15)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 2),
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
    ("perc2", (3, 8)),
    baca.staff_lines(1),
    baca.tuplet_bracket_up(),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (10, 12)),
    library.bass_drum_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pheads(_), [0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (13, 15)),
    library.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (3, 15)),
    baca.dls_staff_padding(6),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 2),
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
    baca.pitch("Eb4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (2, 4)),
    baca.clef("bass"),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< mf >o",
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [1, 4]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (5, 8)),
    baca.clef("treble"),
    baca.pitch("Eb4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.new(
        baca.dynamic("p"),
        measures=5,
    ),
    baca.new(
        baca.dynamic("p"),
        measures=6,
    ),
    baca.new(
        baca.dynamic("pp"),
        measures=7,
    ),
    baca.new(
        baca.dynamic("pp"),
        measures=8,
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (11, 12)),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", (1, 12)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (13, 15)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.whisk_staff_position(),
    baca.dynamic('"f"'),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# va

commands(
    ("va", 1),
    baca.pitch("A5"),
    baca.dls_staff_padding(4),
)

commands(
    ("va", (2, 4)),
    baca.clef("alto"),
    baca.note_head_style_harmonic_black(
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitch(
        "Db3",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.note_head_style_harmonic_black(
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.pitches(
        library.appoggiato_pitches_d_flat_3(),
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("va", (5, 8)),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("va", 10),
    baca.pitch("D3"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("va", [(5, 8), (11, 15)]),
    baca.pitch("Bb3"),
)

commands(
    ("va", (5, 15)),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", 1),
    baca.pitch("Gqs6"),
)

commands(
    ("vc1", 2),
    baca.clef("bass"),
    baca.note_head_style_harmonic_black(
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitch(
        "C3",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.note_head_style_harmonic_black(
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.pitches(
        library.appoggiato_pitches_c_3(),
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", (3, 8)),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dls_staff_padding(4 + 2),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc1", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("vc1", (10, 15)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc1", [(3, 8), (11, 15)]),
    baca.pitch("Aqf3"),
    baca.markup(
        r"\baca-eleven-e-flat",
        abjad.Tweak(r"- \tweak extra-offset #'(-2 . 0)"),
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        match=[0],
    ),
    baca.markup(
        r"\baca-eleven-e-flat",
        abjad.Tweak(r"- \tweak X-offset 3"),
        abjad.Tweak(r"- \tweak padding 1"),
        match=[1],
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.pitch("F#5"),
)

commands(
    ("vc2", 2),
    baca.pitch("C3"),
    baca.clef("bass"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("vc2", (3, 8)),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("vc2", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T1 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("vc2", [(3, 8), (11, 15)]),
    baca.pitch("F3"),
)

commands(
    ("vc2", (10, 15)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", 1),
    baca.pitch(
        "C#6",
        do_not_transpose=True,
    ),
)

commands(
    ("cb1", 2),
    baca.clef("bass"),
    baca.note_head_style_harmonic_black(
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.pitch(
        "B2",
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.note_head_style_harmonic_black(
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.pitches(
        library.appoggiato_pitches_b_2(),
        lambda _: baca.select.leaves(_, grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
    ),
)

commands(
    ("cb1", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", (3, 8)),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("cb1", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb1", (10, 15)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb1", [(3, 8), (11, 15)]),
    baca.pitch("Dtqf3"),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak extra-offset #'(-2 . 0)"),
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        match=[0],
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak X-offset 3"),
        abjad.Tweak(r"- \tweak padding 1"),
        match=[1],
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.pitch(
        "Cqf6",
        do_not_transpose=True,
    ),
)

commands(
    ("cb2", 2),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("cb2", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb2", (3, 8)),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dls_staff_padding(6),
)

commands(
    ("cb2", 10),
    baca.pitch("D2"),
    baca.hairpin(
        "p >o",
    ),
    baca.scp_spanner(
        "T4 =|",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("cb2", (10, 15)),
    baca.dls_staff_padding(4),
)

commands(
    ("cb2", [(3, 8), (11, 15)]),
    baca.pitch("Eb2"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.note_head_style_harmonic(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (3, 8)),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 12)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T4 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        match=[0, 1, 2],
    ),
    baca.scp_spanner(
        "(T4) -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        match=[3, 4],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (13, 15)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "sffp",
        selector=lambda _: baca.select.pheads(_)[1:-1],
    ),
    baca.hairpin(
        "sffp >o niente",
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.plts(_)[-1:]),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], (13, 15)),
    baca.tuplet_bracket_up(),
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
        fermata_measure_empty_overrides=[9],
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
