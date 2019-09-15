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
    ("[A.2]", 2),
    ("[▶C.1]", 3, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (5, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=3,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "A",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.chunk(
        baca.bar_line_x_extent((-1, 3), baca.skip(0)),
        baca.only_score(
            baca.bar_line_x_extent((-2, 2), baca.skip(-1), after=True)
        ),
        baca.volta(),
        measures=(2, 3),
    ),
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(3 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(3 - 1)),
)

# bfl

maker(
    "bfl",
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Bfl."),
        baca.start_markup(
            r"\harmony-bass-flute-markup",
            literal=True,
        ),
    ),
)

maker(
    ("bfl", (1, 2)),
    harmony.appoggiato([4, 2, 3, 3, 2], [9, 6, 8, 4, 6]),
    baca.pitches(
        "D3 E3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=False),
        not_yet_pitched=True,
    ),
    baca.pitches(
        "F3 G3 A3 G3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=True),
        not_yet_pitched=True,
    ),
)

# perc1

maker(
    "perc1",
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(0).parent_alignment_X,
        abjad.tweak(0).self_alignment_X,
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.suite(
        harmony.margin_markup("Perc. I"),
        baca.start_markup(
            r"\harmony-percussion-i-markup",
            literal=True,
        ),
    ),
    baca.clef("percussion"),
)

maker(
    ("perc1", 1),
    baca.staff_lines(1),
    baca.hairpin(
        "o<| f",
        selector=baca.leaves()[-2:],
    ),
    harmony.upbeat_quarter_note()
)

maker(
    ("perc1", (1, 2)),
    baca.invisible_music(baca.pleaves(exclude=abjad.const.HIDDEN).get([1], 2)),
    harmony.bass_drum_staff_position(),
)

maker(
    ("perc1", 2),
    harmony.begin_end_quarter_notes(),
    baca.hairpin(
        "o<| mf",
        selector=baca.leaves()[:1].rleak(),
    ),
    baca.hairpin(
        "o<| f",
        selector=baca.leaves()[-2:],
    ),
    baca.laissez_vibrer(),
)

maker(
    ("perc1", [1, 2]),
    baca.breathe(),
)

maker(
    ("perc1", 3),
    baca.staff_lines(3),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

# perc2

maker(
    "perc2",
    baca.suite(
        harmony.margin_markup("Perc. II"),
        baca.start_markup(
            r"\harmony-percussion-ii-markup",
            literal=True,
        ),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.tweak(9.5).staff_padding,
        literal=True,
    ),
    baca.clef("percussion"),
)

maker(
    ("perc2", (1, 2)),
    harmony.quarter_initiated_cells([18, 6, 10, 4, 6]),
    baca.staff_lines(1),
    harmony.slate_staff_position(),
    baca.circle_bow_spanner(
        None,
        abjad.tweak(5.5).staff_padding,
        map=baca.plts(),
    ),
)

maker(
    ("perc2", 3),
    baca.staff_lines(3),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
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

maker(
    ("hp", (1, 2)),
    harmony.quarter_initiated_cells([18, 6, 10, 4, 6]),
    baca.staff_lines(1),
    harmony.whisk_staff_position(),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 3),
    baca.staff_lines(5),
)

# va

maker(
    "va",
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Va."),
        baca.start_markup(
            r"\harmony-viola-markup",
            literal=True,
        ),
    ),
)

maker(
    ("va", (1, 2)),
    harmony.appoggiato([4, 2, 3, 3, 2]),
    baca.damp_spanner(
        abjad.tweak(8).staff_padding,
        map=baca.plts(),
    ),
)

maker(
    ("va", 3),
    baca.staff_lines(1),
)

# vc1

maker(
    "vc1",
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Vc. I"),
        baca.start_markup(
            r"\harmony-cello-i-markup",
            literal=True,
        ),
    ),
)

maker(
    ("vc1", 1),
    baca.skeleton(r"r4 \times 5/3 { c4 c2 }"),
)

maker(
    ("vc1", 2),
    baca.skeleton(r"\times 5/3 { c4 c4 c4 }"),
)

maker(
    ("vc1", (1, 2)),
    baca.staff_position(0, not_yet_pitched=True),
    baca.dynamic("p"),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
)

maker(
    ("vc1", 3),
    baca.staff_lines(1),
)

# vc2

maker(
    "vc2",
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Vc. II"),
        baca.start_markup(
            r"\harmony-cello-ii-markup",
            literal=True,
        ),
    ),
)

maker(
    ("vc2", (1, 2)),
    harmony.appoggiato([4, 2, 3, 3, 2]),
    baca.staff_position(0, not_yet_pitched=True),
    baca.damp_spanner(
        abjad.tweak(8).staff_padding,
        map=baca.plts(),
    ),
)

# cb1

maker(
    "cb1",
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Cb. I"),
        baca.start_markup(
            r"\harmony-contrabass-i-markup",
            literal=True,
        ),
    ),
)

maker(
    ("cb1", (1, 2)),
    harmony.sixteenths([18, 6, 10, 4, 6]), 
    baca.staff_position(0, not_yet_pitched=True),
    baca.dynamic("p"),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
)

maker(
    ("cb1", 3),
    baca.staff_lines(1),
)

# cb2

maker(
    "cb2",
    baca.staff_lines(5),
    baca.suite(
        harmony.margin_markup("Cb. II"),
        baca.start_markup(
            r"\harmony-contrabass-ii-markup",
            literal=True,
        ),
    ),
)

maker(
    ("cb2", (1, 2)),
    harmony.appoggiato([4, 2, 3, 3, 2]),
    baca.staff_position(0, not_yet_pitched=True),
    baca.damp_spanner(
        abjad.tweak(8).staff_padding,
        map=baca.plts(),
    ),
)
