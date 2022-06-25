import abjad
import baca

from harmony import library

#########################################################################################
######################################### 18 [R] ########################################
#########################################################################################

stage_markup = (
    ("[R.1-2]", 1),
    ("[>S.1]", 3, "#darkgreen"),
    ("[<P.7-8]", 4, "#darkgreen"),
    ("[<Q.1]", 6, "#darkgreen"),
    ("[R.3]", 8),
    ("[R.4-6]", 9),
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
        (4, 4),
        (3, 4),
        (3, 4),
        (6, 4),
        (1, 4),
        (4, 4),
        (3, 4),
        (4, 4),
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
    (1 - 1, "3:2(4)=4"),
    (3 - 1, "96"),
    (3 - 1, "4:3(4)=4"),
    (6 - 1, "48"),
    (6 - 1, "2=4"),
    (8 - 1, "72"),
    (8 - 1, "3:2(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in ((7 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[7 - 1],
    r"\harmony-text-seventeen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = baca.make_mmrests(commands.get(1, 2))
voice.extend(music)

music = library.make_warble_rhythm(
    commands.get(3),
    sixteenths=[2 * 4],
    extra_counts=[2],
    rest_tuplets=[1],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4),
    [3, -1, 8, -8, 3, -1],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5),
    [-4, 8],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(6),
    [4, 4, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7, 11))
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 2, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [2, 2, "-"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(3),
    divisions=[5, 11],
    counts=[0, 5],
    rest_after=True,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    [21, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(6))
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [2, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [2, "-"],
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(10),
    [(1, -1, -8)],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [2, "-"],
)
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 2, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [2, 2, "-"],
)
voice.extend(music)

music = library.make_appoggiato_rhythm(
    commands.get(3),
    divisions=[5, 11],
    counts=[0, 4],
    rest_after=True,
    voice_name=voice.name,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    [21, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(6))
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [2, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(9, 10))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    ["-", 4, 4],
    fuse=True,
    extra_counts=[4],
    denominator=None,
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-4, 2, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-2, 2, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    [21, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(6))
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [2, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [3, 3, "-"],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(10),
    [3, 3, "-"],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [3, 3, "-"],
    untie=True,
)
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-4, 6, 2, -4],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-2, "+", -1],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    library.glissando_counts_curtailed(),
)
voice.extend(music)

music = baca.make_notes(commands.get(6))
voice.extend(music)

music = baca.make_mmrests(commands.get(7), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [8, 4, -4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [2],
    written_quarters=True,
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(10),
    [10 * (1,)],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [2],
    written_quarters=True,
)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-4, 6, 2, -4],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-2, "+", -1],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    library.damp_counts_curtailed(),
)
voice.extend(music)

music = library.make_tessera_2(
    commands.get(6),
    3,
    rest_plts=[0],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [8, 4, -4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9, 11),
    [3, -7],
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-4, 6, 2, -4],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-2, "+", -1],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    library.damp_counts_curtailed(),
)
voice.extend(music)

music = library.make_tessera_2(
    commands.get(6),
    2,
    rest_plts=[0],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [8, 4, -4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [2],
    written_quarters=True,
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(10),
    [10 * (1,)],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [2],
    written_quarters=True,
)
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-4, 6, 2, -4],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    [-2, "+", -1],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    library.glissando_counts_curtailed(),
)
voice.extend(music)

