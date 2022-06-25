import abjad
import baca

from harmony import library

#########################################################################################
######################################### 25 [Y] ########################################
#########################################################################################

stage_markup = (
    ("[>AA.1]", 1, "#darkgreen"),
    ("[Y.1]", 2),
    ("[<X.8]", 3, "#darkgreen"),
    ("[Y.2]", 5),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (7, 4),
        (6, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (1, 4),
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
    (1 - 1, "144"),
    (1 - 1, "3:2(8)=4"),
    (2 - 1, "57 3/5"),
    (2 - 1, "4:5(2)=4"),
    (3 - 1, "48"),
    (3 - 1, "5:6(4)=4"),
    (5 - 1, "57 3/5"),
    (5 - 1, "6:5(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (4 - 1, "fermata"),
    (11 - 1, "fermata"),
):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[4 - 1],
    r"\harmony-text-twenty-two",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[11 - 1],
    r"\harmony-text-twenty-three",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = baca.make_mmrests(commands.get(1))
voice.extend(music)

music = library.make_warble_rhythm(
    commands.get(2),
    sixteenths=[2 * 4],
    extra_counts=[2],
    rest_tuplets=[0, 1],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [-2, 2, 2],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_warble_rhythm(
    commands.get(5, 10),
    sixteenths=[12, 12, 1, 11, 12],
    extra_counts=[4, 0, 0, 2, 0],
    rest_tuplets_cyclic=([1, 2, 4], 5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = baca.make_mmrests(commands.get(1))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    ["-", 3, -3, 3, -1],
    fuse=True,
    extra_counts=[-4],
    denominator=None,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [-2, 3, -3, 3, -3, 3, -3, 3, -3],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 9),
    [1, -23, -1, 1, -22],
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    commands.get(10),
    [-1, 1, -2, -8, -12, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[0, 8],
    denominator=None,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, -20, 4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-10, "+"],
    fuse=True,
    extra_counts=[-4],
    denominator=None,
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(3),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 9),
    [2, -22, -1, 2, -21],
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    commands.get(10),
    [-1, 1, 1, -1, -8, -12, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[0, 8],
    denominator=None,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-24, 4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    ["-", 3, -3, 3, -1],
    fuse=True,
    extra_counts=[-4],
    denominator=None,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [-2, 3, -3, 3, -3, 3, -3, 3, -3],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 10),
    [-24, -1, 3, -20],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = baca.make_notes(commands.get(1, 2))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [6, 3, 11],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_tessera_4(
    commands.get(5, 10),
    4,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = baca.make_skeleton(
    r"r1 r8 \times 5/4 { c2 }",
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [4, 2, 7, 7],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_tessera_4(
    commands.get(5, 10),
    3,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = baca.make_skeleton(
    r"r1 r8 \times 5/4 { c2 }",
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [9, 11],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_tessera_4(
    commands.get(5, 10),
    2,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = baca.make_skeleton(
    r"r1 r8 \times 5/4 { c2 }",
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [4, 9, 7],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_tessera_4(
    commands.get(5, 10),
    1,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = baca.make_skeleton(
    r"r1 r8 \times 5/4 { c2 }",
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [9, 11],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(4))
voice.extend(music)

music = library.make_tessera_4(
    commands.get(5, 10),
    0,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(11))
voice.extend(music)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 2),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -7),
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
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 3),
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
    ("bfl", (5, 10)),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -8),
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
    ("perc1", 2),
    library.slate_staff_position(),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 3),
    library.slate_staff_position(),
)

commands(
    ("perc1", (2, 3)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
)

commands(
    ("perc1", (5, 9)),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)


commands(
    ("perc1", 10),
    library.brake_drum_staff_position(),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    baca.staff_position(2),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(1),
)

commands(
    ("perc2", (2, 3)),
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
    ("perc2", (5, 9)),
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
    ("perc2", 10),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_)[:2],
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_)[:2],
    ),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_, None, 1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.pleaf(_, 2),
    ),
)

commands(
    ("perc2", (2, 10)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pince-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("hp", 2),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("hp", (2, 3)),
    library.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
)

commands(
    ("hp", (5, 10)),
    baca.clef("bass"),
    baca.staff_lines(5),
    baca.pitch("G1"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4 + 3),
    baca.markup(
        r"\baca-lv-into-fermata-markup",
        selector=lambda _: baca.select.phead(_, -1),
    ),
)

# va

commands(
    ("va", (1, 2)),
    baca.pitch("Ab4"),
    baca.flat_glissando(),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", 3),
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
    ("va", (5, 10)),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.untie(
            lambda _: baca.select.leaves(_),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            lambda _: abjad.select.leaf(_, -1),
        ),
        baca.note_head_transparent(
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("vc1", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<A4 B4 C5>"),
)

commands(
    ("vc1", 3),
    baca.clef("bass"),
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
    ("vc1", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! >"
            " mf < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("vc2", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<G4 Ab4 Bb4>"),
)

commands(
    ("vc2", 3),
    baca.clef("bass"),
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
    ("vc2", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("cb1", (1, 2)),
    baca.clef("treble"),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
)

commands(
    ("cb1", 3),
    baca.clef("bass"),
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
    ("cb1", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("cb2", (1, 2)),
    baca.clef("treble"),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
)

commands(
    ("cb2", 3),
    baca.clef("bass"),
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
    ("cb2", (5, 10)),
    baca.clef("treble"),
    baca.chunk(
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
            selector=lambda _: baca.select.rleaves(_),
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
            lambda _: baca.select.leaves(_)[1:-1],
        ),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
    baca.markup(r"\baca-quasi-bisb-markup"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.flat_glissando(),
    baca.dynamic("f"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 10)),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
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
        fermata_measure_empty_overrides=[4, 11],
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
