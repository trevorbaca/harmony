import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [A] #####################################
###############################################################################

stage_markup = (
    ("[A.1]", 1),
    ("[A.2]", 3),
    ("[C.1]", 9, "darkgreen"),
    )

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
        ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (1, 4),
        (3, 4), (4, 4), (3, 4), (4, 4), (3, 4), (4, 4),
        (2, 4), (1, 4),
        ],
    transpose_score=True,
    validate_measure_count=10,
    )

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "A",
        abjad.tweak((0, 9)).extra_offset,
        selector=baca.skip(3 - 1),
        ),
    )

maker(
    "Global_Skips",
    baca.metronome_mark(
        "96",
        selector=baca.skip(1 - 1),
        ),
    baca.metronome_mark(
        "57.6",
        selector=baca.skip(9 - 1),
        ),
    baca.metronome_mark(
        "4=3:5(4)",
        selector=baca.leaf(9 - 1),
        ),
    )

maker(
    "Global_Rests",
    baca.global_fermata(
        "fermata",
        selector=baca.leaf(2 - 1),
        ),
    baca.global_fermata(
        "short",
        selector=baca.leaf(10 - 1),
        ),
    )

# bfl

maker(
    "bfl",
    baca.suite(
        harmony.margin_markup("Bfl."),
        baca.start_markup(
            r"\harmony-bass-flute-markup",
            literal=True,
            ),
        ),
    )

maker(
    ("bfl", 1),
    harmony.bfl_transition_rhythm(),
)

maker(
    ("bfl", (3, 8)),
    harmony.bfl_transition_rhythm(
        rmakers.SilenceMask(
            selector=baca.tuplets()[abjad.index([2], 3)],
        ),
        rotation=-1,
    ),
)

# perc1

maker(
    "perc1",
    baca.suite(
        harmony.margin_markup("Perc. I"),
        baca.start_markup(
            r"\harmony-percussion-i-markup",
            literal=True,
            ),
        ),
    )

# perc2

maker(
    "perc2",
    baca.dls_staff_padding(6),
    baca.markup(
        r'\baca-bd-superball-markup',
        abjad.tweak(0).parent_alignment_X,
        abjad.tweak(0).self_alignment_X,
        literal=True,
        ),
    baca.suite(
        harmony.margin_markup("Perc. II"),
        baca.start_markup(
            r"\harmony-percussion-ii-markup",
            literal=True,
            ),
        ),
    harmony.superball_style(),
    )

maker(
    ("perc2", 1),
    baca.hairpin(
        'o<| f',
        selector=baca.leaves()[-2:],
        ),
    baca.staff_lines(1),
    harmony.upbeat_attack()
    )

maker(
    ("perc2", [1, 3, 4, 5, 7, 8]),
    baca.breathe(),
    )

maker(
    ("perc2", (1, 8)),
    baca.invisible_music(
        selector=baca.pleaves(exclude=abjad.const.HIDDEN)[
            abjad.index([1], period=2)],
        ),
    baca.set_duration_multiplier(
        selector=baca.pleaves(exclude=abjad.const.HIDDEN),
        written_duration=(1, 4),
        ),
    )

maker(
    ("perc2", [3, 4, 5, 7, 8]),
    baca.hairpin(
        'o<| mf',
        selector=baca.leaves()[:1].rleak(),
        ),
    baca.hairpin(
        'o<| f',
        selector=baca.leaves()[-2:],
        ),
    baca.laissez_vibrer(),
    )

maker(
    ("perc2", (3, 8)),
    harmony.begin_end_rhythm(
        rmakers.SilenceMask(
            selector=baca.tuplet(3),
        ),
    ),
)

# hp

maker(
    "hp",
    baca.suite(
        harmony.margin_markup("Hp."),
        baca.start_markup(
            r"\harmony-harp-markup",
            literal=True,
            ),
        ),
    )

# vc

maker(
    "va",
    baca.suite(
        harmony.margin_markup("Va."),
        baca.start_markup(
            r"\harmony-viola-markup",
            literal=True,
            ),
        ),
    )

# vc1

maker(
    "vc1",
    baca.suite(
        harmony.margin_markup("Vc. I"),
        baca.start_markup(
            r"\harmony-cello-i-markup",
            literal=True,
            ),
        ),
    )

# vc2

maker(
    "vc2",
    baca.suite(
        harmony.margin_markup("Vc. II"),
        baca.start_markup(
            r"\harmony-cello-ii-markup",
            literal=True,
            ),
        ),
    )

# cb1

maker(
    "cb1",
    baca.suite(
        harmony.margin_markup("Cb. I"),
        baca.start_markup(
            r"\harmony-contrabass-i-markup",
            literal=True,
            ),
        ),
    )

# cb2

maker(
    "cb2",
    baca.suite(
        harmony.margin_markup("Cb. II"),
        baca.start_markup(
            r"\harmony-contrabass-ii-markup",
            literal=True,
            ),
        ),
    )
