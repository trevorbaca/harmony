import abjad
import baca

from harmony import library

#########################################################################################
######################################### 26 [Z] ########################################
#########################################################################################

stage_markup = (
    ("[Z.1-2]", 1),
    ("[>CC.1]", 4, "#darkgreen"),
    ("[Z.3-5]", 5),
    ("[<X.8]", 8, "#darkgreen"),
    ("[<Y.2]", 9, "#darkgreen"),
    ("[Z.6]", 10),
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
        (1, 4),
        (6, 4),
        (4, 4),
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
    (1 - 1, "96"),
    (1 - 1, "5:3(4)=4"),
    (4 - 1, "72"),
    (4 - 1, "3:4(4)=4"),
    (5 - 1, "96"),
    (5 - 1, "4:3(4)=4"),
    (8 - 1, "48"),
    (8 - 1, "2=4"),
    (9 - 1, "57 3/5"),
    (9 - 1, "6:5(4)=4"),
    (10 - 1, "96"),
    (10 - 1, "5:3(4)=4"),
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
    r"\harmony-text-twenty-four",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 16],
    written_halves=[0, 1],
    invisible_pairs=True,
    tie=[1, 2],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(5, 7),
)
voice.extend(music)

music = library.make_sixteenths(
    [-2, 2, 2],
    function=commands.get(8),
)
voice.extend(music)

music = library.make_warble_rhythm(
    sixteenths=[12, 12, 1, 11, 12],
    extra_counts=[4, 0, 0, 2, 0],
    rest_tuplets_cyclic=([1, 2, 4], 5),
    function=commands.get(9),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(10),
)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3, 4))
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(5, 6),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, "-", 6, -2],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_sixteenths(
    [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    function=commands.get(8),
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    [1, -11, 4, -12, 4],
    preprocessor=preprocessor,
    extra_counts=[0, 8],
    denominator=None,
    function=commands.get(9),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(10),
)
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = baca.make_mmrests_function(commands.get(1))
voice.extend(music)

music = library.make_sixteenths(
    [-8, 1, -3],
    fuse=True,
    extra_counts=[-4],
    denominator=None,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3, 6))
voice.extend(music)

music = library.make_sixteenths(
    [-8, "+"],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_tuplet(
    [(1,)],
    force_augmentation=True,
    function=commands.get(8),
)
voice.extend(music)

music = library.make_sixteenths(
    [2, -22, -1, 2, -21],
    function=commands.get(9),
)
voice.extend(music)

music = library.make_sixteenths(
    ["-", 2],
    extra_counts=[2],
    denominator=None,
    function=commands.get(10),
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    [-12, -2, 4, -6, -12, -2, 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3, 4))
voice.extend(music)

music = library.make_sixteenths(
    [-12, -2, 4, -6, -12, -2, 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(5, 6),
)
voice.extend(music)

music = library.make_sixteenths(
    ["-", 6, -2],
    function=commands.get(7),
)
voice.extend(music)

music = library.make_sixteenths(
    [1, -3, 3, -3, 3, -3],
    function=commands.get(8),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(9))
voice.extend(music)

music = library.make_sixteenths(
    [-2, 4, "-"],
    extra_counts=[2],
    denominator=None,
    function=commands.get(10),
)
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = baca.make_mmrests_function(commands.get(1, 3))
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 16],
    written_halves=[0, 1, 3, 4],
    invisible=[1, 4],
    tie_all=True,
    function=commands.get(4),
)
voice.extend(music)

music = baca.make_repeat_tied_notes_function(commands.get(5, 7))
voice.extend(music)

music = library.make_sixteenths(
    [6, 3, 11],
    function=commands.get(8),
)
voice.extend(music)

music = library.make_tessera_4(4, function=commands.get(9))
voice.extend(music)

music = baca.make_mmrests_function(commands.get(10))
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 16],
    written_halves=[0, 1, 3, 4],
    invisible=[1, 4],
    tie_all=True,
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(5, 7),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, 2, 7, 7],
    function=commands.get(8),
)
voice.extend(music)

music = library.make_tessera_4(3, function=commands.get(9))
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(10),
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 16],
    written_halves=[0, 1, 3, 4],
    invisible=[1, 4],
    tie_all=True,
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(5, 7),
)
voice.extend(music)

music = library.make_sixteenths(
    [9, 11],
    function=commands.get(8),
)
voice.extend(music)

music = library.make_tessera_4(2, function=commands.get(9))
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(10),
)
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 16],
    written_halves=[0, 1, 3, 4],
    invisible=[1, 4],
    tie_all=True,
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(5, 7),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, 9, 7],
    function=commands.get(8),
)
voice.extend(music)

music = library.make_tessera_4(1, function=commands.get(9))
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(10),
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(1, 2),
)
voice.extend(music)