music = library.make_tessera_2(
    commands.get(6),
    1,
    rest_plts=[0],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [8, 4, -4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [1, 4, 1, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(10),
    [2, 3, 1, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [1, 3, 2, "-"],
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-4, 6, 2, -4],
    untie=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(2),
    ["-", 2, 2, 2, 2],
    fuse=True,
    extra_counts=[4],
    denominator=None,
    written_quarters=True,
    invisible_pairs=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(3),
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    library.glissando_counts_curtailed(),
)
voice.extend(music)

music = library.make_tessera_2(
    commands.get(6),
    0,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [8, 4, -4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(9),
    [2],
    written_quarters=True,
)
voice.extend(music)

music = library.make_tuplet(
    commands.get(10),
    [10 * (1,)],
    written_quarters=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(11),
    [2],
    written_quarters=True,
)
voice.extend(music)

# anchor notes

commands(
    ["perc2", "va", "vc2", "cb2"],
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
    ("bfl", 3),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -4),
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
            abjad.select.leaves(_),
            (3, 4),
        ),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("bfl", 4),
    baca.pitch("D4"),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.text_spanner(
        "A =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=True,
        bookend=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", (5, 6)),
    baca.pitch("D4"),
    baca.text_spanner(
        "A =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=True,
        bookend=False,
        map=lambda _: baca.select.runs(_),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
    ),
)

commands(
    ("bfl", (1, 6)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.phead(_, 1),
    ),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
    ),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 2),
    library.bass_drum_staff_position(),
    baca.dynamic("mp"),
    baca.laissez_vibrer(
        lambda _: baca.select.phead(_, 1),
    ),
    baca.hairpin(
        "o< mf",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
    ),
)

commands(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc1", 3),
    baca.clef("percussion"),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 2),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 2, grace=False),
    ),
)

commands(
    ("perc1", (4, 5)),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.flat_glissando(
        do_not_hide_middle_note_heads=True,
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc1", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mf",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 9),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
)

commands(
    ("perc1", 10),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
)

commands(
    ("perc1", 11),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
    ),
)

commands(
    ("perc1", (8, 11)),
    baca.tuplet_bracket_up(),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    library.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("p"),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.phead(_, 1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 2),
    library.brake_drum_staff_position(),
    baca.chunk(
        baca.dynamic("p"),
        baca.damp(),
    ),
    baca.new(
        baca.laissez_vibrer(),
        baca.dynamic("f"),
        selector=lambda _: baca.select.phead(_, 1),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 3),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 2),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 2, grace=False),
    ),
)

commands(
    ("perc2", (4, 5)),
    baca.staff_lines(1),
    library.tam_tam_staff_position(),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 6),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
)

commands(
    ("perc2", 8),
    library.brake_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 10)),
    baca.dls_staff_padding(6),
)

