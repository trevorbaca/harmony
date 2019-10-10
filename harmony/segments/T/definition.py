import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [T] #####################################
###############################################################################

stage_markup = (
    ("[▶U.1]", 1, "darkgreen"),
    ("[▶V.3]", 2, "darkgreen"),
    ("[T.1-8]", 3),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (3, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "T",
        baca.skip(3 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        [-4, 4],
    ),
    baca.trill_spanner(
        map=baca.run(0),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        map=baca.run(1),
    ),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", (3, 10)),
    harmony.sixteenths([-8, 8, -16, 4], extra_counts=[1]),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# perc1

maker(
    ("perc1", 1),
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
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< pp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(9.25).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (3, 10)),
    harmony.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
    harmony.slate_staff_position(),
)

# perc2

maker(
    ("perc2", 1),
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
        ),
    harmony.sixteenths(
        [-4, 4],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mp"),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [-4, 4, -4],
    ),
    harmony.tam_tam_staff_position(),
    baca.dynamic("p"),
    baca.laissez_vibrer(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

maker(
    ("perc2", (3, 10)),
    harmony.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    harmony.slate_staff_position(),
)

# hp

maker(
    ("hp", 2),
    harmony.sixteenths(
        [-4, 4, -4],
    ),
    baca.clef("bass"),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.dynamic("p"),
    baca.laissez_vibrer(
        baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("hp", (3, 10)),
    baca.clef("treble"),
    harmony.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        literal=True,
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

# va

maker(
    ("va", 1),
    baca.clef("alto"),
    harmony.sixteenths(
        [-4, 4],
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.dynamic("mp"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("va", 2),
    harmony.sixteenths(
        [2, "+"],
        extra_counts=[1],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2, 4],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("va", (3, 10)),
    harmony.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
    ),
)

# vc1

maker(
    ("vc1", 1),
    baca.clef("bass"),
)

maker(
    ("vc1", 2),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc1", (3, 10)),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.clef("bass"),
)

maker(
    ("vc2", 2),
    harmony.sixteenths(
        [10, "+"],
        extra_counts=[2],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2, 4],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("vc2", (3, 10)),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
)

maker(
    ("cb1", 2),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb1", (3, 10)),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
)

maker(
    ("cb2", 2),
    harmony.sixteenths(
        [3, "+"],
        after_graces=[1],
    ),
    baca.staff_positions(
        [2, -2, 4],
        mock=True,
    ),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("cb2", (3, 10)),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        [-4, 3, -1],
    ),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (3, 10)),
    baca.staff_lines(1),
    baca.clef("percussion"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.staff_position(0),
)
