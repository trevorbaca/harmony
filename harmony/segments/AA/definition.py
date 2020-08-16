import abjad
import baca
import harmony

###############################################################################
##################################### [AA] ####################################
###############################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[◀X.6]", 3, "darkgreen"),
    ("[AA.2-3]", 4),
    ("[◀Y.2]", 6, "darkgreen"),
    ("[▶BB.5]", 7, "darkgreen"),
    ("[AA.4]", 9),
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
    fermata_measure_empty_overrides=[2, 8],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (1, 4),
        (5, 4), (7, 4), (6, 4),
        (6, 4), (2, 4), (1, 4),
        (7, 4),
    ],
    transpose_score=True,
    validate_measure_count=9,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "AA",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "AA",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("2.=4", baca.skip(3 - 1)),
    baca.metronome_mark("144", baca.skip(4 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(6 - 1)),
    baca.metronome_mark("48", baca.skip(7 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(9 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(9 - 1)),
)

maker(
    "Global_Skips",
    baca.open_volta(baca.skip(4 - 1)),
    baca.close_volta(baca.skip(6 - 1)),
    baca.not_parts(
        baca.markup(
            r"\harmony-repeat-three",
            abjad.tweak(10).font_size,
            abjad.tweak((0, 17)).extra_offset,
            literal=True,
            selector=baca.skip(4 - 1),
        ),
    ),
    baca.only_parts(
        baca.markup(
            r"\harmony-repeat-three",
            abjad.tweak(4).font_size,
            abjad.tweak((0, 9)).extra_offset,
            literal=True,
            selector=baca.skip(4 - 1),
        ),
    ),
    baca.text_script_extra_offset((1.5, 12)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(8 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-five",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(2 - 1),
        ),
    ),
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-six",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(8 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [-2, 2, 2],
    ),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(10).staff_padding,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("bfl", (4, 5)),
    harmony.appoggiato(
        divisions=[28, 24],
        counts=[9, 6],
        incise=True,
    ),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat,
        selector=baca.plts(grace=True),
    ),
    baca.dynamic(
        "pp-ppp",
        selector=baca.pleaf(0, grace=False),
    ),
    baca.dynamic(
        "pp-ppp",
        measures=5,
        selector=baca.pleaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        lilypond_id=2,
        selector=baca.tleaves(grace=False).rleak(),
    ),
    baca.text_spanner(
        "A =|",
        abjad.tweak(10).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 6),
    harmony.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-10),
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
    ("bfl", 7),
    harmony.sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb4"),
    baca.hairpin(
        "pp < p >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
)

maker(
    ("bfl", 9),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("G3"),
    baca.note_head_style_harmonic(),
    baca.dynamic("ff"),
    baca.markup(
        r"\baca-jet-whistle-markup",
        literal=True,
    ),
)

maker(
    ("bfl", (1, 9)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (4, 5)),
    baca.make_repeat_tied_notes(),
    harmony.brake_drum_staff_position(),
    baca.flat_glissando(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 6),
    harmony.sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    harmony.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(0).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 7),
    harmony.sixteenths(
        [1, -23],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("mf"),
)

maker(
    ("perc1", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.tleaves().rleak().rleak(),
    ),
)

maker(
    ("perc1", 9),
    baca.make_repeat_tied_notes(),
    harmony.brake_drum_staff_position(),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 9)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, -20, 4],
    ),
    baca.staff_position(2),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:2],
    ),
)

maker(
    ("perc2", 3),
    baca.staff_lines(1),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (1, 3)),
    baca.dls_staff_padding(6),
)

