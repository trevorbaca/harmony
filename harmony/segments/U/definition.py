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
    baca.rehearsal_mark(
        "U",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
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
    ("bfl", 3),
    baca.literal(
        "\\footnote \"(23)\" #'(0 . 0) \\harmony-text-twenty-three",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-4, 4],
    ),
    baca.dynamic("mp"),
    baca.trill_spanner(
        map=baca.run(0),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        map=baca.run(1),
    ),
)

maker(
    ("bfl", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.triple_staccato(
        baca.cmgroups().map(baca.leaves().get([0, -1])),
    ),
    baca.espressivo(
        baca.pheads(),
    ),
    baca.dynamic("mp"),
    baca.text_spanner(
        "mph =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [4, -4],
    ),
    baca.dynamic("p"),
    baca.text_spanner(
        "air =|",
        abjad.tweak(3).staff_padding,
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
    baca.staff_positions(
        [2, -2, 0],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
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
        [4, -4, 4, -4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (5, 4)]),
        extra_counts=[0, -8],
        denominator=None,
    ),
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
        [-4, 4, -12, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (4, 4)]),
        extra_counts=[0, 4],
        denominator=None,
    ),
    baca.flageolet(
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
        selector=baca.leaves()[-1:].rleak(),
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
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
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

# vc1

maker(
    ("vc1", 1),
    baca.clef("bass"),
)

maker(
    ("vc1", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
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
        abjad.tweak(3).staff_padding,
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("bass"),
)

maker(
    ("vc2", [1, 4]),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "slow bow =|",
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

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
)

maker(
    ("cb1", [1, 4]),
    harmony.sixteenths(
        [4],
    ),
    baca.triple_staccato(
        baca.pheads(),
    ),
    baca.dynamic("p"),
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
        abjad.tweak(3).staff_padding,
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
)

maker(
    ("cb2", [1, 4]),
    baca.make_notes(),
    baca.scp_spanner(
        "scp =|",
        abjad.tweak(3).staff_padding,
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
