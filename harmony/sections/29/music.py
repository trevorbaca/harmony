import abjad
import baca

from harmony import library

#########################################################################################
######################################## 29 [CC] ########################################
#########################################################################################

stage_markup = (("[CC.1-2]", 1),)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
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
    (1 - 1, "72"),
    (1 - 1, "3:2(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

baca.bar_line(skips[3 - 1], "|.")

rests = score["Rests"]
for index, string in ((3 - 1, "very_long"),):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-twenty-eight",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

# BFL

voice = score["BassFlute.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 4, 16],
    tie_all=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3), head=voice.name)
voice.extend(music)

# PERC1

voice = score["Percussion.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [1, -22, 1],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3))
voice.extend(music)

# PERC2

voice = score["Percussion.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    ["-", 1],
    invisible=[-1],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3))
voice.extend(music)

# HP

voice = score["Harp.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [1, "-"],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3))
voice.extend(music)

# VA

voice = score["Viola.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 4, 16],
    tie_all=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3), head=voice.name)
voice.extend(music)

# VC1

voice = score["Cello.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 4, 16],
    tie_all=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3), head=voice.name)
voice.extend(music)

# VC2

voice = score["Cello.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 4, 16],
    tie_all=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3), head=voice.name)
voice.extend(music)

# CB1

voice = score["Contrabass.1.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [4, 4, 16],
    tie_all=True,
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3), head=voice.name)
voice.extend(music)

# CB2

voice = score["Contrabass.2.Music"]

music = library.make_sixteenths(
    commands.get(1),
    [16, 4, 2, 2],
    written_dotted_wholes=[0],
    invisible=[1, 2, 3],
)
voice.extend(music)

music = baca.make_mmrests(commands.get(2, 3), head=voice.name)
voice.extend(music)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# bfl, va, vc1, vc2, cb1

commands(
    (["bfl", "va", "vc1", "vc2", "cb1"], 1),
    baca.hairpin(
        "pp < p >o niente",
        pieces=lambda _: baca.lparts(baca.rleaves(_), [1, 3]),
    ),
)

# bfl

commands(
    ("bfl", 1),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
    ),
)

commands(
    ("bfl", (1, 2)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.new(
        baca.dynamic("mf"),
        baca.damp(),
        selector=lambda _: baca.select.phead(_, -1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    baca.damp(
        lambda _: abjad.select.leaf(_, -1),
    ),
)

# hp

commands(
    ("hp", 1),
    baca.clef("treble"),
    baca.pitch("Bb4"),
    baca.snap_pizzicato(),
    baca.dynamic("f"),
)

commands(
    ("hp", (1, 2)),
    baca.dls_staff_padding(4),
)

# va

# vc1

# vc2

# cb1

commands(
    ("cb1", 1),
    baca.pitch(
        "Bb4",
        do_not_transpose=True,
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        alteration="Cb5",
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.pitch("A1"),
    baca.flat_glissando(
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:1],
    ),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T1 -> T4+",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        left_broken=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", -1),
    baca.not_parts(
        baca.chunk(
            baca.mark(r"\harmony-colophon-markup"),
            baca.rehearsal_mark_down(),
            baca.rehearsal_mark_extra_offset((92, 8)),
            baca.rehearsal_mark_padding(12),
            baca.rehearsal_mark_self_alignment_x(abjad.RIGHT),
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
    ),
)

# va, vc1, vc2

commands(
    (["va", "vc1", "vc2"], 1),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        alteration="Cb5",
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
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
        final_section=True,
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
