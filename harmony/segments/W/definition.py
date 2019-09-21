import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [W] #####################################
###############################################################################

stage_markup = (
    ("[W.1]", 1),
    ("[▶Y.1]", 2, "darkgreen"),
    ("[W.2-3]", 4),
    ("[W.4]", 6),
    ("[◀V.6]", 7, "darkgreen"),
    ("[◀T.3]", 8, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (6, 4), (1, 4),
        (5, 4), (5, 4), (6, 4), (3, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "W",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("72", baca.skip(7 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("8=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# bfl

maker(
    ("bfl", (4, 6)),
    harmony.sixteenths([4]),
    baca.triple_staccato(baca.cmgroups().map(baca.leaves().get([0, -1]))),
    baca.dynamic("mp"),
    baca.espressivo(baca.pheads()),
    baca.text_spanner(
        "mph =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths([-16, 4]),
    harmony.bass_drum_staff_position(),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
    baca.markup(r"\baca-bd-struck-markup", literal=True),
    baca.dynamic("mp"),
)

maker(
    ("perc1", (4, 6)),
    harmony.sixteenths([4, -12, 4, 4, -12, 4, 4, -16, 4]),
    harmony.bass_drum_staff_position(),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
    baca.markup(r"\baca-bd-struck-markup", literal=True),
    baca.dynamic("mp"),
)

# perc2

maker(
    ("perc2", 6),
    baca.staff_lines(5),
    harmony.sixteenths([4, -99]),
    baca.markup(r"\baca-glockenspiel-markup", literal=True),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("perc2", 7),
    baca.staff_lines(1),
)

# hp

maker(
    ("hp", 6),
    harmony.sixteenths([4, -99]),
    baca.markup(r"\baca-xyl-markup", literal=True),
    baca.laissez_vibrer(baca.ptails()),
)

# va

maker(
    ("va", 1),
    harmony.sixteenths([4, -99]),
    baca.triple_staccato(baca.pheads()),
    baca.dynamic("ff"),
)

maker(
    ("va", (4, 6)),
    harmony.sixteenths([4]),
    baca.triple_staccato(baca.pheads()),
    baca.dynamic("p"),
)

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths([4, -99]),
    baca.triple_staccato(baca.pheads()),
    baca.dynamic("ff"),
)

maker(
    ("vc1", (4, 6)),
    harmony.sixteenths([4]),
    baca.triple_staccato(baca.pheads()),
    baca.dynamic("p"),
)

# vc2

maker(
    ("vc2", 6),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "slow bow =|",
        abjad.tweak(3).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", 1),
    harmony.sixteenths([4, -99]),
    baca.triple_staccato(baca.pheads()),
    baca.dynamic("ff"),
)

maker(
    ("cb1", 6),
    harmony.sixteenths([4]),
    baca.triple_staccato(baca.pheads()),
    baca.dynamic("p"),
)

# cb2

maker(
    ("cb2", 6),
    baca.make_notes(),
    baca.scp_spanner(
        "scp =|",
        abjad.tweak(3).staff_padding,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.staff_lines(1),
)
