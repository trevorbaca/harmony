import abjad
import baca
import harmony

###############################################################################
##################################### [BB] ####################################
###############################################################################

stage_markup = (
    ("[BB.1-4]", 1),
    ("[◀Y.2]", 5, "darkgreen"),
    ("[BB.5-8]", 7),
)

maker = baca.SegmentMaker(
    activate=[
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *baca.tags.instrument_color_tags(),
        *baca.tags.margin_markup_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[6],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=abjad.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (2, 4), (2, 4), (2, 4), (2, 4), (6, 4), (1, 4),
        (7, 4), (7, 4), (7, 4), (7, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "BB",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "BB",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(7 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(7 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(6 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-seven",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(6 - 1),
        ),
    ),
)

# bfl

maker(
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
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 5)),
        map=baca.runs(),
        selector=baca.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", (7, 10)),
    harmony.sixteenths(
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    ),
    baca.pitch("A4"),
    baca.flat_glissando(
        hide_stem_selector=baca.pleaves()[1:-1],
        selector=baca.leaves()[:-6],
    ),
    baca.hairpin(
        "p < mp >",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "p",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
)

maker(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", (1, 4)),
    harmony.sixteenths(
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=([0],),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.hairpin(
        "p < mp > p p < mp > p",
        pieces=baca.clparts([1]),
        selector=baca.tleaves(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
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

maker(
    ("perc1", (7, 10)),
    harmony.sixteenths(
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_stem_selector=baca.pleaves()[1:-1],
        selector=baca.leaves()[:-6],
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -7]),
    ),
    baca.hairpin(
        "p < mp >",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "p",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
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
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, -22, -1, 2, -21],
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "f >o niente",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (7, 10)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-26, 2],
    ),
    baca.pitch("A4"),
    baca.laissez_vibrer(
        baca.ptails(),
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

maker(
    ("hp", (1, 4)),
    baca.clef("bass"),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("A1"),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
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
        pieces=baca.lparts([1, 1, 1, 2]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        "RH bow + LH bow ...",
        abjad.tweak(5.5).staff_padding,
    ),
)

# va

maker(
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

maker(
    ("va", 5),
    harmony.tessera_4(4),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

maker(
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

maker(
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
        pieces=baca.cmgroups([2, 3]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("vc1", 5),
    harmony.tessera_4(3),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.lparts([2, 3, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.untie(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        baca.pleaves().get([0, -1]),
    ),
    baca.note_head_transparent(
        baca.pleaves()[1:-1],
    ),
)

maker(
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
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="E6",
        harmonic=True,
    ),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

# vc2

maker(
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
        pieces=baca.cmgroups([2, 3]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("vc2", 5),
    harmony.tessera_4(2),
    baca.hairpin(
        "pp -- ! < mp -- ! >o niente",
        pieces=baca.lparts([1, 2, 3, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.untie(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        baca.pleaves().get([0, -1]),
    ),
    baca.pitch(
        "C5",
        baca.pleaves()[1:-1],
    ),
    baca.note_head_transparent(
        baca.pleaves()[1:-1],
    ),
)

maker(
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
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="C#6",
        harmonic=True,
    ),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

# cb1

maker(
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
        map=baca.runs().map(baca.leaves().rleak()),
        pieces=baca.lparts([1, 1 + 1]),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        map=baca.runs(),
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb1", 5),
    harmony.tessera_4(1),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.lparts([2, 3, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.untie(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        baca.pleaves().get([0, -1]),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        baca.pleaves()[1:-1],
    ),
)

maker(
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
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

# cb2

maker(
    ("cb2", (1, 4)),
    harmony.sixteenths(
        [8, 8, 8, 6, 2],
        fuse=True,
        do_not_rewrite_meter=True,
        written_halves=([-2],),
        invisible=([-1],),
    ),
    baca.pitch("A1"),
    baca.flat_glissando(
        hide_middle_stems=True,
        hide_stem_selector=baca.pleaves()[1:-2],
        selector=baca.leaves()[:-1],
    ),
    baca.hairpin(
        "o< ff >o",
        bookend=False,
        pieces=baca.mgroups([3, 2]),
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T4 -> P1 -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.lparts([2, 3]),
        selector=baca.leaves(),
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb2", 5),
    harmony.tessera_4(0),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.lparts([2, 1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.untie(
        baca.leaves(),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        baca.pleaves().get([0, -1]),
        do_not_transpose=True,
    ),
    baca.pitch(
        "C5",
        baca.pleaves()[1:-1],
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        baca.pleaves()[1:-1],
    ),
)

maker(
    ("cb2", (7, 10)),
    harmony.sixteenths(
        [4],
    ),
    baca.clef("bass"),
    baca.flat_glissando(
        "A1",
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o< ff (ff) >o niente",
        pieces=baca.mgroups([2, 1, 2]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T4+ -> O -> T2 -> P1 -> T1 -> P3 -> O -> P1 -> O -> P1 -> T4+",
        abjad.tweak(3).staff_padding,
        bookend=-1,
        pieces=baca.lparts([3, 2, 2, 3, 2, 2, 3, 2, 2, 8]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
)
