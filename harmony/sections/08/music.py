import abjad
import baca

from harmony import library

#########################################################################################
######################################### 08 [H] ########################################
#########################################################################################

stage_markup = (
    ("[H.1-6]", 1),
    ("[H.7-8]", 8),
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
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (1, 4),
        (3, 4),
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
    (1 - 1, "96"),
    (1 - 1, "5:3(4)=4"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

baca.open_volta(skips[8 - 1], commands.first_measure_number)

rests = score["Rests"]
for index, string in ((7 - 1, "short"),):
    baca.global_fermata(rests[index], string)

# text

commands(
    "Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-seven",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 7 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", (1, 7)),
    baca.make_mmrests_flat(),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (2, 4), (2, 4)])
    return result


commands(
    ("bfl", (8, 9)),
    library.make_sixteenths(
        [-8, -4, 8, -4, 8],
        preprocessor=preprocessor,
        extra_counts=[0, 4, 4],
        denominator=None,
        do_not_rewrite_meter=True,
    ),
)

# PERC1

commands(
    ("perc1", (1, 6)),
    library.make_sixteenths(
        [1, -11, -1, 1, -14],
    ),
)

commands(
    ("perc1", (7, 9)),
    baca.make_mmrests_flat(),
)

# PERC2

commands(
    ("perc2", (1, 6)),
    baca.make_notes(),
)

commands(
    ("perc2", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", (8, 9)),
    baca.make_notes(),
)

# HP

commands(
    ("hp", (1, 6)),
    library.make_sixteenths(
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0, 1], 3),
        invisible=([1], 3),
    ),
)

commands(
    ("hp", 7),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", (8, 9)),
    baca.make_notes(),
)

# VA

commands(
    ("va", (1, 6)),
    library.make_sixteenths(
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    ),
)

commands(
    ("va", 7),
    baca.make_mmrests(),
)

commands(
    ("va", (8, 9)),
    baca.make_notes(),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [4, 4, 4],
    ),
)

commands(
    ("vc1", (2, 6)),
    library.make_sixteenths(
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    ),
)

commands(
    ("vc1", 7),
    baca.make_mmrests(),
)

commands(
    ("vc1", (8, 9)),
    baca.make_notes(),
)

# VC2


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (4, 4)])
    return result


commands(
    ("vc2", (1, 2)),
    library.make_sixteenths(
        ["+", 1],
        preprocessor=preprocessor,
        do_not_rewrite_meter=True,
        written_wholes=[1],
        invisible=[-1],
    ),
)

commands(
    ("vc2", (3, 6)),
    library.make_sixteenths(
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    ),
)

commands(
    ("vc2", 7),
    baca.make_mmrests(),
)

commands(
    ("vc2", (8, 9)),
    baca.make_notes(),
)

# CB1

commands(
    ("cb1", (1, 3)),
    library.make_sixteenths(
        [4, 4, 8, 4, 4, 8, 4, 4],
    ),
)

commands(
    ("cb1", (4, 6)),
    library.make_sixteenths(
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    ),
)

commands(
    ("cb1", 7),
    baca.make_mmrests(),
)

commands(
    ("cb1", (8, 9)),
    baca.make_notes(),
)

# CB2

commands(
    ("cb2", (1, 4)),
    library.make_sixteenths(
        [12, 16, 12, 15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[-2],
        invisible=[-1],
    ),
)

commands(
    ("cb2", (5, 6)),
    library.make_sixteenths(
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    ),
)

commands(
    ("cb2", 7),
    baca.make_mmrests(),
)

commands(
    ("cb2", (8, 9)),
    baca.make_notes(),
)

# anchor notes

commands(
    "bfl",
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
    ("bfl", (8, 9)),
    baca.pitch("Ab3"),
    baca.dynamic("mf"),
    baca.dls_staff_padding(4),
    baca.new(
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            right_broken=True,
        ),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[1:]),
    ),
)

# perc1

commands(
    ("perc1", (1, 6)),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        abjad.Tweak(r"- \tweak X-extent #'(0 . 0)"),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# perc2

commands(
    ("perc2", (1, 6)),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaf(_, -1),
    ),
)

commands(
    ("perc2", (8, 9)),
    library.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("<B5 C6 D6>"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=1,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=3,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < ff > p",
        measures=5,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
    ),
)

commands(
    ("hp", (8, 9)),
    baca.pitch("<C6 Db6 Eb6>"),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
)

commands(
    ("hp", (1, 9)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", (1, 6)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
    ),
    baca.dynamic("p"),
    baca.hairpin(
        "(p) < mf > p",
        measures=2,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=4,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("va", (1, 9)),
    baca.pitch(
        "<B4 C5 D5>",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
    baca.dls_staff_padding(4),
)

# vc1

commands(
    ("vc1", 1),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 0),
    ),
    baca.pitch("Bb4"),
    baca.espressivo(
        lambda _: baca.select.pheads(_)[1:],
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        left_broken=True,
    ),
)

commands(
    ("vc1", (2, 6)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
    ),
    baca.hairpin(
        "p < mf > p",
        measures=2,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=4,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("vc1", (2, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
)

commands(
    ("vc1", (1, 9)),
    baca.dls_staff_padding(4),
)

# vc2


commands(
    ("vc2", (1, 2)),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 0),
    ),
    baca.pitch("B2"),
    baca.hairpin(
        "(p) >o",
        bookend=False,
        selector=lambda _: baca.select.leaves(_)[-2:],
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("vc2", (3, 6)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
    ),
    baca.dynamic(
        "p",
        measures=3,
    ),
    baca.hairpin(
        "(p) < f > p",
        measures=4,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("vc2", (3, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
    ),
)

commands(
    ("vc2", (1, 9)),
    baca.dls_staff_padding(4),
)

# cb1

commands(
    ("cb1", (1, 3)),
    # TODO: promote into rhythm:
    baca.repeat_tie(
        lambda _: abjad.select.leaf(_, 0),
    ),
    baca.pitch(
        "Bb4",
        do_not_transpose=True,
    ),
    baca.espressivo(
        lambda _: baca.select.pheads(_)[1:],
    ),
)

commands(
    ("cb1", (4, 6)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
    ),
    baca.hairpin(
        "p < f > p",
        measures=4,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("cb1", (4, 9)),
    baca.pitch(
        "<C5 Db5 Eb5>",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        do_not_transpose=True,
    ),
)

commands(
    ("cb1", (1, 9)),
    baca.dls_staff_padding(4),
)

# cb2

commands(
    ("cb2", (1, 4)),
    baca.pitch("Bb2"),
    baca.hairpin(
        "(p) >o",
        bookend=False,
        selector=lambda _: baca.select.leaves(_)[-2:],
    ),
    baca.damp_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        left_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("cb2", (5, 6)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
    ),
    baca.dynamic(
        "p",
        measures=5,
    ),
    baca.hairpin(
        "(p) < ff >o niente",
        measures=6,
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
    ),
)

commands(
    ("cb2", (5, 9)),
    baca.clef("treble"),
    baca.pitch(
        "<B4 C5 D5>",
        lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        do_not_transpose=True,
    ),
)

commands(
    ("cb2", (1, 9)),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (8, 9)),
    baca.note_head_style_harmonic(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-quasi-bisb-ancora-markup",
        abjad.Tweak(r"- \tweak padding 1.5"),
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
