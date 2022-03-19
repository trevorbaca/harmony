import abjad
import baca

from harmony import library

#########################################################################################
######################################### 09 [I] ########################################
#########################################################################################

stage_markup = (
    ("[I.1]", 1),
    ("[I.2]", 2),
)

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
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "I",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "I",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("144", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(1 - 1)),
    baca.open_volta(baca.selectors.skip(1 - 1)),
    baca.double_volta(baca.selectors.skip(2 - 1)),
    baca.close_volta(baca.selectors.skip(2 - 1), site="after"),
)

# bfl

commands(
    ("bfl", 1),
    library.sixteenths(
        [-4, 8, "-"],
    ),
    baca.pitch("G3"),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
            left_broken=True,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(5.5).staff_padding,
            left_broken=True,
        ),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
    ),
)

commands(
    ("bfl", 2),
    library.sixteenths(
        [3, 6, 3, 3, 6, 3],
    ),
    baca.pitch("Gb3"),
    baca.color_fingerings([0, 1, 2]),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
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
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
    ),
)

commands(
    ("perc1", 2),
    library.sixteenths(
        [2, -2, -4, -4, 2, -2, 2, -2, -4],
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pheads(),
    ),
)

commands(
    ("perc1", (1, 2)),
    library.slate_staff_position(),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 2),
    library.sixteenths(
        [3, -6, 3, 3, -6, 3],
    ),
    baca.new(
        library.bass_drum_staff_position(),
        selector=baca.selectors.rleaves(),
    ),
    baca.accent(
        baca.selectors.pheads((None, -1)),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-sponge-markup",
        abjad.tweak(6).staff_padding,
    ),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.selectors.pleaves((-1, None), rleak=True),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaf(-1),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.pleaf(-1),
    ),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(6).staff_padding,
        selector=baca.selectors.pleaf(-1),
    ),
)

commands(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        [-6, -2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("<B5 C#6>"),
    baca.double_flageolet(),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-lv-markup",
        abjad.tweak(1.5).padding,
    ),
)

# va

commands(
    ("va", 1),
    library.sixteenths(
        [-4, "+"],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\harmony-match-harp-decay-markup",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

commands(
    ("va", 2),
    baca.pitch("C4"),
)

# vc1

commands(
    ("vc1", (1, 2)),
    baca.pitch("B4"),
)

# vc2

commands(
    ("vc2", (1, 2)),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.tweak(1.5).staff_padding,
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.clef("bass"),
    baca.pitch("E3"),
    baca.note_head_style_harmonic(),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 2),
    baca.pitch("F3"),
)

# va, vc1, vc2, cb2


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    (["va", "vc1", "vc2", "cb1"], 2),
    library.sixteenths(
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.hairpin(
        "mp >o niente",
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.new(
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(5.5).staff_padding,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            right_broken=True,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        match=[0, 1, 2],
    ),
    baca.new(
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(8).staff_padding,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(10.5).staff_padding,
            right_broken=True,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-2:]),
        ),
        match=[3],
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 2),
    library.sixteenths(
        [-9, 3, -9, 3],
    ),
    baca.clef("treble"),
    baca.pitches(
        "Fqs5 Gqf5",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic("ff"),
    baca.pizzicato_spanner(
        abjad.tweak(5.5 + 1).staff_padding,
        selector=baca.selectors.tleaves(rleak=True),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.pheads(),
    ),
    baca.markup(
        r"\baca-thirteen-a",
        abjad.tweak(3).staff_padding,
    ),
    baca.markup(
        r"\baca-fourteen-a",
        abjad.tweak(3).staff_padding,
        selector=baca.selectors.phead(-1),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    library.sixteenths(
        [-4, 8, "-"],
    ),
    baca.stop_on_string(
        baca.selectors.leaf_in_each_rleak_run(-1),
    ),
    baca.hairpin(
        "o<| ff",
        selector=baca.selectors.tleaves(rleak=True),
    ),
)

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
