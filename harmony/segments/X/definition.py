import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [X] #####################################
###############################################################################

stage_markup = (
    ("[X.1-3]", 1),
    ("[◀V.6]", 4, "darkgreen"),
    ("[X.4-5]", 5),
    ("[X.6-8]", 7),
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
    parts_metric_modulation_multiplier=(0.525, 0.525),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (4, 4), (3, 4),
        (4, 4), (4, 4), (4, 4), (4, 4), (5, 4),
    ],
    transpose_score=True,
    validate_measure_count=9,
)

maker(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "X",
            baca.skip(2 - 1),
            abjad.tweak((0, 18)).extra_offset,
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "X",
            baca.skip(2 - 1),
            abjad.tweak((0, 10)).extra_offset,
            font_size=4,
        ),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(4 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("48", baca.skip(5 - 1)),
    baca.metronome_mark("4.=4", baca.skip(5 - 1)),
)

# bfl

maker(
    ("bfl", (1, 3)),
    harmony.sixteenths(
        [2, 3, -3],
    ),
    baca.pitch("F5"),
    baca.hairpin(
        "niente o< mf >o",
        pieces=baca.lparts([1, 2 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(9).staff_padding,
        pieces=baca.lparts([1, 2 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("bfl", (5, 9)),
    harmony.sixteenths(
        [2, 2, -2],
    ),
    baca.pitch("F#5"),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(10).staff_padding,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# perc1

maker(
    ("perc1", (1, 3)),
    harmony.sixteenths(
        [5, -3],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 4),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (5, 9)),
    harmony.sixteenths(
        [3, -3],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", (1, 3)),
    harmony.sixteenths(
        [2, -8, 2, -3, 2, -8],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| mf",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 5),
    baca.staff_lines(3),
    harmony.sixteenths(
        [1, "-"],
    ),
    baca.staff_position(2),
    baca.accent(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
)

maker(
    ("perc2", (7, 9)),
    baca.staff_lines(1),
    harmony.sixteenths(
        [16, 16, 16, -4, 2],
        preprocessor=baca.sequence().fuse().split_divisions(
            [(4, 4), (4, 4), (4, 4), (1, 4)],
        ),
        extra_counts=[0, 0, 0, 2],
        denominator=None,
    ),
    baca.new(
        harmony.tam_tam_staff_position(),
        baca.flat_glissando(),
        selector=baca.run(0),
    ),
    baca.staff_position(
        2,
        baca.plts()[-1:],
    ),
    baca.stem_tremolo(
        baca.pheads().get([0, 2]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
    baca.new(
        baca.accent(),
        baca.dynamic("f"),
        selector=baca.pleaf(-1),
    ),
    baca.staff_lines(
        3,
        selector=baca.leaf(-2),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(1).self_alignment_X,
        literal=True,
        selector=baca.leaf(-1),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[-1:].rleak(),
    ),
)

# hp

maker(
    ("hp", (1, 3)),
    harmony.sixteenths(
        [1, -9, 1, -4, 1, -9],
    ),
    baca.pitch("A4"),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic(
        "mf",
        selector=baca.pheads().get([0], 3),
    ),
    baca.dynamic(
        "mp",
        selector=baca.pheads().get([1], 3),
    ),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
)

maker(
    ("hp", (5, 9)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [3, -3],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
    ),
)

# va

maker(
    ("va", (1, 3)),
    baca.clef("alto"),
    baca.pitch("F4"),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "tasto poss. =|",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        alteration="M2",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

maker(
    ("va", (5, 9)),
    harmony.tessera_3(4),
    baca.pitch("F#3"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P3 -> P4 -> P2 -> P3 ->",
        abjad.tweak(5.5).staff_padding,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

# vc1

maker(
    ("vc1", (1, 3)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions(
            [(2, 4), (8, 4), (2, 4)],
        ),
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=([5],),
        invisible=([6],),
        tie=([6],),
    ),
    baca.tuplet_bracket_down(),
    baca.new(
        baca.pitch("F4"),
        baca.triple_staccato(),
        selector=baca.pheads().get([0, 1, 2, -2, -1]),
    ),
    # NOTE: text spanner must currently come before pitched trill spanner
    baca.scp_spanner(
        "tasto poss. =|",
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[5:12],
    ),
    baca.new(
        baca.pitch("F4"),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=baca.lparts([1, 1 + 1]),
        ),
        baca.trill_spanner(
            abjad.tweak(3).staff_padding,
            alteration="M2",
        ),
        map=baca.runs()[1:-1].map(baca.leaves().rleak()),
    ),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        map=baca.leaves().rleak().runs().get([0, -1]),
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("F4"),
    baca.triple_staccato(),
)

maker(
    ("vc1", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[2:],
    ),
)

maker(
    ("vc1", (5, 9)),
    harmony.tessera_3(3),
    baca.clef("bass"),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P3 -> P4 -> P2 -> P3 ->",
        abjad.tweak(5.5).staff_padding,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

# vc2

maker(
    ("vc2", (1, 3)),
    baca.clef("treble"),
    baca.pitch("F4"),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "tasto poss. =|",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        alteration="M2",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    # NOTE: current clef / after-grace contention:
    baca.clef(
        "bass",
        baca.leaf(-1),
    ),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

maker(
    ("vc2", (5, 9)),
    harmony.tessera_3(2),
    baca.pitch("F#2"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P3 -> P4 -> P2 -> P3 ->",
        abjad.tweak(5.5).staff_padding,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

# cb1

maker(
    ("cb1", (1, 3)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions(
            [(2, 4), (8, 4), (2, 4)],
        ),
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=([5],),
        invisible=([6],),
        tie=([6],),
    ),
    baca.tuplet_bracket_down(),
    baca.new(
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.triple_staccato(),
        selector=baca.pheads().get([0, 1, 2, -2, -1]),
    ),
    # NOTE: text spanner must currently come before pitched trill spanner
    baca.scp_spanner(
        "tasto poss. =|",
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[5:12],
    ),
    baca.new(
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=baca.lparts([1, 1 + 1]),
        ),
        baca.trill_spanner(
            abjad.tweak(3).staff_padding,
            alteration="m2",
        ),
        map=baca.runs()[1:-1].map(baca.leaves().rleak()),
    ),
    baca.scp_spanner(
        "P =|",
        abjad.tweak(3).staff_padding,
        map=baca.leaves().rleak().runs().get([0, -1]),
    ),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch(
        "E4",
        do_not_transpose=True,
    ),
    baca.triple_staccato(),
)

maker(
    ("cb1", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[2:],
    ),
)

maker(
    ("cb1", (5, 9)),
    harmony.tessera_3(1),
    baca.clef("bass"),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P3 -> P4 -> P2 -> P3 ->",
        abjad.tweak(5.5).staff_padding,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

# cb2

maker(
    ("cb2", (1, 3)),
    baca.clef("treble"),
    baca.pitch(
        "E4",
        do_not_transpose=True,
    ),
    # NOTE: text spanner must currently lexically precede pitched trill
    baca.scp_spanner(
        "tasto poss. =|",
        abjad.tweak(5.5).staff_padding,
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        alteration="m2",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    # NOTE: current clef / after-grace contention:
    baca.clef(
        "bass",
        baca.leaf(-1),
    ),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

maker(
    ("cb2", (5, 9)),
    harmony.tessera_3(0),
    baca.pitch("F#1"),
    baca.scp_spanner(
        "P1 -> P3 -> P2 -> P4 -> P3 -> P4 -> P2 -> P3 ->",
        abjad.tweak(5.5).staff_padding,
        bookend=-1,
        pieces=baca.plts(),
        selector=baca.leaves(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc2", "cb2"], (1, 3)),
    baca.staff_lines(5),
    harmony.sixteenths(
        [2, 2, -10],
        written_quarters=([0, 1, 4, 5],),
        invisible=([1, 5],),
        tie_runs=True,
    ),
    baca.hairpin(
        "niente o<| mp |>o",
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 9)),
    baca.stem_tremolo(
        baca.pleaves(),
        ),
    baca.chunk(
        baca.accent(
            baca.pheads(),
        ),
        baca.flat_glissando(),
    ),
    baca.dynamic("pp"),
)