maker(
    ("perc2", (4, 5)),
    baca.staff_lines(3),
    harmony.sixteenths(
        [2, "-"],
    ),
    baca.staff_position(2),
    baca.dynamic("ff"),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.new(
        harmony.slate_staff_position(),
        selector=baca.pleaf(0),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(),
    baca.hairpin(
        "f >o niente",
        map=baca.runs()[:1].map(baca.leaves().rleak()),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        abjad.tweak(0).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc2", 7),
    harmony.sixteenths(
        [1, -23],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (6, 7)),
    baca.metric_modulation_spanner(
        abjad.tweak(10.5).staff_padding,
        selector=baca.tleaves().rleak().rleak(),
    ),
)

maker(
    ("perc2", (6, 9)),
    baca.dls_staff_padding(6),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [-24, 4],
    ),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("f-ancora"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-pince-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 3),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic("p"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (4, 5)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("Ab4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-pince-markup",
        abjad.tweak(4).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 6),
    harmony.sixteenths(
        [-12, -2, 1, "-"],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.dynamic("f-ancora"),
)

maker(
    ("hp", 7),
    harmony.sixteenths(
        [1, -23],
    ),
    baca.dynamic("mf"),
)

maker(
    ("hp", (6, 7)),
    baca.pitch("Bb4"),
    baca.snap_pizzicato(
        baca.pheads(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.tleaves().rleak().rleak(),
    ),
)

maker(
    ("hp", (4, 9)),
    baca.dls_staff_padding(4),
)

# va

maker(
    ("va", 1),
    baca.make_notes(),
    baca.pitch("Ab4"),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", 3),
    harmony.sixteenths(
        [6, 3, 11],
    ),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P2 -> P1 -> P3 -> P2",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 4),
    baca.make_notes(),
)

maker(
    ("va", 5),
    baca.skeleton(
        r"c2. c8 \times 5/4 { c2 }",
    ),
    baca.repeat_tie(
        baca.pleaves()[:2],
    ),
    baca.tuplet_bracket_up(),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
        selector=baca.phead(-1),
    ),
)

maker(
    ("va", (4, 5)),
    baca.pitch(
        "Ab4",
        selector=baca.plts()[:-1],
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(5).bound_details__right__padding,
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 6),
    harmony.tessera_4(4),
)

maker(
    ("va", (5, 6)),
    baca.new(
        baca.note_head_style_harmonic_black(),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.stem_tremolo(),
        selector=baca.plts(),
    ),
    baca.dynamic(
        "pp",
        selector=baca.phead(0),
    ),
)

maker(
    ("va", 9),
    baca.make_notes(),
    baca.pitch(
        "Gqf3",
        baca.leaves().rleak(),
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.markup(
        r"\baca-seven-a",
        direction=abjad.Down,
        literal=True,
    ),
)

# vc1

sixteenths = baca.sequence([6, -2, 4, -2, 4, -2, 2, -2])

maker(
    ("vc1", 3),
    harmony.sixteenths(
        [4, 2, 7, 7],
    ),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P2 -> O -> P2 -> P1 -> P3",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        sixteenths[:4] + ["-"],
    )
)

maker(
    ("vc1", 5),
    harmony.sixteenths(
        sixteenths,
    ),
)

maker(
    ("vc1", 6),
    harmony.tessera_4(3),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.tweak(True).to_barline,
        pieces=baca.plts(),
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
    ("vc1", 7),
    baca.note_head_style_harmonic(),
    baca.pitch("C#6"),
    baca.markup(
        r"\baca-string-i",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="E6",
    ),
)

maker(
    ("vc1", 9),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc1", [(4, 5), 9]),
    baca.pitch("G3"),
)

# vc2

maker(
    ("vc2", 3),
    harmony.sixteenths(
        [9, 11],
    ),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "O -> P2 -> P1",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        sixteenths.rotate(-2)[:4] + ["-"],
    ),
)

maker(
    ("vc2", 5),
    harmony.sixteenths(
        sixteenths.rotate(-2),
    ),
)

maker(
    ("vc2", 6),
    harmony.tessera_4(2),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        abjad.tweak(True).to_barline,
        bookend=False,
        pieces=baca.lparts([1, 2, 3, 2]),
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
    ("vc2", 7),
    baca.note_head_style_harmonic(),
    baca.pitch("A5"),
    baca.markup(
        r"\baca-string-i",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="C#6",
    ),
)

maker(
    ("vc2", 9),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        abjad.tweak(3).bound_details__right__padding,
        autodetect_right_padding=False,
    ),
)

maker(
    ("vc2", [(4, 5), 9]),
    baca.pitch("G3"),
)

# cb1

maker(
    ("cb1", 3),
    harmony.sixteenths(
        [4, 9, 7],
    ),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P2 -> O -> P2",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        sixteenths.rotate(-4)[:4] + ["-"],
    ),
)

maker(
    ("cb1", 5),
    harmony.sixteenths(
        sixteenths.rotate(-4),
    ),
)

maker(
    ("cb1", 6),
    harmony.tessera_4(1),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.tweak(True).to_barline,
        bookend=False,
        pieces=baca.lparts([2, 3, 2]),
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
    ("cb1", 7),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
)

maker(
    ("cb1", 9),
    baca.clef("bass"),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", [(4, 5), 9]),
    baca.pitch("Gb2"),
)

# cb2

maker(
    ("cb2", 3),
    harmony.sixteenths(
        [9, 7, 1, -1, 1, -1, 1, -1],
        extra_counts=[0, 0, 0, 0, 2],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.pitch(
        "F#1",
        baca.leaves()[:4],
    ),
    baca.pitch(
        "Gb2",
        baca.plts()[-3:],
    ),
    baca.scp_spanner(
        "P1 -> P2",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves()[:3],
    ),
    baca.accent(
        baca.pheads()[1:3],
    ),
    baca.stem_tremolo(
        baca.plts()[:2],
    ),
    baca.dynamic("f"),
    baca.dynamic(
        "pp",
        selector=baca.phead(2),
    ),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        [2, -2, 6, "-"],
    ),
)

maker(
    ("cb2", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[4:13],
    ),
)

maker(
    ("cb2", 5),
    harmony.sixteenths(
        sixteenths.rotate(-6),
    ),
)

maker(
    ("cb2", (3, 5)),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        abjad.tweak(3).bound_details__right__padding,
        autodetect_right_padding=False,
        selector=baca.leaves()[4:].rleak(),
    ),
)

maker(
    ("cb2", 6),
    harmony.tessera_4(0),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >",
        abjad.tweak(True).to_barline,
        pieces=baca.lparts([2, 1, 1]),
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
    ("cb2", 7),
    harmony.sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([1, 2]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-string-iii",
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("cb2", 9),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", [(4, 5), 9]),
    baca.pitch("Gb2"),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1"], 3),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads()[1:],
    ),
    baca.dynamic("f"),
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["vc1", "vc2", "cb1"], 7),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.hairpin(
        "niente o< mp >o niente o< mp >o niente",
        pieces=baca.lparts([1, 1, 1, 2]),
        selector=baca.leaves().rleak(),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1"], (4, 5)),
    baca.dynamic("pp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        abjad.tweak(3).bound_details__right__padding,
        autodetect_right_padding=False,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 9)),
    baca.dls_staff_padding(4),
)
