import abjad
import baca
import harmony

###############################################################################
##################################### [J] #####################################
###############################################################################

stage_markup = (
    ("[J.1]", 1),
    ("[▶K.1]", 2, "darkgreen"),
    ("[◀I.1]", 3, "darkgreen"),
    ("[J.2-5]", 4),
    ("[◀I.1]", 8, "darkgreen"),
    ("[J.6]", 10),
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
    fermata_measure_empty_overrides=[9],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=baca.Path(__file__).resolve().parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (4, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "J",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "J",
            baca.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.close_volta(baca.skip(2 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("2.=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eight",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(9 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("Eb3"),
    baca.dynamic("mf"),
)

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-2, 4, -2, -4, 4],
    ),
)

maker(
    ("bfl", (1, 2)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[2:8],
    ),
)

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
)

maker(
    ("bfl", (2, 3)),
    baca.pitch("E3"),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[4:9],
    ),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        ["-", 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("F3"),
    baca.dynamic("mf"),
)

maker(
    ("bfl", 8),
    baca.pitch("E3"),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
)

maker(
    ("bfl", (7, 8)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(5.5).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[1:8],
    ),
)

maker(
    ("bfl", 10),
    harmony.appoggiato(
        counts=[9, 0],
        divisions=[12, 12],
        prefix_talea=[-1],
        prefix_counts=[1, 0],
    ),
    baca.pitch(
        "G3",
        baca.leaves(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_g,
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.pleaves(grace=False).partition_by_counts([2, 1]),
    ),
    baca.text_spanner(
        r"\harmony-g-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("bfl", (11, 13)),
    harmony.sixteenths(
        [12],
        written_dotted_wholes=([0], 2),
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=11,
        pieces=baca.lparts([1, 1]),
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        measures=12,
        pieces=baca.lparts([1, 1]),
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=13,
        pieces=baca.lparts([1, 1]),
    ),
)

maker(
    ("bfl", (11, 12)),
    baca.pitch(
        "G4",
        baca.leaves(grace=False),
    ),
)

maker(
    ("bfl", 14),
    harmony.sixteenths(
        [12, 8, 3, 1],
        written_dotted_wholes=([0], 2),
        invisible=([1, 2, 3],)
    ),
    baca.hairpin(
        "o< mp >o niente",
        measures=14,
        pieces=baca.lparts([1, 3]),
    ),
)

maker(
    ("bfl", (13, 14)),
    baca.pitch(
        "G#4",
        baca.leaves(grace=False),
    ),
)

maker(
    ("bfl", 15),
    harmony.appoggiato(
        counts=[9],
        incise=True,
    ),
    baca.pitches(
        "A3",
        baca.leaves(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a.rotate(-9),
        baca.leaves(grace=True),
    ),
    baca.dynamic(
        "p",
        selector=baca.pleaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("bfl", (1, 15)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 2),
    harmony.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.pleaf(1),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
    baca.dynamic(
        '"f"',
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 7),
    harmony.sixteenths(
        ["-", 2, -2, 2, -2],
        extra_counts=[2],
        denominator=None,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
)

maker(
    ("perc1", (3, 8)),
    harmony.slate_staff_position(),
)

maker(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:].rleak(),
    ),
)

maker(
    ("perc1", (10, 14)),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.pheads().get([0, -1]),
    ),
    baca.dynamic("p"),
    baca.hairpin(
        "(p) >o niente",
        measures=14,
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 15)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", (1, 7)),
    baca.make_notes(),
    harmony.bass_drum_staff_position(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.stem_tremolo(
        baca.pheads()[-1],
    ),
)

maker(
    ("perc2", (10, 15)),
    baca.make_notes(),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.flat_glissando(
            right_broken=True,
        ),
        selector=baca.leaves().rleak(),
    ),
    baca.stem_tremolo(
        baca.phead(0),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.9).self_alignment_X,
    ),
)

# hp

maker(
    ("hp", [(2, 8), (10, 12)]),
    baca.make_notes(),
)

maker(
    ("hp", (2, 12)),
    baca.clef("bass"),
    baca.new(
        baca.pitch("F#3"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        measures=(2, 3),
    ),
    baca.new(
        baca.pitch("<F#3 Gb3>"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        measures=(4, 11),
    ),
    baca.new(
        baca.pitch("F#3"),
        measures=12,
    ),
    baca.dynamic("mf"),
    baca.text_spanner(
        "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
        " -> 0 pul. / beat",
        abjad.tweak(3).staff_padding,
        measures=(4, 7),
        pieces=baca.lparts([1, 1, 1, 2]),
        selector=baca.leaves().rleak(),
    ),
    baca.text_spanner(
        "0 pul. / beat -> 8 pul. / beat -> 0 pul. / beat",
        abjad.tweak(3).staff_padding,
        measures=(10, 11),
        pieces=baca.lparts([1, 2]),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "(mf) >o niente",
        measures=12,
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        "RH bow ...",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.markup(
        "RH bow + LH bow ...",
        abjad.tweak(5.5).staff_padding,
        measures=4,
    ),
    baca.markup(
        "(RH bow only)",
        abjad.tweak(5.5).staff_padding,
        measures=12,
    ),
)

maker(
    ("hp", (1, 13)),
    baca.dls_staff_padding(4),
)

# va

maker(
    ("va", 1),
    baca.pitch("C4"),
)

maker(
    ("va", 2),
    baca.clef("treble"),
    baca.pitch("A5"),
    baca.trill_spanner(),
    baca.markup(
        baca.markups.string_number(2),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("va", [3, 8]),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.new(
        baca.clef("alto"),
        match=[0],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", 10),
    harmony.sixteenths(
        [12, 1, 1, 1],
    ),
)

maker(
    ("va", (11, 14)),
    harmony.tuplet([11 * (1,)]),
)

maker(
    ("va", 15),
    baca.make_notes(),
)

maker(
    ("va", (10, 15)),
    baca.untie(
        baca.pleaves(),
    ),
    baca.tuplet_bracket_up(),
    baca.repeat_tie(
        baca.leaf(1),
    ),
    baca.pitches(
        "F#4 D3",
        baca.plts().get([0, -1]),
    ),
    baca.staff_positions(
        [
            0, 2, -1, 1, -2, 1,
            0, 2, -1, 1, -2, 1,

            -1, 1, -2, 0, -3, 0,
            -1, 1, -2, 0, -3, 0,

            -2, 0, -3, -1, -4, -1,
            -2, 0, -3, -1, -4, -1,

            -3, -1, -4, -2, -5, -2,
            -3, -1, -4, -2, -5, -2,

        ],
        baca.plts()[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.mgroups([3, 4]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.mgroups([3, 3]),
        selector=baca.leaves(),
    ),
)

# vc1

maker(
    ("vc1", 1),
    baca.pitch("B4"),
)

maker(
    ("vc1", 2),
    baca.pitch("Gqs6"),
    baca.trill_spanner(),
    baca.markup(
        baca.markups.string_number(2),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("vc1", [3, 8]),
    baca.pitch("B4"),
)

maker(
    ("vc1", (10, 11)),
    harmony.sixteenths(
        [13, 1, 1, 1],
    ),
)

maker(
    ("vc1", (12, 14)),
    harmony.tuplet(
        [10 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("vc1", 15),
    baca.make_notes(),
)

maker(
    ("vc1", (10, 15)),
    baca.untie(
        baca.pleaves(),
    ),
    baca.repeat_tie(
        baca.leaf(1),
    ),
    baca.clef("bass"),
    baca.pitches(
        "F#3 D2",
        baca.plts().get([0, -1]),
    ),
    baca.staff_positions(
        [
            -1, 1, -2, 0, -3, 0,
            -1, 1, -2, 0, -3, 0,

            -2, 0, -3, -1, -4, -1,
            -2, 0, -3, -1, -4, -1,

            -3, -1, -4, -2, -5, -2,
            -3, -1, -4, -2, -5, -2,

            -4, -2, -5, -3, -6, -3,
            -4, -2, -5, -3, -6, -3,

        ],
        baca.plts()[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.mgroups([3, 4]),
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.mgroups([3, 3]),
        selector=baca.leaves(),
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.pitch("Dqs4"),
)

maker(
    ("vc2", 2),
    baca.pitch("F#5"),
    baca.trill_spanner(),
    baca.markup(
        baca.markups.string_number(2),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("vc2", [3, 8]),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.tweak(1.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("vc2", (10, 12)),
    harmony.sixteenths(
        [14, 1, 1, 1],
    ),
)

maker(
    ("vc2", (13, 14)),
    harmony.tuplet(
        [9 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("vc2", 15),
    baca.make_notes(),
)

maker(
    ("vc2", (10, 15)),
    baca.untie(
        baca.pleaves(),
    ),
    baca.repeat_tie(
        baca.leaf(1),
    ),
    baca.clef("bass"),
    baca.pitches(
        "F#3 D2",
        baca.plts().get([0, -1]),
    ),
    baca.staff_positions(
        [
            -1, 1, -2, 0, -3, 0,

            -2, 0, -3, -1, -4, -1,
            -2, 0, -3, -1, -4, -1,

            -3, -1, -4, -2, -5, -2,
            -3, -1, -4, -2, -5, -2,

            -4, -2, -5, -3, -6, -3,
            -4, -2, -5, -3, -6, -3,

        ],
        baca.plts()[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.mgroups([3, 4]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 -> P1 -> T1",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.mgroups([3, 3]),
        selector=baca.leaves(),
    ),
)

# cb1

maker(
    ("cb1", 1),
    baca.pitch("F3"),
)

maker(
    ("cb1", [(2, 8), (10, 15)]),
    baca.make_notes(),
)

maker(
    ("cb1", (2, 12)),
    baca.pitch("F#1"),
    baca.flat_glissando(),
    baca.dynamic("pp"),
    baca.hairpin(
        "(pp) >o niente o< mf >o niente",
        measures=(12, 15),
        pieces=baca.mgroups([1, 1, 3]),
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T1 =| (T1) -> T2 -> T1 -> T3 -> T1 =| (T1) -> P2 -> T3 =|",
        abjad.tweak(3).staff_padding,
        pieces=baca.mgroups([2, 1, 1, 1, 1, 2, 1, 1, 2]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb1", (13, 15)),
    baca.interpolate_pitches("F#2", "D2"),
    baca.glissando(
        hide_middle_note_heads=True,
    ),
    baca.scp_spanner(
        "T4 -> O -> T4",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.mgroups([1, 2]),
        selector=baca.leaves(),
    ),
)

# cb2

maker(
    ("cb2", 2),
    baca.pitch(
        "Dqf6",
        do_not_transpose=True,
    ),
    baca.trill_spanner(),
    baca.markup(
        baca.markups.string_number(2),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb2", [3, 8]),
    baca.new(
        baca.clef("bass"),
        match=[0],
    ),
    baca.pitch("A1"),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb2", (10, 12)),
    harmony.sixteenths(
        [16, 1, 1, 1],
    ),
)

maker(
    ("cb2", (13, 14)),
    harmony.tuplet(
        [7 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("cb2", 15),
    baca.make_notes(),
)

maker(
    ("cb2", (10, 15)),
    baca.repeat_tie(
        baca.leaf(1),
    ),
    baca.tuplet_bracket_up(),
    baca.pitches(
        "F#3 D2",
        baca.plts().get([0, -1]),
    ),
    baca.staff_positions(
        [
            5, 6, 3, 5, 2, 5,

            3, 5, 2, 4, 1, 4,
            3, 5, 2, 4, 1, 4,

            2, 4, 1, 3, 0, 3,
            2, 4, 1, 3, 0, 3,

            1, 3, 0, 2, -1, 2,
            1, 3, 0, 2, -1, 2,

        ],
        baca.plts()[1:-1],
    ),
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.mgroups([3, 4]),
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.scp_spanner(
        "T4 -> P1 -> T4",
        abjad.tweak(8).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        pieces=baca.mgroups([3, 3]),
        selector=baca.leaves(),
    ),
)

# va, vc1, vc2, cb1

maker(
    (["va", "vc1", "vc2", "cb1"], 1),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(5.5).staff_padding,
        ),
        selector=baca.leaves()[:2].rleak(),
        match=[0, 1, 2],
    ),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(10.5).staff_padding,
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[:2].rleak(),
        match=[3],
    ),
    baca.hairpin(
        "mp >o niente",
        selector=baca.leaves()[:2],
    ),
)


# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb2"], 2),
    harmony.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb2"], [3, 8]),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.stop_on_string(
        baca.runs().map(baca.leaves().rleak()[-1]),
    ),
    baca.hairpin(
        "o<| ff",
        selector=baca.tleaves().rleak(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 15)),
    baca.dls_staff_padding(4),
)

maker(
    (["va", "vc1", "vc2", "cb2"], (10, 15)),
    baca.tuplet_bracket_staff_padding(2),
)
