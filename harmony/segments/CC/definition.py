import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [CC] ####################################
###############################################################################

stage_markup = (
    ("[CC.1-2]", 1),
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
    final_segment=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (6, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=3,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "CC",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.bar_line("|.", baca.skip(-1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("very_long", baca.rest(3 - 1)),
)

# text

maker(
    ("bfl", 2),
    baca.literal(
        "\\footnote \"(32)\" #'(0 . 0) \\harmony-text-thirty-two",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 1),
    baca.pitch("Bb4"),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [1, -22, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.dynamic(
        "mp",
        selector=baca.phead(-1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(),
    baca.dynamic(
        "mp",
        selector=baca.pheads(),
    ),
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
    ),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [1, "-"],
    ),
    baca.clef("treble"),
    baca.pitch("Bb4"),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-soundboard-pizz-markup",
        literal=True,
    ),
)

# va

# vc1

# vc2

# cb1

# cb2

# va, vc1, vc2, cb1, cb2

maker(
    (["bfl", "va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        [4, 4, 16],
        written_halves=([0, 1, 3, 4],),
        invisible=([1, 4],),
        tie_all=True,
    ),
    baca.hairpin(
        "pp < p > pp",
        pieces=baca.lparts([1, 1 + 1]),
    ),
)

maker(
    (["bfl", "vc1", "vc2", "cb1"], 1),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        left_broken=True,
    ),
)

maker(
    (["va", "cb2"], 1),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
    ),
)

maker(
    ("cb2", -1),
    baca.chunk(
        baca.mark(r"\harmony-colophon-markup"),
        baca.rehearsal_mark_down(),
        baca.rehearsal_mark_padding(12),
        baca.rehearsal_mark_self_alignment_x(abjad.Right),
        selector=baca.leaves().rleak()[-1],
    ),
)
