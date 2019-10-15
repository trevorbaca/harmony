import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [P] #####################################
###############################################################################

stage_markup = (
    ("[P.1-6]", 1),
    ("[◀O.4]", 8, "darkgreen"),
    ("[P.7-8]", 9),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[7],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (1, 4),
        (3, 4), (3, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "P",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(7 - 1)),
)

# bfl

maker(
    ("bfl", (1, 6)),
    harmony.sixteenths(
        [3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4],
    ),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        ["+"],
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
    ),
    baca.dynamic("p"),
)

maker(
    ("bfl", (9, 10)),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", (1, 6)),
    harmony.sixteenths(
        [41, -7, "+"],
    ),
    baca.flat_glissando(
        hide_stem_selector=baca.pleaves()[1:-2],
        selector=baca.run(0),
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
        selector=baca.run(1),
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (9, 10)),
    harmony.sixteenths(
        [21, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.flat_glissando(
        do_not_hide_middle_note_heads=True,
    ),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", (1, 6)),
    baca.clef("bass"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [21, -14, 18, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(baca.pheads()),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

maker(
    ("perc2", (9, 10)),
    harmony.sixteenths(
        [21, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

# hp

maker(
    ("hp", (1, 6)),
    baca.clef("bass"),
    harmony.sixteenths(
        [21, -14, 18, "-"],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

maker(
    ("hp", 8),
    baca.clef("treble"),
    harmony.tuplet(
        [(-4, 1)],
    ),
    baca.staff_position(
        [-1, 0],
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

maker(
    ("hp", (9, 10)),
    baca.clef("bass"),
    harmony.sixteenths(
        [21, "-"],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

# va

maker(
    ("va", (1, 6)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4],
        after_graces=[2, 4, 5],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

maker(
    ("va", 8),
    harmony.sixteenths(
        ["+"],
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.95).self_alignment_X,
    ),
)

maker(
    ("va", (9, 10)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 3, -1],
        after_graces=[2, 4, 5],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

# vc1

maker(
    ("vc1", (1, 6)),
    harmony.sixteenths([3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4]),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("vc1", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.hairpin(
        "f <| fff",
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("vc1", (9, 10)),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

# vc2

maker(
    ("vc2", (1, 6)),
    harmony.sixteenths(
        [3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("vc2", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.hairpin(
        "f <| fff",
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("vc2", (9, 10)),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

# cb1

maker(
    ("cb1", (1, 6)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4],
        after_graces=[4, 5, 2],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

maker(
    ("cb1", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.hairpin(
        "f <| fff",
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("cb1", (9, 10)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 3, -1],
        after_graces=[4, 5, 2],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

# cb2

maker(
    ("cb2", (1, 6)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4],
        after_graces=[5, 2, 4],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

maker(
    ("cb2", 8),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.hairpin(
        "f <| fff",
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("cb2", (9, 10)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 3, -1],
        after_graces=[5, 2, 4],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)
