import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [BB] ####################################
###############################################################################

stage_markup = (
    ("[BB.1-4]", 1),
    ("[◀Y.2]", 5, "#darkgreen"),
    ("[BB.5-8]", 7),
)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=harmony.instruments,
    margin_markups=harmony.margin_markups,
    metronome_marks=harmony.metronome_marks,
    score_template=harmony.make_empty_score,
    time_signatures=[
        (2, 4),
        (2, 4),
        (2, 4),
        (2, 4),
        (6, 4),
        (1, 4),
        (7, 4),
        (7, 4),
        (7, 4),
        (7, 4),
    ],
    voice_abbreviations=harmony.voice_abbreviations,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "BB",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "BB",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.selectors.skip(5 - 1)),
    baca.metronome_mark("48", baca.selectors.skip(7 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.selectors.skip(7 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", baca.selectors.rest(6 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-seven",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(6 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 5),
    harmony.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-11),
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.selectors.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.Selection(_).leaves().partition_by_ratio((4, 5)),
        map=baca.selectors.runs(),
        selector=baca.selectors.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(
            r"\harmony-d-d-sharp-markup",
            literal=True,
        ).bound_details__left__text,
        map=baca.selectors.runs(),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("bfl", (7, 10)),
    harmony.sixteenths(
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    ),
    baca.pitch("A4"),
    baca.flat_glissando(
        hide_stem_selector=baca.selectors.pleaves((1, -1)),
        selector=baca.selectors.leaves((None, -6)),
    ),
    baca.hairpin(
        "p < mp >",
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
)

commands(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 4)),
    harmony.sixteenths(
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=[0],
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.hairpin(
        "p < mp > p p < mp > p",
        pieces=baca.selectors.clparts([1]),
        selector=baca.selectors.tleaves(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", 5),
    harmony.sixteenths(
        [1, -23, -1, 1, -22],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", (7, 10)),
    harmony.sixteenths(
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_stem_selector=baca.selectors.pleaves((1, -1)),
        selector=baca.selectors.leaves((None, -6)),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -7]),
    ),
    baca.hairpin(
        "p < mp >",
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dynamic(
        "p",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 4)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [2, "-"],
    ),
    baca.pitch("C#5"),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, -22, -1, 2, -21],
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.selectors.pheads(),
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves(),
    ),
    baca.hairpin(
        "f >o niente",
        map=baca.selectors.rleak_runs(),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

commands(
    ("perc2", (7, 10)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-26, 2],
    ),
    baca.pitch("A4"),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
    baca.dynamic(
        "mp-sempre",
        abjad.tweak(0.25).self_alignment_X,
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

# hp

commands(
    ("hp", (1, 4)),
    baca.clef("bass"),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("A1"),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.laissez_vibrer(
        baca.selectors.ptails(),
    ),
)

commands(
    ("hp", (7, 10)),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("<E3 Fb3>"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic(
        "mp-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.dls_staff_padding(4),
    baca.text_spanner(
        "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
        " -> 0 pul. / beat",
        abjad.tweak(3).staff_padding,
        pieces=baca.selectors.lparts([1, 1, 1, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\harmony-rh-bow-plus-lh-bow-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

# va

commands(
    ("va", (1, 4)),
    baca.make_notes(),
    baca.pitch("Gqf3"),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "poc. scr. =|",
        abjad.tweak(3).staff_padding,
        abjad.tweak(6).bound_details__right__padding,
        autodetect_right_padding=False,
        left_broken=True,
    ),
)

commands(
    ("va", 5),
    harmony.tessera_4(4),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

commands(
    ("va", (7, 10)),
    baca.make_notes(),
    baca.pitch("E3"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

commands(
    ("vc1", (1, 4)),
    harmony.sixteenths(
        [10, 6],
    ),
    baca.note_head_style_harmonic(),
    baca.pitches("E6 C#6"),
    baca.glissando(),
    baca.hairpin(
        "o< mp >o",
        bookend=False,
        pieces=baca.selectors.cmgroups([2, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("vc1", 5),
    harmony.tessera_4(3),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.selectors.lparts([2, 3, 1 + 1]),
        selector=baca.selectors.rleaves(),
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
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("vc1", (7, 10)),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch("C#6"),
    baca.hairpin(
        "niente o< pp >o ! o< pp >o ! o< p >o ! o< pp >o !"
        " o< p >o ! o< pp >o ! o< p >o !"
        " o< p >o ! o< mp >o ! o< mf >o ! o< mp >o !"
        " o< mp >o ! o< mf >o ! o< mf >o !"
        " o< mf >o ! o< f >o ! o< f >o ! o< mf >o !"
        " o< f >o ! o< mf >o ! o< mf >o !"
        " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
        " o< p >o ! o< pp >o ! o< pp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="E6",
        harmonic=True,
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

# vc2

commands(
    ("vc2", (1, 4)),
    harmony.sixteenths(
        [10, 6],
    ),
    baca.note_head_style_harmonic(),
    baca.pitches("A5 C#6"),
    baca.glissando(),
    baca.hairpin(
        "o< mp >o",
        bookend=False,
        pieces=baca.selectors.cmgroups([2, 3]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("vc2", 5),
    harmony.tessera_4(2),
    baca.hairpin(
        "pp -- ! < mp -- ! >o niente",
        pieces=baca.selectors.lparts([1, 2, 3, 2 + 1]),
        selector=baca.selectors.rleaves(),
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
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("vc2", (7, 10)),
    baca.note_head_style_harmonic(),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch("A5"),
    baca.hairpin(
        "niente o< pp >o ! o< p >o ! o< p >o ! o< pp >o !"
        " o< pp >o ! o< p >o ! o< pp >o !"
        " o< p >o ! o< mp >o ! o< mp >o ! o< mf >o !"
        " o< mf >o ! o< mp >o ! o< mf >o !"
        " o< mp >o ! o< mf >o ! o< f >o ! o< f >o !"
        " o< mf >o ! o< f >o ! o< mf >o !"
        " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
        " o< pp >o ! o< p >o ! o< pp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="C#6",
        harmonic=True,
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

# cb1

commands(
    ("cb1", (1, 4)),
    baca.clef("treble"),
    harmony.sixteenths(
        [4, 4, -8],
    ),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "niente o< mp >o niente",
        map=baca.selectors.rleak_runs(),
        pieces=baca.selectors.lparts([1, 1 + 1]),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        map=baca.selectors.runs(),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("cb1", 5),
    harmony.tessera_4(1),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.selectors.lparts([2, 3, 2 + 1]),
        selector=baca.selectors.rleaves(),
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
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("cb1", (7, 10)),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "niente o< pp >o ! o< pp >o ! o< p >o ! o< p >o !"
        " o< pp >o ! o< pp >o ! o< p >o !"
        " o< mp >o ! o< mp >o ! o< p >o ! o< mp >o !"
        " o< mf >o ! o< mf >o ! o< f >o !"
        " o< f >o ! o< f >o ! o< mf >o ! o< f >o !"
        " o< f >o ! o< mf >o ! o< mf >o !"
        " o< mp >o ! o< mp >o ! o< p >o ! o< pp >o !"
        " o< p >o ! o< p >o ! o< pp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.selectors.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

# cb2

commands(
    ("cb2", (1, 4)),
    harmony.sixteenths(
        [8, 8, 8, 6, 2],
        fuse=True,
        do_not_rewrite_meter=True,
        written_halves=[-2],
        invisible=[-1],
    ),
    baca.pitch("A1"),
    baca.flat_glissando(
        hide_middle_stems=True,
        hide_stem_selector=baca.selectors.pleaves((1, -2)),
        selector=baca.selectors.leaves((None, -1)),
    ),
    baca.hairpin(
        "o< ff >o",
        bookend=False,
        pieces=lambda _: baca.Selection(_).mgroups([3, 2]),
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T4 -> P1 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.selectors.lparts([2, 3]),
        selector=baca.selectors.leaves(),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
    ("cb2", 5),
    harmony.tessera_4(0),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.selectors.lparts([2, 1, 1 + 1]),
        selector=baca.selectors.rleaves(),
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
        baca.selectors.pleaves((1, -1)),
    ),
)

commands(
    ("cb2", (7, 10)),
    harmony.sixteenths(
        [4],
    ),
    baca.clef("bass"),
    baca.flat_glissando(
        "A1",
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "o< ff (ff) >o niente",
        pieces=lambda _: baca.Selection(_).mgroups([2, 1, 2]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T4+ -> O -> T2 -> P1 -> T1 -> P3 -> O -> P1 -> O -> P1 -> T4+",
        abjad.tweak(3).staff_padding,
        bookend=-1,
        pieces=baca.selectors.lparts([3, 2, 2, 3, 2, 2, 3, 2, 2, 8]),
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(1).padding,
        direction=abjad.Down,
        literal=True,
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(
        commands,
        **baca.segment_interpretation_defaults(),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        global_rests_in_every_staff=True,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        fermata_measure_empty_overrides=[6],
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
