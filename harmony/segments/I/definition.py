import os

import abjad
import baca
import harmony

###############################################################################
##################################### [I] #####################################
###############################################################################

stage_markup = (
    ("[I.1]", 1),
    ("[I.2]", 2),
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
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=2,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "I",
            baca.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "I",
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
    baca.open_volta(baca.skip(1 - 1)),
    baca.double_volta(baca.skip(2 - 1)),
    baca.close_volta(baca.skip(2 - 1), format_slot="after"),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
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
        selector=baca.leaves()[:2].rleak(),
    ),
)

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [3, 6, 3, 3, 6, 3],
    ),
    baca.pitch("Gb3"),
    baca.color_fingerings([0, 1, 2]),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("bfl", (1, 2)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    harmony.sixteenths(
        [2, -2, -4, -4, 2, -2, 2, -2, -4],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
)

maker(
    ("perc1", (1, 2)),
    harmony.slate_staff_position(),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [3, -6, 3, 3, -6, 3],
    ),
    baca.new(
        harmony.bass_drum_staff_position(),
        selector=baca.leaves().rleak(),
    ),
    baca.accent(
        baca.pheads()[:-1],
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-sponge-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(
        right_broken=True,
        selector=baca.pleaves()[-1:].rleak(),
    ),
    baca.stem_tremolo(
        baca.pleaf(-1),
    ),
    baca.dynamic(
        "p",
        selector=baca.pleaf(-1),
    ),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        abjad.tweak(0.25).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
        selector=baca.pleaf(-1)
    ),
)

maker(
    ("perc2", (1, 2)),
    baca.dls_staff_padding(6),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
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
        literal=True,
    ),
)

# va

maker(
    ("va", 1),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.pitch("C#4"),
    baca.flat_glissando(),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    # TODO: predefine markup
    baca.markup(
        "match harp decay",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", 2),
    baca.pitch("C4"),
)

# vc1

maker(
    ("vc1", (1, 2)),
    baca.pitch("B4"),
)

# vc2

maker(
    ("vc2", (1, 2)),
    baca.pitch("Dqs4"),
    baca.markup(
        r"\baca-eleven-a",
        abjad.tweak(1.5).staff_padding,
        literal=True,
    )
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
    baca.pitch("E3"),
    baca.note_head_style_harmonic(),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb1", 2),
    baca.pitch("F3"),
)

# va, vc1, vc2, cb2

maker(
    (["va", "vc1", "vc2", "cb1"], 2),
    harmony.sixteenths(
        [-12, 12, -4],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 4), (3, 4)]),
        extra_counts=[0, 4],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.hairpin(
        "mp >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.new(
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(5.5).staff_padding,
            selector=baca.leaves()[-2:].rleak(),
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            right_broken=True,
            selector=baca.leaves()[-2:].rleak(),
        ),
        match=[0, 1, 2],
    ),
    baca.new(
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.tweak(8).staff_padding,
            selector=baca.leaves()[-2:].rleak(),
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(10.5).staff_padding,
            right_broken=True,
            selector=baca.leaves()[-2:].rleak(),
        ),
        match=[3],
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1).padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb2", 2),
    harmony.sixteenths(
        [-9, 3, -9, 3],
    ),
    baca.clef("treble"),
    baca.pitches(
        "Fqs5 Gqf5",
        do_not_transpose=True,
    ),
    baca.note_head_style_harmonic(),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("ff"),
    baca.pizzicato_spanner(
        abjad.tweak(5.5 + 1).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        baca.markups.string_number(3),
        direction=abjad.Down,
        selector=baca.pheads(),
    ),
    baca.markup(
        r"\baca-thirteen-a",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
    baca.markup(
        r"\baca-fourteen-a",
        abjad.tweak(3).staff_padding,
        literal=True,
        selector=baca.phead(-1),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 1),
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

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
)
