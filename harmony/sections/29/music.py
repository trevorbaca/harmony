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
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (6, 4),
        (6, 4),
        (1, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "CC",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "CC",
            baca.selectors.skip(1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
    baca.bar_line("|.", baca.selectors.skip(-1)),
)

commands(
    "Global_Skips",
    baca.metronome_mark("72", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(1 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("very_long", baca.selectors.rest(3 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-eight",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=baca.selectors.skip(3 - 1),
        ),
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
    library.sixteenths(
        [1, -22, 1],
    ),
    library.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.new(
        baca.dynamic("mf"),
        baca.damp(),
        selector=baca.selectors.phead(-1),
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
    library.sixteenths(
        ["-", 1],
        invisible=[-1],
    ),
    baca.damp(
        baca.selectors.leaf(-1),
    ),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        [1, "-"],
    ),
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
    library.sixteenths(
        [16, 4, 2, 2],
        written_dotted_wholes=[0],
        invisible=[1, 2, 3],
    ),
    baca.pitch("A1"),
    baca.flat_glissando(
        left_broken=True,
        selector=baca.selectors.leaves((None, 1)),
    ),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> T4+",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        left_broken=True,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", -1),
    baca.not_parts(
        baca.chunk(
            baca.mark(r"\harmony-colophon-markup"),
            baca.rehearsal_mark_down(),
            baca.rehearsal_mark_padding(12),
            baca.rehearsal_mark_self_alignment_x(abjad.RIGHT),
            selector=baca.selectors.rleaf(-1),
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

# va, vc1, vc2, cb1

commands(
    (["bfl", "va", "vc1", "vc2", "cb1"], 1),
    library.sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
    baca.hairpin(
        "pp < p >o niente",
        pieces=lambda _: baca.lparts(baca.rleaves(_), [1, 3]),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_segment(
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
        final_segment=True,
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