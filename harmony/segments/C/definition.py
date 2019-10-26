import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [C] #####################################
###############################################################################

stage_markup = (
    ("[C.1]", 1),
    ("[▶D.1]", 2, "darkgreen"),
    ("[▶F.3]", 4, "darkgreen"),
    ("[C.2-4]", 6),

)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *abjad.tags.instrument_color_tags(),
        *abjad.tags.margin_markup_color_tags(),
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[3, 5],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (1, 4),
        (5, 4), (1, 4),
        (5, 4), (4, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "C",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("4.=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(5 - 1)),
)

# text

maker(
    ("bfl", 3),
    baca.literal(
        "\\footnote \"(2)\" #'(0 . 0) \\harmony-text-two",
        format_slot="opening",
    ),
)

maker(
    ("perc1", 5),
    baca.literal(
        "\\footnote \"(3)\" #'(0 . 0) \\harmony-text-three",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.pitch("F3"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
    ),
)

maker(
    ("bfl", 2),
    harmony.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", (6, 8)),
    harmony.sixteenths(
        harmony.cerulean[2:],
    ),
    baca.pitch("F3"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    ),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc1", 2),
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
    ("perc1", (6, 8)),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, -2, -1],
    ),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.dynamic("p"),
    baca.new(
        baca.dynamic("f"),
        measures=8,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    ),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc2", 2),
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
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.damp(
        baca.ptail(-1),
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(1).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc2", (6, 8)),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_except=[0, 1, 4, -2, -1],
    ),
    baca.staff_positions(
        [0, 0, -2, 0, -2],
        allow_repeats=True,
    ),
    baca.dynamic("p"),
    baca.new(
        baca.dynamic("f"),
        measures=8,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

# hp

maker(
    ("hp", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, "-"],
    ),
    baca.chunk(
        baca.pitch("G1"),
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
    ("hp", 2),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.pitch("C#4"),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [-2, 2, "-", 2],
    ),
    baca.pitches("F#4 G#4"),
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
    ("hp", (6, 8)),
    baca.clef("bass"),
    harmony.sixteenths(
        [18, -12, 16, -4],
    ),
    baca.chunk(
        baca.pitch("G1"),
        baca.ottava_bassa(),
    ),
    baca.tenuto(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

# va

maker(
    ("va", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
        extra_counts=[2],
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("va", 2),
    harmony.tessera_1(
        4,
        gap=True,
    ),
    baca.staff_position(0),
)

maker(
    ("va", 4),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eb3"),
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
    ("va", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[2:],
        extra_counts=[2],
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

# vc1

maker(
    ("vc1", 1),
    baca.clef("bass"),
    baca.skeleton(
        r"r4 \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
    baca.tuplet_number_text(
        abjad.Markup("5:4"),
        baca.leaf(1),
    ),
    baca.accent(
        baca.pheads(),
    )
)

maker(
    ("vc1", 2),
    harmony.tessera_1(
        3,
        gap=True,
    ),
)

maker(
    ("vc1", (1, 2)),
    baca.pitch("F#3"),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:9],
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("E4"),
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
    ("vc1", (6, 7)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[2:],
        extra_counts=[1],
    ),
    baca.staff_position(
        0,
        baca.leaves().rleak().rleak().rleak().pleaves(),
    ),
    baca.accent(
        baca.leaves().rleak().rleak().rleak().pheads(),
    ),
    baca.stem_tremolo(
        baca.leaves().rleak().rleak().rleak().pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc1", 8),
    baca.skeleton(
        r"\times 4/5 { c16 r8. c16 } \times 4/5 { r8 c8. r16 c8. r16 }",
    ),
    baca.tuplet_number_text(
        abjad.Markup("5:4"),
        baca.leaves(),
    ),
    baca.new(
        baca.clef("bass"),
        baca.clef_extra_offset((-2, 0)),
        baca.clef_x_extent_false(),
        selector=baca.leaf(3),
    ),
    baca.staff_lines(
        5,
        baca.leaf(3),
    ),
    baca.new(
        baca.flag_extra_offset((-2, 0)),
        baca.note_head_extra_offset((-2, 0)),
        baca.script_extra_offset((-2, 0)),
        baca.stem_extra_offset((-2, 0)),
        baca.stem_tremolo_extra_offset((-2, 0)),
        selector=baca.leaf(2),
    ),
    baca.pitch(
        "F#3",
        baca.leaves()[4:],
    ),
    baca.accent(
        baca.leaves()[4:].pheads(),
    ),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        right_broken=True,
        selector=baca.leaves()[4:].rleak(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[4:].rleak(),
    ),
)

maker(
    ("vc1", (6, 8)),
    baca.tuplet_bracket_staff_padding(
        5,
        baca.leaves()[:-5],
    ),
    baca.tuplet_bracket_staff_padding(
        3,
        baca.leaves()[-5:],
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
        ),
)

maker(
    ("vc2", 2),
    harmony.tessera_1(
        2,
        gap=True,
    ),
    baca.pitch("F3"),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
    )
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.pitch("Eqf4"),
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
    ("vc2", (6, 8)),
    harmony.sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F2"),
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

# cb1

maker(
    ("cb1", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[1:],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("sfp"),
)

maker(
    ("cb1", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
    baca.pitch("Aqs4"),
    baca.markup(
        r"\baca-pizz-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.markup(
        r"\harmony-eleven-e",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
)

maker(
    ("cb1", 4),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", (6, 8)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        harmony.cerulean[2:],
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, "-"],
        untie=True,
        after_graces=[1],
    ),
    baca.interpolate_pitches("G2", "F#2"),
    baca.glissando(
        allow_repeats=True,
        hide_middle_note_heads=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb2", 2),
    baca.clef("treble"),
    harmony.tessera_1(0),
    baca.pitch("F#4"),
    baca.markup(
        r"\baca-pizz-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("cb2", 4),
    baca.clef("bass"),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (6, 8)),
    harmony.sixteenths(
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_pitches("G2", "F#2"),
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

# bfl, hp, va, vc1, vc2, cb1, cb2

maker(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1", "cb2"], 2),
    baca.accent(
        baca.pheads(),
    ),
)
