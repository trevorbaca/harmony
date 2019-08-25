import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [I] #####################################
###############################################################################

stage_markup = (
    ("[I.1]", 1),
    ("[I.2]", 2),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
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
    baca.rehearsal_mark(
        "I",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths([-4, 8, -99]),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 2),
    harmony.sixteenths([3, 6, 3, 3, 6, 3]),
    baca.dynamic("mp-ancora", abjad.tweak(-0.75).self_alignment_X),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths([2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2]),
    baca.accent(baca.pheads()),
    baca.stem_tremolo(baca.pheads()),
    baca.markup(r"\baca-slate-brush-markup", literal=True),
    baca.dynamic('"f"'),
)

maker(
    ("perc1", 2),
    harmony.sixteenths([2, -2, -4, -4, 2, -2, 2, -2, -4]),
    baca.accent(baca.pheads()),
    baca.accent(baca.pheads()),
    baca.stem_tremolo(baca.pheads()),
)

# perc2

maker(
    ("perc2", 2),
    harmony.sixteenths([3, -6, 3, 3, -6, 3]),
    harmony.bass_drum_staff_position(),
    baca.accent(baca.pheads()),
    baca.markup(r"\baca-bd-sponge-markup", literal=True),
    baca.dynamic("mp"),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths([-4, 8, -99]),
    baca.pitch("<B4 C5>", not_yet_pitched=True),
    baca.flageolet(),
    baca.dynamic("mf"),
    baca.laissez_vibrer(),
)

maker(
    ("hp", 2),
    harmony.sixteenths([-9, 3, -9, 3]),
    baca.staff_position(0, not_yet_pitched=True),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
    baca.markup(r"\baca-pince-markup", literal=True),
    baca.dynamic("f"),
)

# va

maker(
    ("va", 1),
    harmony.sixteenths([-4, 99]),
    baca.staff_position(0, not_yet_pitched=True),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.markup("match harp decay", abjad.tweak(5.5).staff_padding),
    baca.dls_staff_padding(4.5),
)

# vc1

maker(
    ("vc1", 1),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc2

maker(
    ("vc2", 1),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb1

maker(
    ("cb1", 1),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb2

maker(
    ("cb2", 1),
    baca.staff_position(0, not_yet_pitched=True),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths([-4, 8, -99]),
    baca.hairpin(
        "o<| ff",
        selector=baca.tleaves().rleak(),
    ),
    baca.stop_on_string(),
    baca.dls_staff_padding(4.5),
)
