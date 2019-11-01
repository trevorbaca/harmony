import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [D] #####################################
###############################################################################

stage_markup = (
    ("[D.1-6]", 1),
    ("[D.7]", 8),
    ("[◀B.6]", 9, "darkgreen"),
    ("[D.8]", 10),

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
    fermata_measure_empty_overrides=[7, 10],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (1, 4),
        (3, 4), (5, 4), (1, 4),
        (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "D",
            baca.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "D",
            baca.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(9 - 1)),
    baca.metronome_mark("8=4", baca.skip(9 - 1)),
    baca.metronome_mark("72", baca.skip(11 - 1)),
    baca.metronome_mark("2=4", baca.skip(11 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(7 - 1)),
    baca.global_fermata("short", baca.rest(10 - 1)),
)

# bfl

maker(
    ("bfl", (1, 6)),
    harmony.tessera_1(
        6,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", 8),
    harmony.tessera_1(
        6,
        advance=72,
        gap=True,
    ),
    baca.pitch("F#3"),
)

maker(
    ("bfl", 9),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.pitch("Ab4"),
    baca.stem_tremolo(
        baca.plts().get([0, 1], 3),
    ),
    baca.hairpin(
        "p <| ff |> p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", 11),
    harmony.tessera_1(
        6,
        advance=72 + 12,
        gap=True,
    ),
    baca.pitch("F#3"),
)

# perc1

maker(
    ("perc1", (1, 6)),
    harmony.phjc(
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    ),
    baca.new(
        baca.staff_positions(
            [0, -2, 0, -2, 0],
            allow_repeats=True,
        ),
        measures=(1, 2),
    ),
    baca.new(
        baca.staff_positions(
            [0, 2, 0, 2, 2],
            allow_repeats=True,
        ),
        measures=(5, 6),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
        measures=5,
    ),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 8),
    harmony.phjc(
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
    ),
    baca.staff_positions(
        [0, -2, 0, -2, 0],
        allow_repeats=True,
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 9),
    harmony.appoggiato(
        counts=[7],
        rest_after=True,
    ),
    baca.staff_position(-2),
)

maker(
    ("perc1", 11),
    harmony.phjc(
        [1, 1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
    ),
    baca.staff_positions(
        [0, -2, 0, 0, -2],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

# perc2

maker(
    ("perc2", 1),
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
    ("perc2", (5, 6)),
    harmony.train(
        [2],
        rest_leaves=[0],
    ),
    baca.staff_position(2),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("perc2", 8),
    harmony.train(
        [2],
        rest_leaves=[0, 1, 2],
    ),
    baca.staff_position(2),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(5),
)

maker(
    ("perc2", 9),
    harmony.sixteenths(
        [4, 4, "-"],
    ),
    baca.staff_position(2),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc2", (8, 9)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.pleaves().rleak(),
    ),
)

maker(
    ("perc2", 11),
    harmony.sixteenths(
        [-6, 6],
    ),
    baca.staff_position(2),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.pleaves().rleak(),
    ),
    baca.dls_staff_padding(5),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(5),
    baca.pitch("C#4"),
)

maker(
    ("hp", 8),
    harmony.tessera_1(
        5,
        advance=72,
    ),
    baca.pitch("C#4"),
)

maker(
    ("hp", 9),
    harmony.sixteenths(
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    ),
    baca.pitch("<G#4 A4 B4>"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "p < ff > p",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(4.5),
)

maker(
    ("hp", 11),
    harmony.tessera_1(
        5,
        advance=72 + 12,
    ),
    baca.pitch("C#4"),
)

# va

maker(
    ("va", (1, 6)),
    harmony.tessera_1(
        4,
        gap=True,
    ),
)

maker(
    ("va", 8),
    harmony.tessera_1(
        4,
        advance=72,
        gap=True,
    ),
)

maker(
    ("va", 9),
    baca.clef("alto"),
    baca.staff_lines(5),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-27 - 21),
        selector=baca.plts(grace=True),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("va", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.tessera_1(
        4,
        advance=72 + 12,
        gap=True,
    ),
)

maker(
    ("va", [(1, 6), 8, 11]),
    harmony.bridge_staff_position(),
)

# vc1

maker(
    ("vc1", (1, 6)),
    harmony.tessera_1(
        3,
        gap=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("vc1", 8),
    harmony.tessera_1(
        3,
        advance=72,
        gap=True,
    ),
)

maker(
    ("vc1", [(1, 8), 11]),
    baca.pitch("F#3"),
)

maker(
    ("vc1", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-19 - 21),
        selector=baca.plts(grace=True),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc1", 11),
    baca.clef("bass"),
    harmony.tessera_1(
        3,
        advance=72 + 12,
        gap=True,
    ),
)

# vc2

maker(
    ("vc2", (1, 6)),
    harmony.tessera_1(
        2,
        gap=True,
    ),
)

maker(
    ("vc2", 8),
    harmony.tessera_1(
        2,
        advance=72,
        gap=True,
    ),
)

maker(
    ("vc2", 9),
    baca.clef("tenor"),
    baca.pitch(
        "Ab3",
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-18 - 21),
        selector=baca.plts(grace=True),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc2", 11),
    harmony.tessera_1(
        2,
        advance=72 + 12,
        gap=True,
    ),
)

maker(
    ("vc2", [(1, 8), 11]),
    baca.pitch("F3"),
)

# vc1, vc2

maker(
    (["vc1", "vc2"], [(1, 6), 8, 11]),
    baca.damp_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves().rleak(grace=False)
    ),
)

# cb1

maker(
    ("cb1", (1, 6)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.tessera_1(1),
)

maker(
    ("cb1", 8),
    harmony.tessera_1(
        1,
        advance=72,
    ),
)

maker(
    ("cb1", 9),
    baca.pitch(
        "Ab3",
        do_not_transpose=True,
        selector=baca.plts(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a_flat.rotate(-32 - 21),
        do_not_transpose=True,
        selector=baca.plts(grace=True),
    ),
    baca.markup(
        r"\baca-arco-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-flat-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("cb1", 11),
    harmony.tessera_1(
        1,
        advance=72 + 12,
    ),
)

maker(
    ("cb1", [(1, 8), 11]),
    baca.pitch(
        "Aqs4",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-pizz-markup",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
    baca.markup(
        r"\harmony-eleven-e",
        abjad.tweak(3.5).staff_padding,
        literal=True,
    ),
    baca.markup(
        baca.markups.string_number(4),
        abjad.tweak(1.5).padding,
        direction=abjad.Down,
    ),
)

# cb2

maker(
    ("cb2", (1, 6)),
    baca.clef("treble"),
    harmony.tessera_1(0),
)

maker(
    ("cb2", 8),
    harmony.tessera_1(
        0,
        advance=72,
    ),
)

maker(
    ("cb2", 9),
    baca.clef("bass"),
    baca.markup(
        r"\baca-arco-markup",
        literal=True,
    ),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.pitch("Ab1"),
)

maker(
    ("cb2", 11),
    baca.clef("treble"),
    harmony.tessera_1(
        0,
        advance=72 + 12,
    ),
)

maker(
    ("cb2", [(1, 8), 11]),
    baca.pitch(
        "F#4",
        do_not_transpose=True,
        ),
    baca.markup(
        r"\baca-pizz-markup",
        literal=True,
    ),
    baca.markup(
        baca.markups.string_number(4),
        abjad.tweak(1.5).padding,
        direction=abjad.Down,
    ),
)

# cb1, cb2

maker(
    (["cb1", "cb2"], [(1, 6), 8, 11]),
    baca.note_head_style_harmonic(),
)

# bfl, hp, va, vc1, vc2, cb1, cb2

maker(
    (["bfl", "hp", "va", "vc1", "vc2", "cb1", "cb2"], [(1, 6), 8, 11]),
    baca.accent(
        baca.pheads(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1"], 9),
    harmony.appoggiato(
        counts=[7],
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 9),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)
