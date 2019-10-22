import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [J] #####################################
###############################################################################

stage_markup = (
    ("[J.1]", 1),
    ("[▶K.1]", 2, "darkgreen"),
    ("[◀I.1]", 3, "darkgreen"),
    ("[J.2-5]", 4),
    ("[◀I.1]", 8, "darkgreen"),
    ("[J.6]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    deactivate=[
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
    ],
    fermata_measure_empty_overrides=[9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (4, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "J",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.close_volta(baca.skip(2 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(3 - 1)),
    baca.metronome_mark("8=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("2.=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(8 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("2.=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# text

maker(
    ("bfl", 9),
    baca.literal(
        "\\footnote \"(8)\" #'(0 . 0) \\harmony-text-eight",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [-2, 4, -2, -4, 4],
    ),
)

maker(
    ("bfl", (1, 2)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[2:8],
    ),
)

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
)

maker(
    ("bfl", (2, 3)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[4:9],
    ),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        ["-", 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
)

maker(
    ("bfl", (7, 8)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[1:8],
    ),
)

maker(
    ("bfl", 10),
    harmony.appoggiato(
        counts=[9, 0],
        divisions=[12, 12],
        prefix_talea=[-1],
        prefix_counts=[1, 0],
    ),
    baca.pitches(
        "D3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=False),
        mock=True,
    ),
    baca.pitches(
        "G3 A3 B3 A3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=True),
        mock=True,
    ),
    baca.hairpin(
        "o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.pleaves(grace=False).partition_by_counts([2, 1]),
    ),
)

maker(
    ("bfl", (11, 13)),
    harmony.sixteenths(
        [12],
        written_dotted_wholes=([0], 2),
        invisible_pairs=True,
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=11,
        pieces=baca.lparts([1, 1]),
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        measures=12,
        pieces=baca.lparts([1, 1]),
    ),
    baca.hairpin(
        "o< mf >o",
        forbid_al_niente_to_bar_line=True,
        measures=13,
        pieces=baca.lparts([1, 1]),
    ),
)

maker(
    ("bfl", 14),
    harmony.sixteenths(
        [12, 8, 3, 1],
        written_dotted_wholes=([0], 2),
        invisible=([1, 2, 3],)
    ),
    baca.hairpin(
        "o< mp >o niente",
        measures=14,
        pieces=baca.lparts([1, 3]),
    ),
)

maker(
    ("bfl", 15),
    harmony.appoggiato(
        counts=[9],
        incise=True,
        rest_after=True,
    ),
    baca.pitches(
        "D3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=False),
        mock=True,
    ),
    baca.pitches(
        "G3 A3 B3 A3",
        selector=baca.plts(exclude=abjad.const.HIDDEN, grace=True),
        mock=True,
    ),
    baca.dynamic(
        "f",
        selector=baca.rest(1),
    ),
)

# perc1

maker(
    ("perc1", 2),
    harmony.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.pleaf(1),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
    baca.dynamic('"f"'),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 7),
    harmony.sixteenths(
        ["-", 2, -2, 2, -2],
        extra_counts=[2],
        denominator=None,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
)

maker(
    ("perc1", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:].rleak(),
    ),
)

maker(
    ("perc1", (10, 14)),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.pheads().get([0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", (1, 7)),
    baca.make_notes(),
    harmony.bass_drum_staff_position(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.stem_tremolo(
        baca.pheads().get([0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        literal=True,
    ),
)

maker(
    ("perc2", (10, 15)),
    baca.make_notes(),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.flat_glissando(
            right_broken=True,
        ),
        selector=baca.leaves().rleak(),
    ),
    baca.stem_tremolo(
        baca.phead(0),
    ),
    baca.dynamic("p"),
)

# hp

maker(
    ("hp", [(2, 8), (10, 12)]),
    baca.make_notes(),
)

maker(
    ("hp", (2, 12)),
    baca.clef("bass"),
    baca.flat_glissando(
        "F#3",
        hide_middle_stems=True,
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-bow-markup",
        literal=True,
    ),
)

# va

maker(
    ("va", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\harmony-match-harp-decay",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dls_staff_padding(4.5),
)

maker(
    ("va", 8),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dls_staff_padding(4.5),
)

maker(
    ("va", 10),
    harmony.sixteenths(
        [12, 1, 1, 1],
    ),
)

maker(
    ("va", (11, 14)),
    harmony.tuplet([11 * (1,)]),
)

maker(
    ("va", 15),
    baca.make_notes(),
)

maker(
    ("va", (10, 15)),
    baca.staff_positions(
        [1, 4, 2, 5],
        mock=True,
    ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.hairpin(
        "mp >o niente",
        measures=15,
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

# vc1

maker(
    ("vc1", (10, 11)),
    harmony.sixteenths(
        [13, 1, 1, 1],
    ),
)

maker(
    ("vc1", (12, 14)),
    harmony.tuplet(
        [10 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("vc1", 15),
    baca.make_notes(),
)

maker(
    ("vc1", (10, 15)),
    baca.staff_positions(
        [1, 4, 2, 5],
        mock=True,
    ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.hairpin(
        "mp >o niente",
        measures=15,
        selector=baca.leaves().rleak(),
    ),
)

# vc2

maker(
    ("vc2", (10, 12)),
    harmony.sixteenths(
        [14, 1, 1, 1],
    ),
)

maker(
    ("vc2", (13, 14)),
    harmony.tuplet(
        [9 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("vc2", 15),
    baca.make_notes(),
)

maker(
    ("vc2", (10, 15)),
    baca.staff_positions(
        [1, 4, 2, 5],
        mock=True,
    ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.hairpin(
        "mp >o niente",
        measures=15,
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

# cb1

maker(
    ("cb1", (10, 12)),
    harmony.sixteenths(
        [15, 1, 1, 1],
    ),
)

maker(
    ("cb1", (13, 14)),
    harmony.tuplet(
        [8 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("cb1", 15),
    baca.make_notes(),
)

maker(
    ("cb1", (10, 15)),
    baca.staff_positions(
        [1, 4, 2, 5],
        mock=True,
    ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.hairpin(
        "mp >o niente",
        measures=15,
        selector=baca.leaves().rleak(),
    ),
)

# cb2

maker(
    ("cb2", (10, 12)),
    harmony.sixteenths(
        [16, 1, 1, 1],
    ),
)

maker(
    ("cb2", (13, 14)),
    harmony.tuplet(
        [7 * (1,)],
        denominator=(1, 4),
    ),
)

maker(
    ("cb2", 15),
    baca.make_notes(),
)

maker(
    ("cb2", (10, 15)),
    baca.staff_positions(
        [1, 4, 2, 5],
        mock=True,
    ),
    baca.untie(
        baca.pleaves(),
    ),
    baca.glissando(
        allow_repeats=True,
    ),
    baca.hairpin(
        "mp >o niente",
        measures=15,
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

# va, vc1, vc2, cb1

maker(
    (["va", "vc1", "vc2", "cb1"], 1),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:2].rleak(),
    ),
)


# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| mp |>o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(
        alteration="M2",
        harmonic=True,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], [3, 8]),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.stop_on_string(
        baca.runs().map(baca.leaves().rleak()[-1]),
    ),
    baca.hairpin(
        "o<| ff",
        selector=baca.tleaves().rleak(),
    ),
    baca.dls_staff_padding(4.5),
)