commands(
    ("perc2", 11),
    baca.staff_lines(3),
    baca.tuplet_bracket_up(),
    library.purpleheart_staff_positions([0]),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
    ),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 3),
    baca.new(
        baca.dots_extra_offset((2, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_zero(),
        map=lambda _: [
            x
            for x in abjad.select.rests(_)
            if abjad.get.duration(x) >= abjad.Duration((1, 2))
        ],
    ),
)

# hp

commands(
    ("hp", (4, 5)),
    baca.clef("bass"),
    baca.pitch("F1"),
    baca.damp(
        lambda _: baca.select.leaf_after_each_ptail(_),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(7),
)

commands(
    ("hp", 6),
    baca.pitch("Db1"),
    baca.ottava_bassa(),
    baca.laissez_vibrer(),
    baca.ottava_bracket_staff_padding(8),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
)

commands(
    ("hp", [(1, 2), 8]),
    baca.clef("treble"),
    baca.pitch("G4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", 9),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    ("hp", [9, 10, 11]),
    library.whisk_staff_position(),
    baca.flat_glissando(),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        match=0,
    ),
)

commands(
    ("hp", (9, 11)),
    baca.dls_staff_padding(6),
)

# va

commands(
    ("va", (1, 2)),
    baca.pitch("C3"),
    baca.rest_extra_offset(
        (-1.5, 0),
        lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("va", 3),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
)

commands(
    ("va", (4, 5)),
    baca.pitches("D4 Eb4"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

commands(
    ("va", 6),
    baca.pitch("D4"),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("va", 8),
    baca.clef("alto"),
    baca.pitch("C3"),
)

commands(
    ("va", (9, 11)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("G4"),
    baca.flat_glissando(
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

# vc1

commands(
    ("vc1", (1, 2)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", 3),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", (4, 5)),
    baca.clef("bass"),
    baca.pitch("D#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("vc1", 6),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc1", 8),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", (9, 11)),
    baca.clef("bass"),
    baca.pitch("D3"),
    baca.hairpin(
        "mp -- niente",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

# vc2

commands(
    ("vc2", (1, 2)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
    baca.markup(r"\baca-seven-c"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", 3),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", (4, 5)),
    baca.clef("bass"),
    baca.pitch("C#3"),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("vc2", 6),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc2", 8),
    baca.clef("treble"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", (9, 11)),
    baca.flat_glissando(
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
)

commands(
    ("vc2", [8, (9, 11)]),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("treble"),
    baca.pitch("E5", do_not_transpose=True),
    # NOTE: currently glissando must lexically precede trill spanner
    baca.new(
        baca.flat_glissando(),
        map=lambda _: baca.select.runs(_),
    ),
    baca.trill_spanner(
        alteration="Fqs5",
        map=lambda _: baca.select.runs(_),
    ),
    baca.markup(r"\baca-eleven-c"),
)

commands(
    ("cb1", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("<B5 C6 Db6>", do_not_transpose=True),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 3),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<B5 C6 Db6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", (4, 5)),
    baca.clef("bass"),
    baca.pitches("E3 D#3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("cb1", 6),
    baca.pitch("E3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", 8),
    baca.clef("treble"),
    baca.pitch("E5", do_not_transpose=True),
    # NOTE: currently glissando must lexically precede trill spanner
    baca.new(
        baca.flat_glissando(),
        map=lambda _: baca.select.runs(_),
    ),
    baca.trill_spanner(
        alteration="Fqs5",
        map=lambda _: baca.select.runs(_),
    ),
    baca.markup(r"\baca-eleven-c"),
)

commands(
    ("cb1", 9),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "O -> P4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", 10),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "O -> P4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", 11),
    baca.hairpin(
        "o< p >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.scp_spanner(
        "O -> P4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", (9, 11)),
    baca.pitch("E5", do_not_transpose=True),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 2),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    ("cb2", (2, 3)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<A#5 B5 C6>", do_not_transpose=True),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb2", (4, 5)),
    baca.clef("bass"),
    baca.pitches("C#3 D3"),
    baca.glissando(
        allow_repeats=True,
        map=lambda _: baca.select.runs(_),
    ),
    baca.dynamic("ppp"),
    baca.alternate_bow_strokes(
        lambda x: [
            _ for _ in baca.pheads(x) if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ],
        abjad.Tweak(r"- \tweak staff-padding 4"),
        full=True,
    ),
    baca.half_clt_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("cb2", 6),
    baca.pitch("D3"),
    baca.scp_spanner(
        "T4 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb2", 8),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", (9, 11)),
    baca.clef("treble"),
    baca.pitch("E5", do_not_transpose=True),
    # NOTE: currently glissando must lexically precede trill spanner
    baca.flat_glissando(
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
    baca.trill_spanner(
        # large right padding because open-volta follows in next section
        abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="Fqs5",
    ),
    baca.markup(r"\baca-eleven-c"),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.new(
        # excluded cb1 because of current gliss / pitch trill order contention
        baca.flat_glissando(),
        match=[0, 1, 2, 4],
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[1, 2],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 2),
    baca.new(
        # excluded cb1 because of gliss / pitch trill order contention
        baca.flat_glissando(),
        match=[0, 1, 2],
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[1, 2],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    # TODO: promote to music = library.make_sixteenths()
    baca.invisible_music(
        selector=lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -3,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.new(
        baca.flat_glissando(),
        # excluded cb1 because of current gliss / trill order contention
        match=[0, 1, 2, 4],
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        # excluded cb1 because of current gliss / trill order contention
        match=[1, 2],
    ),
)

# va, vc1, vc2, cb1

commands(
    (["va", "vc1", "vc2", "cb1"], 3),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.triple_staccato(lambda _: baca.select.pheads(_)),
    baca.hairpin(
        "p < f",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

# vc1, vc2, cb2

commands(
    (["va", "vc2", "cb2"], (9, 11)),
    # TODO: move invisible command into rhythm-commands
    baca.invisible_music(
        selector=lambda _: abjad.select.get(baca.select.leaves(_), ([1], 2)),
    ),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.new(
        baca.trill_spanner(
            # large right padding because open-volta follows in next section
            abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        # excluded cb2 because of gliss / trill order contention
        match=[0, 1],
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 11)),
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
        fermata_measure_empty_overrides=[7],
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
