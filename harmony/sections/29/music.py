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
    **baca.section_accumulation_defaults(),
    instruments=library.instruments(),
    margin_markups=library.margin_markups(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (6, 4),
        (6, 4),
        (1, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

commands(
    "GlobalSkips",
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.bar_line("|.", lambda _: baca.select.skip(_, -1)),
)

commands(
    "GlobalRests",
    baca.global_fermata("very_long", lambda _: baca.select.rest(_, 3 - 1)),
)

# text

commands(
    "GlobalSkips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-eight",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 3 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", 1),
    library.make_sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
)

commands(
    ("bfl", (2, 3)),
    baca.make_mmrests(),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_sixteenths(
        [1, -22, 1],
    ),
)

commands(
    ("perc1", (2, 3)),
    baca.make_mmrests_flat(),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_sixteenths(
        ["-", 1],
        invisible=[-1],
    ),
)

commands(
    ("perc2", (2, 3)),
    baca.make_mmrests_flat(),
)

# HP

commands(
    ("hp", 1),
    library.make_sixteenths(
        [1, "-"],
    ),
)

commands(
    ("hp", (2, 3)),
    baca.make_mmrests_flat(),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
)

commands(
    ("va", (2, 3)),
    baca.make_mmrests(),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
)

commands(
    ("vc1", (2, 3)),
    baca.make_mmrests(),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
)

commands(
    ("vc2", (2, 3)),
    baca.make_mmrests(),
)

# CB1

commands(
    ("cb1", 1),
    library.make_sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
)

commands(
    ("cb1", (2, 3)),
    baca.make_mmrests(),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [16, 4, 2, 2],
        written_dotted_wholes=[0],
        invisible=[1, 2, 3],
    ),
)

commands(
    ("cb2", (2, 3)),
    baca.make_mmrests(),
)

# reapply

music_voices = [_ for _ in voice_names if "MusicVoice" in _]

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
        commands,
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[3],
        final_section=True,
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
