import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [U] #####################################
###############################################################################

stage_markup = (
    ("[▶W.4]", 1, "darkgreen"),
    ("[U.1]", 2),
    ("[▶W.4]", 4, "darkgreen"),
    ("[U.2]", 5),
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
    fermata_measure_empty_overrides=[3],
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (4, 4), (1, 4),
        (6, 4), (5, 4),
    ],
    transpose_score=True,
    validate_measure_count=5,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "U",
            baca.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "U",
            baca.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.open_volta(baca.skip(1 - 1)),
    baca.close_volta(baca.skip(4 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.skip(3 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-4, 4],
    ),
    baca.pitch("E5"),
    baca.dynamic("mp"),
    baca.trill_spanner(
        alteration="m2",
        map=baca.run(0),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="m2",
        map=baca.run(1),
    ),
)

maker(
    ("bfl", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("<B3 Dqf4>"),
    baca.markup(
        baca.levine_multiphonic(42),
        match=[0],
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [4, -4],
    ),
    baca.pitch("E5"),
    baca.dynamic("p"),
    baca.text_spanner(
        "air =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [4, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    ),
    harmony.purpleheart_staff_positions([2, -2, 0]),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.dls_staff_padding(9),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, -4, 4, -4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (5, 4)]),
        extra_counts=[0, -8],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.new(
        harmony.bass_drum_staff_position(),
        selector=baca.pleaf(0),
    ),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
    ),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.dynamic("p"),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            literal=True,
        ),
        selector=baca.pleaf(1),
    ),
)

maker(
    ("perc1", 5),
    harmony.sixteenths(
        [4, -4],
    ),
    harmony.brake_drum_staff_position(),
)

maker(
    ("perc1", (4, 5)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:],
    ),
)

# perc2

maker(
    ("perc2", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, -8, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (5, 4)]),
        extra_counts=[0, -8],
        denominator=None,
    ),
    baca.pitch(
        "E4",
        baca.plt(0),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        harmony.bass_drum_staff_position(),
        baca.accent(),
        baca.dynamic("mp"),
        baca.markup(
            r"\baca-bd-struck-markup",
            literal=True,
        ),
        selector=baca.pleaf(-1),
    ),
)

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [-4, 4],
    ),
    harmony.bass_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("perc2", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:],
    ),
)

maker(
    ("perc2", 4),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [6, 3, 7, 4],
    ),
    harmony.bass_drum_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        literal=True,
    ),
)

# hp

maker(
    ("hp", [1, 4]),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("E4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-xyl-markup",
        literal=True,
    ),
)

maker(
    ("hp", 5),
    harmony.sixteenths(
        [-12, 4, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (4, 4)]),
        extra_counts=[0, 4],
        denominator=None,
    ),
    baca.pitches("F5 E5 Eb5"),
    baca.double_flageolet(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mf"),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[-3:].rleak(),
    ),
)

# va

maker(
    ("va", 1),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
    ),
)

maker(
    ("va", 2),
    harmony.sixteenths(
        [-4, 4],
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("va", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("E4"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "P -> T",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 5),
    harmony.sixteenths(
        [-6, 1, -10, 1, "-"],
        extra_counts=[1],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.note_head_style_harmonic(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pizz-markup",
        literal=True,
    ),
)

maker(
    ("va", [2, 5]),
    baca.pitch("Bb3"),
)

# vc1

maker(
    ("vc1", [1, 4]),
    harmony.sixteenths(
        [-8, 4, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(2, 4), (4, 4)]),
        extra_counts=[0, -4],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.clef("bass"),
    baca.pitch("E2"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.tleaves(),
    ),
)

maker(
    ("vc1", 5),
    harmony.sixteenths(
        [3, 7, 4, 6],
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("vc1", [2, 5]),
    baca.clef("treble"),
    baca.pitch("Aqf4"),
    baca.markup(
        r"\baca-eleven-e-flat",
        literal=True,
    ),
)

# vc2

maker(
    ("vc2", [1, 4]),
    baca.make_notes(),
    baca.clef("bass"),
    baca.pitch("Dqf3"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", 5),
    harmony.sixteenths(
        [7, 4, 6, 3],
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", [2, 5]),
    baca.clef("treble"),
    baca.pitch("F4"),
)

# cb1

maker(
    ("cb1", [1, 4]),
    harmony.sixteenths(
        [-8, 4, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(2, 4), (4, 4)]),
        extra_counts=[0, -4],
        denominator=None,
    ),
    baca.tuplet_bracket_down(),
    baca.clef("bass"),
    baca.pitch("E1"),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.scp_spanner(
        "T -> P",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.tleaves(),
    ),
)

maker(
    ("cb1", 5),
    harmony.sixteenths(
        [4, 6, 3, 7],
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(5.5).staff_padding,
    ),
)

maker(
    ("cb1", [2, 5]),
    baca.clef("treble"),
    baca.pitch("Dtqf4"),
    baca.markup(
        r"\baca-seven-e-flat",
        literal=True,
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
)

maker(
    ("cb2", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.pitch("E1"),
    baca.flat_glissando(),
    baca.scp_spanner(
        "O -> T",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", 5),
    harmony.sixteenths(
        [6, 3, 7, 4],
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", [2, 5]),
    baca.pitch("Eb2"),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
        [-4, 3, -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)
