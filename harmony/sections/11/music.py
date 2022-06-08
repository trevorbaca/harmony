import abjad
import baca

from harmony import library

#########################################################################################
######################################### 11 [K] ########################################
#########################################################################################

stage_markup = (
    ("[>L.1]", 1, "#darkgreen"),
    ("[K.1]", 2),
    ("[K.2-3]", 4),
    ("[<I.1]", 6, "#darkgreen"),
    ("[>L.4]", 7, "#darkgreen"),
    ("[>L.6]", 8, "#darkgreen"),
    ("[K.4]", 10),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (3, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (6, 4),
        (3, 4),
        (3, 4),
        (1, 4),
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
    (1 - 1, "8=4"),
    (2 - 1, "72"),
    (2 - 1, "3:4(4)=4"),
    (6 - 1, "144"),
    (6 - 1, "8=4"),
    (7 - 1, "96"),
    (7 - 1, "4.=4"),
    (10 - 1, "72"),
    (10 - 1, "3:4(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (3 - 1, "fermata"),
    (9 - 1, "fermata"),
):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-nine",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[9 - 1],
    r"\harmony-text-ten",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    ),
)

commands(
    ("bfl", (2, 4)),
    baca.make_mmrests(head=True),
)

commands(
    ("bfl", 5),
    library.make_sixteenths(
        ["-", 4, -2, 4],
    ),
)

commands(
    ("bfl", 6),
    library.make_sixteenths(
        [-4, 8, "-"],
    ),
)

commands(
    ("bfl", 7),
    library.make_sixteenths(
        [4, 8],
    ),
)

commands(
    ("bfl", 8),
    library.make_sixteenths(
        [6, 6],
    ),
)

commands(
    ("bfl", 9),
    baca.make_mmrests(head=True),
)

commands(
    ("bfl", 10),
    library.make_sixteenths(
        ["-", 4, 4],
        fuse=True,
        do_not_rewrite_meter=True,
        written_quarters=([0], 1),
        invisible_pairs=True,
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_sixteenths(
        ["+"],
    ),
)

commands(
    ("perc1", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("perc1", 3),
    baca.make_mmrests(),
)

commands(
    ("perc1", (4, 5)),
    library.make_sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
)

commands(
    ("perc1", 6),
    library.make_sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
)

commands(
    ("perc1", 7),
    library.make_sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("perc1", 8),
    library.make_sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("perc1", 9),
    baca.make_mmrests(),
)

commands(
    ("perc1", 10),
    library.make_sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_sixteenths(
        ["+"],
    ),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [-2, 10, "-"],
    ),
)

commands(
    ("perc2", 3),
    baca.make_mmrests(),
)

commands(
    ("perc2", (4, 5)),
    library.make_sixteenths(
        [14, -4, 12, -2],
    ),
)

commands(
    ("perc2", 6),
    library.make_sixteenths(
        [-12, -6, 3, -3],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
)

commands(
    ("perc2", 7),
    library.make_sixteenths(
        [2, -2],
    ),
)

commands(
    ("perc2", 8),
    library.make_sixteenths(
        [6, -6],
    ),
)

commands(
    ("perc2", 9),
    baca.make_mmrests(),
)

commands(
    ("perc2", 10),
    library.make_sixteenths(
        [6, -4, 4, -2],
    ),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        ["+"],
    ),
)

commands(
    ("hp", 2),
    library.make_sixteenths(
        [-2, 10, "-"],
    ),
)

commands(
    ("hp", 3),
    baca.make_mmrests(),
)

commands(
    ("hp", (4, 5)),
    library.make_sixteenths(
        [14, -4, 12, -2],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (1, 4), (1, 4), (3, 4)])
    return result


commands(
    ("hp", 6),
    library.make_sixteenths(
        [-4, -2, 4, -4, -6, 3, -3],
        preprocessor=preprocessor,
        extra_counts=[0, 2, 0, 0],
        do_not_rewrite_meter=True,
        denominator=None,
    ),
)

commands(
    ("hp", 7),
    library.make_sixteenths(
        [2, -2],
    ),
)

commands(
    ("hp", 8),
    library.make_sixteenths(
        [3, 1, 1, 1, -6],
        tie_all=True,
        written_quarters=[0],
        written_eighths=[2],
        invisible=[1, 3],
    ),
)

commands(
    ("hp", 9),
    baca.make_mmrests(),
)

commands(
    ("hp", 10),
    library.make_sixteenths(
        [6, -4, 4, -2],
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        ["+"],
        tie=[0],
    ),
)

commands(
    ("va", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("va", 3),
    baca.make_mmrests(),
)

commands(
    ("va", (4, 5)),
    library.make_sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
)

commands(
    ("va", 6),
    library.make_sixteenths(
        [-4, "+"],
    ),
)

commands(
    ("va", 7),
    baca.make_mmrests(head=True),
)

commands(
    ("va", 8),
    library.make_sixteenths(
        [8, 3, 6],
    ),
)

commands(
    ("va", 9),
    baca.make_mmrests(),
)

commands(
    ("va", 10),
    library.make_sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
)

# VC1


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (2, 4)])
    return result


