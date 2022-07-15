import abjad
import baca

from harmony import library

#########################################################################################
######################################### 23 [W] ########################################
#########################################################################################

stage_markup = (
    ("[W.1]", 1),
    ("[>Y.1]", 2, "#darkgreen"),
    ("[W.2-3]", 4),
    ("[W.4]", 6),
    ("[<V.6]", 7, "#darkgreen"),
    ("[<T.3]", 8, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (5, 4),
        (6, 4),
        (1, 4),
        (5, 4),
        (5, 4),
        (6, 4),
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
    (1 - 1, "4.=4"),
    (2 - 1, "57 3/5"),
    (2 - 1, "3:5(4)=4"),
    (4 - 1, "96"),
    (4 - 1, "5:3(4)=4"),
    (7 - 1, "72"),
    (7 - 1, "3:4(4)=4"),
    (8 - 1, "144"),
    (8 - 1, "8=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in ((3 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

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

music = baca.make_mmrests(commands.get(3), head=voice.name)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 6),
    [4],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [-4, 8, "-"],
    extra_counts=[1],
)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [-16, 4],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 6),
    [4, -16, 4, -16, 4, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(7))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [-8, 8, "-"],
    extra_counts=[2],
    denominator=None,
)
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = baca.make_mmrests(commands.get(1, 5))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(6),
    [4, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    [4, "-"],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [-2, 2, -8, 2, "-"],
    extra_counts=[1],
)
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 5))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(6),
    [4, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(7, 8))
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 6),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    ["+"],
    after_graces=[1],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [-6, 2, -4, 2, "-"],
    extra_counts=[2],
    denominator=None,
)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(4, 5),
    [4],
)
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    commands.get(6, 7),
    [-8, 4, 4, 4, 4, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[0, -4, 0],
    denominator=None,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [-7, 3, -7, 3],
    extra_counts=[1],
)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_tuplet(
    commands.get(1),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = baca.make_mmrests(commands.get(3))
voice.extend(music)

music = library.make_tuplet(
    commands.get(4),
    [(1,)],
    force_augmentation=True,
)
voice.extend(music)

music = baca.make_notes(commands.get(5, 6))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    ["+"],
    after_graces=[1],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [-10, 3, -5, 2],
    extra_counts=[1],
)
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, "-"],
)
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)


music = baca.make_mmrests(commands.get(3, 5))
voice.extend(music)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
    return result


music = library.make_sixteenths(
    commands.get(6, 7),
    [-8, 4, 4, 4, 4, 4, 4],
    preprocessor=preprocessor,
    extra_counts=[0, -4, 0],
    denominator=True,
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(8),
    [1, -14, 1],
)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = baca.make_mmrests(commands.get(1))
voice.extend(music)

music = baca.make_notes(commands.get(2))
voice.extend(music)

music = baca.make_mmrests(commands.get(3, 4))
voice.extend(music)

music = library.make_sixteenths(
    commands.get(5, 6),
    [4],
)
voice.extend(music)

music = library.make_sixteenths(
    commands.get(7),
    ["+"],
    after_graces=[1],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(8))
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
        abjad.sequence.rotate(library.warble_pitches(), -6),
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
    ("bfl", (4, 6)),
    baca.pitch("<B3 Dqf4>"),
    baca.espressivo(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("mp"),
)

commands(
    ("bfl", 8),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (1, 8)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 6)),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("perc1", 7),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", 8),
    library.slate_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", (1, 8)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch(
        "E4",
        lambda _: baca.select.plt(_, 0),
    ),
    baca.laissez_vibrer(),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 7),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", 8),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", (7, 8)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
)

commands(
    ("hp", 6),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-xyl-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

# va

commands(
    ("va", 1),
    baca.clef("alto"),
    baca.pitch("E3"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("va", 2),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

commands(
    ("va", (4, 6)),
    baca.pitch("E3"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P -> T",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.mgroups(_, [2, 1]),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 7),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("vc1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<A4 B4 C5>"),
    baca.dynamic("pp"),
)

commands(
    ("vc1", (4, 5)),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
    ),
)


commands(
    ("vc1", (6, 7)),
    baca.tuplet_bracket_down(),
    baca.pitch("E2"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
    ),
    baca.scp_spanner(
        "T -> P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.mgroups(_, [1, 2]),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
    ),
)

commands(
    ("vc2", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

commands(
    ("vc2", (4, 6)),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

commands(
    ("vc2", 7),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("ff"),
    baca.scp_spanner(
        "P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
    baca.dynamic("pp"),
)

commands(
    ("cb1", 4),
    baca.clef("bass"),
)


commands(
    ("cb1", (6, 7)),
    baca.tuplet_bracket_down(),
    baca.pitch("E1"),
    baca.triple_staccato(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
    ),
    baca.scp_spanner(
        "T -> P =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.mgroups(_, [1, 2]),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("treble"),
)

commands(
    ("cb2", 2),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("cb2", (5, 6)),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.hairpin(
        "ff >o",
        bookend=False,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "P3 -> T1",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 7),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        selector=lambda _: baca.select.leaves(_),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)


commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 7)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
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
