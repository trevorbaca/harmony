import abjad
import baca

from harmony import library as harmony

###############################################################################
##################################### [CC] ####################################
###############################################################################

stage_markup = (("[CC.1-2]", 1),)

maker = baca.SegmentMaker(
    activate=[
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *baca.tags.instrument_color_tags(),
        *baca.tags.margin_markup_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[3],
    final_segment=True,
    parts_metric_modulation_multiplier=(0.525, 0.525),
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4),
        (6, 4),
        (1, 4),
    ],
    transpose_score=True,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "CC",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "CC",
            baca.selectors.skip(1 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
    baca.bar_line("|.", baca.selectors.skip(-1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.selectors.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.selectors.skip(1 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("very_long", baca.selectors.rest(3 - 1)),
)

# text

maker(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-eight",
            abjad.tweak((4, -30)).extra_offset,
            literal=True,
            selector=baca.selectors.skip(3 - 1),
        ),
    ),
)

# bfl

maker(
    ("bfl", 1),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
    ),
)

maker(
    ("bfl", (1, 2)),
    baca.dls_staff_padding(4),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [1, -22, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic("f"),
    baca.new(
        baca.dynamic("mf"),
        baca.damp(),
        selector=baca.selectors.phead(-1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (1, 2)),
    baca.dls_staff_padding(6),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        ["-", 1],
        invisible=[-1],
    ),
    baca.damp(
        baca.selectors.leaf(-1),
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
    baca.snap_pizzicato(),
    baca.dynamic("f"),
)

maker(
    ("hp", (1, 2)),
    baca.dls_staff_padding(4),
)

# va

# vc1

# vc2

# cb1

maker(
    ("cb1", 1),
    baca.pitch(
        "Bb4",
        do_not_transpose=True,
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        alteration="Cb5",
    ),
)

# cb2

maker(
    ("cb2", 1),
    harmony.sixteenths(
        [16, 4, 2, 2],
        written_dotted_wholes=[0],
        invisible=[1, 2, 3],
    ),
    baca.pitch("A1"),
    baca.flat_glissando(
        left_broken=True,
        selector=baca.selectors.leaves((None, 1)),
    ),
    baca.hairpin(
        "ff >o niente",
        left_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.scp_spanner(
        "T1 -> T4+",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        bookend=-1,
        left_broken=True,
        selector=baca.selectors.leaves(),
    ),
)

maker(
    ("cb2", -1),
    baca.not_parts(
        baca.chunk(
            baca.mark(r"\harmony-colophon-markup"),
            baca.rehearsal_mark_down(),
            baca.rehearsal_mark_padding(12),
            baca.rehearsal_mark_self_alignment_x(abjad.Right),
            selector=baca.selectors.rleaf(-1),
        ),
    ),
)

# va, vc1, vc2

maker(
    (["va", "vc1", "vc2"], 1),
    baca.pitch("Bb4"),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        alteration="Cb5",
    ),
)

# va, vc1, vc2, cb1

maker(
    (["bfl", "va", "vc1", "vc2", "cb1"], 1),
    harmony.sixteenths(
        [4, 4, 16],
        tie_all=True,
    ),
    baca.hairpin(
        "pp < p >o niente",
        pieces=lambda _: baca.Selection(_).leaves().rleak().lparts([1, 3]),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(maker)