music = baca.make_mmrests_function(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [4, 4, 16],
    written_halves=[0, 1, 3, 4],
    invisible=[1, 4],
    tie_all=True,
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(5, 7),
)
voice.extend(music)

music = library.make_sixteenths(
    [9, 11],
    function=commands.get(8),
)
voice.extend(music)

music = library.make_tessera_4(0, function=commands.get(9))
voice.extend(music)

music = library.make_sixteenths(
    [4, -12],
    function=commands.get(10),
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
    ("bfl", [(1, 2), (5, 7), 10]),
    baca.pitch("C3"),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        argument=r"\baca-cov-markup =|",
        map=lambda _: baca.select.runs(_),
    ),
)


commands(
    ("bfl", 4),
    baca.pitch("Bb4"),
    baca.hairpin(
        "pp < p >o",
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [1, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
    baca.text_spanner(
        "(T) -> A -> (T)",
        abjad.Tweak(r"- \tweak staff-padding 8"),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
    ),
)

commands(
    ("bfl", 8),
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
    ("bfl", 9),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -9),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (4, 5)
        ),
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
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
    baca.dynamic('"ff"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (5, 6)),
    library.slate_staff_position(),
    baca.dynamic(
        '"ff"-ancora',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("perc1", 7),
    library.slate_staff_position(),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("perc1", 8),
    library.slate_staff_position(),
)

commands(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.leaves(_)[2:],
    ),
)


commands(
    ("perc1", 9),
    baca.new(
        library.brake_drum_staff_position(),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.new(
        library.slate_staff_position(),
        selector=lambda _: baca.select.pleaves(_)[1:],
    ),
    baca.dynamic(
        '"ff"',
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.pleaf(_, 1),
    ),
)

commands(
    ("perc1", 10),
    library.slate_staff_position(),
)

commands(
    ("perc1", (9, 10)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[3:],
    ),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 2),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic(
        "mp",
        selector=lambda _: baca.select.pheads(_),
    ),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (7, 8)),
    library.tam_tam_staff_position(),
    baca.flat_glissando(),
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
    ("perc2", 9),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (1, 9)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 10),
    baca.staff_lines(
        3,
        lambda _: abjad.select.leaf(_, -2),
    ),
    library.purpleheart_staff_positions([2]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 1"),
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:]),
    ),
)

# hp

commands(
    ("hp", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        selector=lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("hp", (5, 6)),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f-ancora"),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        selector=lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("hp", (1, 6)),
    baca.dls_staff_padding(4 + 2),
)

commands(
    ("hp", 7),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("hp", (7, 8)),
    library.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[1:],
    ),
)

commands(
    ("hp", 9),
    baca.clef("treble"),
    baca.staff_lines(5),
)

commands(
    ("hp", 10),
    baca.pitch("<C#5 D5>"),
    baca.double_flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
        selector=lambda _: baca.select.pheads(_),
    ),
)

# va

commands(
    ("va", (4, 7)),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        alteration="Cb5",
    ),
)

commands(
    ("va", 8),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 9),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

# vc1

commands(
    ("vc1", 8),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc1", 9),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=lambda _: baca.select.plts(_),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("vc1", [(1, 2), (5, 7), 10]),
    baca.pitch("D2"),
)

# vc2

commands(
    ("vc2", 8),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc2", 9),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2]),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.pitch(
        "C5",
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("vc2", [(1, 2), (5, 7), 10]),
    baca.pitch("C#2"),
)

# cb1

commands(
    ("cb1", 8),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb1", 9),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [2, 3, 2]),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("cb1", [(1, 2), (5, 7), 10]),
    baca.pitch("D2"),
)

# cb2

commands(
    ("cb2", 8),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.plts(_),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 9),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=lambda _: baca.select.lparts(_, [2, 1, 1]),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        do_not_transpose=True,
    ),
    baca.pitch(
        "C5",
        lambda _: baca.select.pleaves(_)[1:-1],
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("cb2", [(1, 2), (5, 7), 10]),
    baca.pitch("C#2"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.hairpin(
        "pp < p > pp",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
    ),
    baca.new(
        baca.clef("treble"),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
        ),
        match=[1, 2, 3, 4],
    ),
    baca.new(
        baca.pitch("Bb4"),
        match=[1, 2],
    ),
    baca.new(
        baca.pitch(
            "Bb4",
            do_not_transpose=True,
        ),
        match=[3, 4],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.hairpin(
        "o< f",
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 9),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], [(1, 2), (5, 7), 10]),
    baca.clef("bass"),
    baca.hairpin(
        "o<| ff",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.stop_on_string(
        lambda _: abjad.select.leaf(_, 0),
        map=lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
    ),
    baca.scp_spanner(
        "P1 =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
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
