import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [E] #####################################
###############################################################################

stage_markup = (
    ("[▶F.3]", 1, "darkgreen"),
    ("[◀C.4]", 2, "darkgreen"),
    ("[◀D.1]", 3, "darkgreen"),
    ("[E.1-2]", 4),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (3, 4), (3, 4),
        (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=5,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "E",
        baca.skip(4 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("72", baca.skip(3 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(4 - 1)),
)

# bfl

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("bfl", 3),
    harmony.tessera_1(
        6,
        gap=True,
    ),
)

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [1, 1, "-"],
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-jet-whistle-markup",
        literal=True,
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [-3, 1, 1, "-"],
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-jet-whistle-markup",
        literal=True,
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(1).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    ),
    baca.staff_positions(
        [-2, 0, -2, 0, 0],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 3),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
    baca.staff_positions(
        [0, -2, 0, -2, 0],
        allow_repeats=True,
    ),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 5),
    harmony.sixteenths(
        [-3, "+"],
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.pleaves()[1:].rleak(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-triangle-small-beater-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, 4, "-", 1],
    ),
    baca.staff_lines(
        1,
        baca.leaf(2),
    ),
    baca.accent(
        baca.pheads()[:2],
    ),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.accent(),
        baca.damp(),
        baca.dynamic("mf"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.tweak(1).self_alignment_X,
            literal=True,
        ),
        selector=baca.pleaf(-1),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.runs()[:1].rleak(),
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    ),
    baca.staff_positions(
        [-2, 0, 0, -2, 0],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc2", 3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    ),
    baca.staff_positions(
        [0, -2, 0, -2, 0],
        allow_repeats=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc2", 4),
    baca.staff_lines(1),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        [-3, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.pleaves()[1:].rleak(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
        ),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [-2, 2, "-", 2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
)

maker(
    ("hp", 2),
    baca.clef("bass"),
    baca.clef_whiteout(2),
    harmony.sixteenths(
        [10, -2],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

maker(
    ("hp", 3),
    baca.clef("treble"),
    harmony.tessera_1(5),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [4, 4, 8],
        fuse=True,
        do_not_rewrite_meter=True,
        after_graces=[1],
    ),
    baca.staff_positions(
        [0, -4, 4, -5, 5, -6, 6, -7, 7],
        mock=True,
    ),
    baca.glissando(),
    baca.hairpin(
        '"f" >o niente',
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-tuning-key-glissando-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(6.5),
)

maker(
    ("hp", 5),
    harmony.sixteenths(
        ["-", 12, -8],
    ),
    baca.damp(
        baca.runs()[:1].rleak(),
    ),
)

# va

maker(
    ("va", 1),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("va", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("va", 3),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-4, 3, -1, 3, -1, 3, -1],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        [3, -1, 3, -1, "-"],
    ),
)

maker(
    ("va", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[1:12],
    ),
)

maker(
    ("va", 5),
    harmony.sixteenths(
        [6, -2, -8, 6, -2],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -3, 1, -2, 3, -1, 3, -1],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (2, 4)]),
        extra_counts=[1, 2],
        denominator=None,
    ),
    baca.new(
        baca.staff_position(0),
        baca.stem_tremolo(),
        selector=baca.pleaves()[:2],
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.new(
        baca.flag_extra_offset((-2, 0)),
        baca.note_head_extra_offset((-2, 0)),
        baca.script_extra_offset((-2, 0)),
        baca.stem_extra_offset((-2, 0)),
        baca.stem_tremolo_extra_offset((-2, 0)),
        selector=baca.leaf(2),
    ),
    baca.new(
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        baca.staff_lines(5),
        selector=baca.leaf(3),
    ),
)

maker(
    ("vc1", 3),
    harmony.tessera_1(
        3,
        gap=True,
    ),
)

maker(
    ("vc1", (2, 3)),
    baca.accent(
        baca.pheads()[2:],
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[4:11],
    ),
)

maker(
    ("vc1", (4, 5)),
    harmony.sixteenths(
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    ),
    baca.staff_positions(
        [0, 1, -2, 3, 2, 3, 0, 5, 4, 5, 2, 7, 6, 7],
        mock=True,
        ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
)

# vc2

maker(
    ("vc2", 1),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc2", 2),
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(0, 1, mock=True),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.runs(),
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("vc2", 3),
    harmony.tessera_1(
        2,
        gap=True,
    ),
)

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths(
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    ),
    baca.staff_positions(
        [0, -1, 2, -3, -2, -3, 0, -5, -4, -5, -2, -7, -6, -7],
        mock=True,
        ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.flat_glissando(),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("cb1", 3),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
    baca.markup(
        r"\baca-pizz-markup",
        literal=True,
    ),
)

maker(
    ("cb1", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        [15, 1, 1, 1, 6, 1, 1, 1, 12, 1, 1, 1, "+"],
    ),
    baca.staff_positions(
        [0, 1, -2, 3, 2, 3, 0, 5, 4, 5, 2, 7, 6, 7],
        mock=True,
        ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.flat_glissando(),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", 2),
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(0, 1, mock=True),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.runs(),
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb2", 3),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.markup(
        r"\baca-pizz-markup",
        literal=True,
    ),
)

maker(
    ("cb2", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        [11, 1, 1, 1, 11, 1, 1, 1, 7, 1, 1, 1, "+"],
    ),
    baca.staff_positions(
        [1, 0, 1, -2, -1, -2, -1, -4, -3, -4, -1, -6, -5, -6],
        mock=True,
        ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
)

# va, vc1, vc2, cb2, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.hairpin(
        '! o<| "f" |>o niente',
        pieces=baca.cmgroups(),
        selector=baca.leaves().rleak(),
    ),
    baca.half_clt_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.dls_staff_padding(5.5),
)
