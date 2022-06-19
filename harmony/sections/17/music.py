import abjad
import baca

from harmony import library

#########################################################################################
######################################### 17 [Q] ########################################
#########################################################################################

stage_markup = (
    ("[Q.1]", 1),
    ("[>S.1]", 2, "#darkgreen"),
    ("[<O.4]", 4, "#darkgreen"),
    ("[Q.2]", 5),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (6, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (5, 4),
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
    (1 - 1, "48"),
    (1 - 1, "2=4"),
    (2 - 1, "96"),
    (2 - 1, "8=4"),
    (5 - 1, "48"),
    (5 - 1, "2=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (3 - 1, "short"),
    (6 - 1, "fermata"),
):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[6 - 1],
    r"\harmony-text-sixteen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    [4, 4, "-"],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_warble_rhythm(
    sixteenths=[2 * 4],
    extra_counts=[2],
    rest_tuplets=[1],
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    [-4, 8],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [4, "-"],
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = baca.make_notes_function(commands.get(1))
voice.extend(music)

music = library.make_appoggiato_rhythm(
    divisions=[5, 11],
    counts=[0, 5],
    rest_after=True,
    voice_name=voice.name,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    ["+"],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [-16, 4],
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = baca.make_notes_function(commands.get(1))
voice.extend(music)

music = library.make_appoggiato_rhythm(
    divisions=[5, 11],
    counts=[0, 4],
    rest_after=True,
    voice_name=voice.name,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3, 4))
voice.extend(music)

music = library.make_sixteenths(
    [-16, 4],
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = baca.make_notes_function(commands.get(1))
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3))
voice.extend(music)

music = library.make_sixteenths(
    ["-", 4],
    extra_counts=[2],
    denominator=None,
    function=commands.get(4),
)
voice.extend(music)

music = library.make_sixteenths(
    [-16, 4],
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = baca.make_notes_function(commands.get(1, 2))
voice.extend(music)

music = baca.make_mmrests(commands.get(3), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    ["+"],
    function=commands.get(4),
)
voice.extend(music)

music = baca.make_repeat_tied_notes_function(commands.get(5))
voice.extend(music)

music = baca.make_mmrests(commands.get(6), head=voice.name)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_tessera_2(
    3,
    rest_plts=[0],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    ["+", -1],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_tessera_2(
    3,
    advance=24,
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_tessera_2(
    2,
    rest_plts=[0],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    ["+", -1],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_tessera_2(
    2,
    advance=24,
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_tessera_2(
    1,
    rest_plts=[0],
    function=commands.get(1),
)
voice.extend(music)

music = library.make_sixteenths(
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    ["+", -1],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_tessera_2(
    1,
    advance=24,
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_tessera_2(0, function=commands.get(1))
voice.extend(music)

music = library.make_sixteenths(
    [2, 2, 2, 2, 2, 2, "-"],
    written_quarters=True,
    function=commands.get(2),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    ["+", -1],
    function=commands.get(4),
)
voice.extend(music)

music = library.make_tessera_2(
    0,
    advance=24,
    function=commands.get(5),
)
voice.extend(music)

music = baca.make_mmrests(commands.get(6))
voice.extend(music)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("bfl", 1),
    baca.pitch("D5"),
    baca.new(
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:3],
    ),
)

commands(
    ("bfl", 2),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches(), -3),
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
    baca.pitch("F#5"),
    baca.dynamic("p"),
)

commands(
    ("bfl", 5),
    baca.pitch(
        "F#5",
        lambda _: abjad.select.run(_, 0),
    ),
)

commands(
    ("bfl", (4, 5)),
    baca.new(
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 9"),
        ),
        selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
    ),
)

commands(
    ("bfl", (1, 5)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
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
    ("perc1", 2),
    baca.clef("percussion"),
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
    ("perc1", 4),
    baca.staff_lines(1),
    library.slate_staff_position(),
    baca.dynamic(
        '"f"',
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 5),
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

# perc2

commands(
    ("perc2", 1),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 2),
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
    ("perc2", 4),
    baca.staff_lines(1),
)

commands(
    ("perc2", 5),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 5)),
    baca.dls_staff_padding(6),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], 2),
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
    ("hp", 1),
    baca.pitch("Db1"),
    baca.ottava_bassa(),
    baca.ottava_bracket_staff_padding(8),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.dls_staff_padding(5),
)

commands(
    ("hp", 4),
    baca.clef("treble"),
    baca.pitch("<B4 C5>"),
    baca.double_flageolet(),
    baca.dynamic("f-ancora"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("hp", 5),
    baca.clef("bass"),
    baca.pitch("Db1"),
    baca.ottava_bassa(),
    baca.ottava_bracket_staff_padding(8),
    baca.laissez_vibrer(),
    baca.dynamic("f-ancora"),
    baca.dls_staff_padding(5),
)

commands(
    ("hp", (1, 5)),
    baca.ottava_bracket_staff_padding(8),
)

# va

commands(
    ("va", (1, 2)),
    baca.pitch("D4"),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        left_broken=True,
    ),
)

commands(
    ("va", 4),
    baca.pitch("F4"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("va", 5),
    baca.pitch("D4"),
    baca.hairpin(
        "pp >o niente",
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

# vc1

commands(
    ("vc1", 1),
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
    ("vc1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", 4),
    baca.clef("bass"),
    baca.pitch("A2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc1", 5),
    baca.pitch("E3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc2

commands(
    ("vc2", 1),
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
    ("vc2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", 4),
    baca.clef("bass"),
    baca.pitch("G2"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("vc2", 5),
    baca.pitch("D3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb1

commands(
    ("cb1", 1),
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
    ("cb1", 2),
    baca.clef("treble"),
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
    ("cb1", 4),
    baca.clef("bass"),
    baca.pitch("G#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb1", 5),
    baca.pitch("E3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb2

commands(
    ("cb2", 1),
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
    ("cb2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<A#5 B5 C6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 4),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.new(
        baca.stop_on_string(),
        selector=lambda _: abjad.select.leaf(_, -1),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.hairpin(
        "f <| fff-scratch",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    ("cb2", 5),
    baca.pitch("D3"),
    baca.scp_spanner(
        "P4 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
    baca.dls_staff_padding(4),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 2),
    # TODO: promote to music = library.make_sixteenths()
    baca.invisible_music(
        lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
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
    baca.markup(r"\baca-quasi-bisb-markup"),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.hairpin(
        "p < f",
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], 5),
    baca.hairpin(
        "f >o niente",
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], [1, 5]),
    baca.triple_staccato(lambda _: baca.select.pheads(_)),
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
        fermata_measure_empty_overrides=[3, 6],
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
