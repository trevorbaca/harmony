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
    fermata_measure_empty_overrides=[3],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (1, 4),
        (4, 4), (5, 4),
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

# bfl

maker(
    ("bfl", 2),
    harmony.sixteenths([-4, 4]),
    baca.trill_spanner(
        map=baca.runs(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 5),
    harmony.sixteenths([4, -4]),
    baca.text_spanner(
        "air =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.dynamic("p"),
)

# perc1

maker(
    ("perc1", 2),
    baca.staff_lines(3),
    harmony.phjc(
        [1], [1, 2, 1, 1, -1],
        rmakers.force_rest(baca.tuplets().get([1], 2)),
        extra_counts=[1, 1, 2, 2],
    ),
    baca.staff_positions([2, -2, 0], allow_repeats=True),
    baca.dynamic("f"),
    baca.dls_staff_padding(9),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 5),
    harmony.sixteenths([4, -4]),
    harmony.brake_drum_staff_position(),
    baca.dynamic("p"),
    baca.markup(r"\baca-brake-drum-paper-towel-markup", literal=True),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(5),
)

maker(
    ("perc2", 2),
    baca.staff_lines(1),
    baca.markup(r"\baca-bd-struck-markup", literal=True),
    harmony.sixteenths([-4, 4]),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mp"),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("perc2", 4),
    baca.staff_lines(5),
)

maker(
    ("perc2", 5),
    baca.staff_lines(1),
    harmony.sixteenths([6, 3, 7, 4]),
    baca.stem_tremolo(baca.pleaves()),
    baca.espressivo(baca.pheads()),
    harmony.bass_drum_staff_position(),
    baca.markup(r"\baca-bd-fingertips-markup", literal=True),
    baca.dynamic("p"),
)

# hp

maker(
    ("hp", 5),
    harmony.sixteenths([-4, 2, -16, 2, "-"], extra_counts=[2]),
    baca.laissez_vibrer(baca.ptails()),
    baca.dynamic("mf"),
    baca.accent(baca.pheads()),
)

# va

maker(
    ("va", 2),
    harmony.sixteenths([-4, 4]),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.dynamic("mp"),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("va", 5),
    harmony.sixteenths([-6, 1, -10, 1, "-"], extra_counts=[1]),
    baca.laissez_vibrer(baca.ptails()),
    baca.note_head_style_harmonic(),
    baca.markup(r"\baca-pizz-markup", literal=True),
    baca.dynamic("mf"),
    baca.accent(baca.pheads()),
)

# vc1

maker(
    ("vc1", 5),
    harmony.sixteenths([3, 7, 4, 6]),
    baca.espressivo(baca.pheads()),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc2

maker(
    ("vc2", 5),
    harmony.sixteenths([7, 4, 6, 3]),
    baca.espressivo(baca.pheads()),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", 5),
    harmony.sixteenths([4, 6, 3, 7]),
    baca.espressivo(baca.pheads()),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

# cb2

maker(
    ("cb2", 5),
    harmony.sixteenths([6, 3, 7, 4]),
    baca.espressivo(baca.pheads()),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths([-4, 3, -1]),
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
