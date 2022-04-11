import abjad
import baca

from harmony import library

#########################################################################################
######################################### 25 [Y] ########################################
#########################################################################################

stage_markup = (
    ("[▶AA.1]", 1, "#darkgreen"),
    ("[Y.1]", 2),
    ("[◀X.8]", 3, "#darkgreen"),
    ("[Y.2]", 5),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
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
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "Y",
            lambda _: baca.select.skip(_, 2 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "Y",
            lambda _: baca.select.skip(_, 2 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("3:2(8)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("4:5(2)=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 3 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 5 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 4 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 11 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-two",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 4 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-three",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 11 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 2),
    library.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -7),
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
    library.sixteenths(
        [-2, 2, 2],
    ),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.Tweak(r"- \tweak staff-padding 10"),
        pieces=baca.selectors.lparts([1, 1 + 1]),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (5, 10)),
    library.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -8),
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
        selector=baca.selectors.leaves(),
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
    library.sixteenths(
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
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
    library.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    library.slate_staff_position(),
)

commands(
    ("perc1", (2, 3)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=baca.selectors.leaves((1, 8)),
    ),
)

commands(
    ("perc1", (5, 9)),
    library.sixteenths(
        [1, -23, -1, 1, -22],
    ),
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


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc1", 10),
    library.sixteenths(
        [-1, 1, -2, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    ),
    library.brake_drum_staff_position(),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 1),
    library.sixteenths(
        [4, -20, 4],
    ),
    baca.staff_position(2),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(1),
    library.sixteenths(
        [-10, "+"],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
)

commands(
    ("perc2", 3),
    library.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("perc2", (2, 3)),
    library.tam_tam_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (5, 9)),
    library.sixteenths(
        [2, -22, -1, 2, -21],
    ),
    library.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
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


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
    return result


commands(
    ("perc2", 10),
    library.sixteenths(
        [-1, 1, 1, -1, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads((None, 2)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves((None, 2)),
    ),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_, None, 1),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=baca.selectors.pleaf(2),
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
    library.sixteenths(
        [-24, 4],
    ),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
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
    library.sixteenths(
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
        selector=baca.selectors.pleaf(0),
    ),
)

commands(
    ("hp", 3),
    library.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
)

commands(
    ("hp", (2, 3)),
    library.whisk_staff_position(),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        selector=baca.selectors.leaves((1, 8)),
    ),
)

commands(
    ("hp", (5, 10)),
    baca.clef("bass"),
    baca.staff_lines(5),
    library.sixteenths(
        [-24, -1, 3, -20],
    ),
    baca.pitch("G1"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4 + 3),
    baca.markup(
        r"\baca-lv-into-fermata-markup",
        selector=baca.selectors.phead(-1),
    ),
)

# va

commands(
    ("va", (1, 2)),
    baca.make_notes(),
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
    library.sixteenths(
        [6, 3, 11],
    ),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("va", (5, 10)),
    library.tessera_4(4),
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
            baca.selectors.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            baca.selectors.leaf(0),
        ),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            baca.selectors.leaf(-1),
        ),
        baca.note_head_transparent(
            baca.selectors.leaves((1, -1)),
        ),
    ),
)

# vc1

commands(
    ("vc1", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
)

commands(
    ("vc1", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<A4 B4 C5>"),
)

commands(
    ("vc1", 3),
    library.sixteenths(
        [4, 2, 7, 7],
    ),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc1", (5, 10)),
    library.tessera_4(3),
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
            baca.selectors.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<A4 B4 C5>",
            baca.selectors.pleaves([0, -1]),
        ),
        baca.note_head_transparent(
            baca.selectors.leaves((1, -1)),
        ),
    ),
)

# vc2

commands(
    ("vc2", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
    baca.tuplet_bracket_up(),
)

commands(
    ("vc2", (1, 2)),
    baca.clef("treble"),
    baca.pitch("<G4 Ab4 Bb4>"),
)

commands(
    ("vc2", 3),
    library.sixteenths(
        [9, 11],
    ),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("vc2", (5, 10)),
    library.tessera_4(2),
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
            baca.selectors.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            baca.selectors.pleaves([0, -1]),
        ),
        baca.pitch(
            "C5",
            baca.selectors.pleaves((1, -1)),
        ),
        baca.note_head_transparent(
            baca.selectors.leaves((1, -1)),
        ),
    ),
)

# cb1

commands(
    ("cb1", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
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
    library.sixteenths(
        [4, 9, 7],
    ),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb1", (5, 10)),
    library.tessera_4(1),
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
            baca.selectors.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<A4 B4 C5>",
            baca.selectors.pleaves([0, -1]),
            do_not_transpose=True,
        ),
        baca.note_head_transparent(
            baca.selectors.leaves((1, -1)),
        ),
    ),
)

# cb2

commands(
    ("cb2", 1),
    baca.skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    ),
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
    library.sixteenths(
        [9, 11],
    ),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.plts(),
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("cb2", (5, 10)),
    library.tessera_4(0),
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
            baca.selectors.leaves(),
        ),
        baca.note_head_style_harmonic_black(),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            baca.selectors.pleaves([0, -1]),
            do_not_transpose=True,
        ),
        baca.pitch(
            "C5",
            baca.selectors.pleaves((1, -1)),
            do_not_transpose=True,
        ),
        baca.note_head_transparent(
            baca.selectors.leaves((1, -1)),
        ),
    ),
)

# vc1, vc2, cb1, cb2

commands(
    (["vc1", "vc2", "cb1", "cb2"], 2),
    baca.make_notes(),
)

commands(
    (["vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
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
        baca.selectors.pleaves(),
    ),
    baca.accent(
        baca.selectors.pheads((1, None)),
    ),
    baca.flat_glissando(),
    baca.dynamic("f"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 10)),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
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
        fermata_measure_empty_overrides=[4, 11],
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