commands(
    ("vc1", 1),
    library.make_sixteenths(
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([0], 1),
        invisible=([1], 2),
    ),
)

commands(
    ("vc1", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests(),
)

commands(
    ("vc1", (4, 5)),
    library.make_sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
)

commands(
    ("vc1", 6),
    library.make_sixteenths(
        [-4, 8, -6, 6],
    ),
)

commands(
    ("vc1", 7),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("vc1", 8),
    library.make_sixteenths(
        [14, 8, 8],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("vc1", 9),
    baca.make_mmrests(),
)

commands(
    ("vc1", 10),
    library.make_sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        ["+"],
        tie=[0],
    ),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests(),
)

commands(
    ("vc2", (4, 5)),
    library.make_sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
)

commands(
    ("vc2", 6),
    library.make_sixteenths(
        [-4, 8, -6, 6],
    ),
)

commands(
    ("vc2", 7),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("vc2", 8),
    library.make_sixteenths(
        [8, 8, 14],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("vc2", 9),
    baca.make_mmrests(),
)

commands(
    ("vc2", 10),
    library.make_sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
)

# CB1


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (2, 4)])
    return result


commands(
    ("cb1", 1),
    library.make_sixteenths(
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([0], 1),
        invisible=([1], 2),
    ),
)

commands(
    ("cb1", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("cb1", 3),
    baca.make_mmrests(),
)

commands(
    ("cb1", (4, 5)),
    library.make_sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
)

commands(
    ("cb1", 6),
    library.make_sixteenths(
        [-4, 8, -6, 6],
    ),
)

commands(
    ("cb1", 7),
    library.make_sixteenths(
        [4],
    ),
)

commands(
    ("cb1", 8),
    library.make_sixteenths(
        [12, 7, 8],
        extra_counts=[1],
    ),
)

commands(
    ("cb1", 9),
    baca.make_mmrests(),
)

commands(
    ("cb1", 10),
    library.make_sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        ["+"],
        tie=[0],
    ),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("cb2", 3),
    baca.make_mmrests(),
)

commands(
    ("cb2", (4, 5)),
    library.make_sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    ),
)

commands(
    ("cb2", 6),
    library.make_sixteenths(
        [-4, 8, -6, 6],
    ),
)

commands(
    ("cb2", 7),
    library.make_sixteenths(
        [4],
    ),
)
commands(
    ("cb2", 8),
    library.make_sixteenths(
        [8, 7, 12],
        extra_counts=[1],
    ),
)

commands(
    ("cb2", 9),
    baca.make_mmrests(),
)

commands(
    ("cb2", 10),
    library.make_sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    ),
)

# anchor notes

commands(
    ["bfl", "perc1", "va", "vc1", "vc2", "cb1", "cb2"],
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
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mf >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        baca.levine_multiphonic(5),
    ),
)

commands(
    ("bfl", 5),
    baca.pitch("Ab3"),
    baca.dynamic("mf"),
)

commands(
    ("bfl", 6),
    baca.pitch("G3"),
)

commands(
    ("bfl", (5, 6)),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        selector=lambda _: baca.select.leaves(_)[1:9],
    ),
)

commands(
    ("bfl", 7),
    baca.breathe(
        lambda _: baca.select.pleaf(_, 1),
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
    ("bfl", 8),
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
    ("bfl", (7, 8)),
    baca.pitch("Dtqf5"),
    baca.hairpin(
        'o< "f" >o niente o< "f" >o niente',
        pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("bfl", 10),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.hairpin(
        "o< mf >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
        ),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
)

commands(
    ("bfl", (1, 10)),
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
    baca.staff_lines(1),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 5)),
    library.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< p > pp",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.hairpin(
        "pp < mp > pp",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.leaves(_)[5:8],
    ),
)

commands(
    ("perc1", 6),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 7),
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
    ("perc1", 8),
    library.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("perc1", 10),
    library.triangle_staff_position(),
    baca.flat_glissando(
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pheads(_),
    ),
    baca.hairpin(
        "o< p > pp pp < p > pp < p >o niente",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (2, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    library.bass_drum_staff_position(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaf(_, -1),
    ),
    baca.hairpin(
        "(p) >o niente",
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("perc2", 2),
    library.tam_tam_staff_position(),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 5)),
    library.tam_tam_staff_position(),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("perc2", 6),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 7),
    library.brake_drum_staff_position(),
)

commands(
    ("perc2", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[2:]),
    ),
)

commands(
    ("perc2", 8),
    library.slate_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 10),
    library.tam_tam_staff_position(),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("perc2", (1, 10)),
    baca.dls_staff_padding(6),
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
    ("hp", 2),
    baca.clef("bass"),
    baca.chunk(
        baca.pitch("C1"),
        baca.ottava_bassa(),
    ),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("f"),
)

commands(
    ("hp", (4, 5)),
    baca.chunk(
        baca.pitch("C1"),
        baca.ottava_bassa(),
    ),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)


commands(
    ("hp", 6),
    baca.clef("treble"),
    baca.new(
        baca.pitch("<B5 C#6>"),
        baca.double_flageolet(),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
    baca.new(
        baca.pitch("E4"),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.snap_pizzicato(),
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("hp", 7),
    baca.pitch("E4"),
    baca.snap_pizzicato(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    ("hp", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[5:]),
    ),
)

commands(
    ("hp", (1, 7)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=lambda _: baca.select.lparts(_, [1, 3]),
        selector=lambda _: abjad.select.run(_, 0),
    ),
    baca.dls_staff_padding(6),
    baca.dynamic_text_x_offset(
        -1.5,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("hp", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.chunk(
        baca.pitch("C1"),
        baca.ottava_bassa(),
    ),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (1, 10)),
    baca.ottava_bracket_staff_padding(8),
)

# va

commands(
    ("va", 1),
    baca.pitch("D3"),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("va", 6),
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
    ("va", 8),
    baca.clef("alto"),
    baca.pitch("Eb3"),
)

commands(
    ("va", [2, (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "A5",
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
)

# vc1


commands(
    ("vc1", 1),
    baca.tuplet_bracket_up(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
    ),
    baca.dynamic_text_x_offset(
        -1.5,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
    ),
)

commands(
    ("vc1", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 12.0"),
        autodetect_right_padding=False,
        # TODO: pitched trill suppresses start of text spanner
        selector=lambda _: baca.rleak(baca.tleaves(_)),
    ),
)

commands(
    ("vc1", 6),
    baca.clef(
        "bass",
        lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("vc1", (6, 8)),
    baca.pitch(
        "B4",
        lambda _: abjad.select.run(_, 0),
    ),
    baca.pitch(
        "Aqf3",
        lambda _: abjad.select.run(_, 1),
    ),
    baca.markup(
        r"\baca-eleven-e-flat",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.run(_, 1)[0],
    ),
)

commands(
    ("vc1", [(1, 2), (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "Gqs6",
        lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-eleven-d",
        abjad.Tweak(r"- \tweak X-offset 2.5"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.pitch("D2"),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("vc2", 6),
    baca.clef(
        "bass",
        lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    ("vc2", [2, (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "F#5",
        lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
)

commands(
    ("vc2", (6, 8)),
    baca.pitch(
        "Dqs4",
        lambda _: abjad.select.run(_, 0),
    ),
    baca.pitch(
        "F3",
        lambda _: abjad.select.run(_, 1),
    ),
)

# cb1


commands(
    ("cb1", 1),
    baca.tuplet_bracket_up(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
    ),
    baca.dynamic_text_x_offset(
        -1.5,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
    ),
)

commands(
    ("cb1", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        autodetect_right_padding=False,
        # TODO: pitched trill suppresses start of text spanner
        # selector=lambda _: baca.select.tleaves(_, rleak=True),
        selector=lambda _: baca.rleak(baca.tleaves(_)),
    ),
)

commands(
    ("cb1", [(1, 2), (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "C#6",
        lambda _: baca.select.rleaves(_),
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-fifteen-d",
        abjad.Tweak(r"- \tweak X-offset 2.5"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
)

commands(
    ("cb1", (6, 8)),
    baca.clef("bass"),
    baca.note_head_style_harmonic(
        lambda _: abjad.select.run(_, 0),
    ),
    baca.pitch(
        "E3",
        lambda _: abjad.select.run(_, 0),
    ),
    baca.pitch(
        "Dtqf3",
        lambda _: abjad.select.run(_, 1),
    ),
    baca.markup(
        r"\baca-seven-e-flat",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.run(_, 1)[0],
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.pitch("D2"),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("cb2", [2, (4, 5), 10]),
    baca.new(
        baca.clef("treble"),
        match=[0, 2],
    ),
    baca.pitch(
        "Cqf6",
        lambda _: baca.select.rleaves(_),
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-fourteen-d",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        match=[0, 2],
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
        match=[0, 2],
    ),
)

commands(
    ("cb2", (6, 8)),
    baca.clef("bass"),
    baca.pitch(
        "A1",
        lambda _: abjad.select.run(_, 0),
    ),
    baca.pitch(
        "Eb2",
        lambda _: abjad.select.run(_, 1),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.trill_spanner(),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.flat_glissando(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| p |> pp",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
    baca.hairpin(
        "pp <| mp |> pp",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.leaves(_)[5:8],
    ),
    baca.trill_spanner(),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.tuplet_bracket_up(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "sfp",
        selector=lambda _: baca.select.pheads(_)[1:],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 10),
    baca.note_head_style_harmonic(),
    baca.flat_glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |> ! <| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 1 + 1]),
        right_broken=True,
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.trill_spanner(
        right_broken=True,
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.stop_on_string(
        lambda _: baca.select.rest(_, 1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=lambda _: baca.select.leaves(_)[1:3],
    ),
    baca.accent(
        lambda _: baca.select.phead(_, -1),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.plt(_, -1),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 7),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], (6, 7)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[4:]),
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
        fermata_measure_empty_overrides=[3, 9],
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
