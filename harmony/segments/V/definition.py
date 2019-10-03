import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [V] #####################################
###############################################################################

stage_markup = (
    ("[V.1]", 1),
    ("[◀T.1]", 4, "darkgreen"),
    ("[V.4-5]", 5),
    ("[V.6]", 12),
    ("[◀T.2]", 13, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[11],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (3, 4), (3, 4), (4, 4),
        (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (3, 4), (1, 4),
        (3, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "V",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(4 - 1)),
    baca.metronome_mark("8=4", baca.skip(4 - 1)),
    baca.metronome_mark("72", baca.skip(5 - 1)),
    baca.metronome_mark("2=4", baca.skip(5 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("8=4", baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(11 - 1)),
)

# bfl

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", (5, 10)),
    harmony.sixteenths(
        [2, 2],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
    ),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.clparts([1]),
        selector=baca.leaves(),
    ),
    baca.dynamic("niente", selector=baca.leaves().rleak()[-1]),
)

# perc1

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    harmony.triangle_staff_position(),
    # TODO: make stem tremolo work with duration multipliers:
    ###baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< pp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(9.25).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", (5, 10)),
    baca.make_notes(),
    baca.flat_glissando(hide_middle_stems=True),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.tweak(9.25).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 12),
    baca.make_notes(),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("pp-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# perc2

maker(
    ("perc2", 3),
    harmony.sixteenths([-4, 4, -4]),
    harmony.tam_tam_staff_position(),
    baca.dynamic("p"),
    baca.laissez_vibrer(baca.pheads()),
    baca.accent(baca.pheads()),
    baca.markup(r"\baca-tam-tam-markup", literal=True),
)

maker(
    ("perc2", (5, 10)),
    harmony.sixteenths([4, -8]),
    harmony.tam_tam_staff_position(),
    baca.dynamic("p-sempre", abjad.tweak(-0.75).self_alignment_X),
    baca.laissez_vibrer(baca.pheads()),
    baca.accent(baca.pheads()),
    baca.markup(r"\baca-tam-tam-markup", literal=True),
)

# hp

maker(
    ("hp", 3),
    harmony.sixteenths([-4, 4, -4]),
    baca.clef("bass"),
    baca.staff_position(-6, mock=True),
    baca.dynamic("p"),
    baca.laissez_vibrer(baca.pheads()),
    baca.accent(baca.pheads()),
)

maker(
    ("hp", (5, 10)),
    harmony.sixteenths([4, -8]),
    baca.staff_position(-6, mock=True),
    baca.dynamic("p-sempre", abjad.tweak(-0.75).self_alignment_X),
    baca.laissez_vibrer(baca.pheads()),
    baca.accent(baca.pheads()),
)

# va

maker(
    ("va", (1, 3)),
    harmony.sixteenths([32], extra_counts=[1], grace_suffixes=[1]),
    baca.staff_positions([2, -2, 4], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("va", (5, 10)),
    harmony.sixteenths(
        [18, 13, 9, 6, 3, 2, 2, 2, 2, 2, 3, 3, 6, 99],
        extra_counts=[1],
        grace_suffixes=[1],
    ),
    baca.staff_positions([2, -2], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 3)),
        selector=baca.leaves(),
    ),
)

maker(
    ("va", 12),
    harmony.sixteenths(
        [99],
        grace_suffixes=[1],
    ),
    baca.staff_positions([2, -2], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

# vc1

maker(
    ("vc1", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    baca.note_head_style_harmonic(),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc1", (5, 10)),
    harmony.sixteenths(
        [2, 2],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
    ),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.clparts([1]),
        selector=baca.leaves(),
    ),
    baca.dynamic("niente", selector=baca.leaves().rleak()[-1]),
)

# vc2

maker(
    ("vc2", (1, 3)),
    harmony.eighths([23], [1], grace_suffixes=[1]),
    baca.staff_positions([2, -2, 4], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("vc2", (5, 10)),
    harmony.eighths(
        [9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, 99],
        [1],
        grace_suffixes=[1],
    ),
    baca.staff_positions([2, -2], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 3)),
        selector=baca.leaves(),
    ),
)

maker(
    ("vc2", 12),
    harmony.sixteenths(
        [99],
        grace_suffixes=[1],
    ),
    baca.staff_positions([2, -2], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

# cb1

maker(
    ("cb1", 3),
    harmony.sixteenths(
        [-4, 2, 2, -4],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    baca.note_head_style_harmonic(),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        map=baca.runs(),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb1", (5, 10)),
    harmony.sixteenths(
        [2, 2],
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.written_duration((1, 4)),
        rmakers.unbeam(),
    ),
    baca.trill_spanner(
        None,
        abjad.tweak(3).staff_padding,
    ),
    baca.hairpin(
        "niente o< mp >o",
        pieces=baca.clparts([1]),
        selector=baca.leaves(),
    ),
    baca.dynamic("niente", selector=baca.leaves().rleak()[-1]),
)

# cb2

maker(
    ("cb2", (1, 3)),
    harmony.sixteenths([27], grace_suffixes=[1]),
    baca.staff_positions([2, -2, 4], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
)

maker(
    ("cb2", (5, 10)),
    harmony.sixteenths(
        [9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, 99],
        grace_suffixes=[1],
    ),
    baca.staff_positions([2, -2], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "o< ff >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 3)),
        selector=baca.leaves(),
    ),
)

maker(
    ("cb2", 12),
    harmony.sixteenths(
        [99],
        grace_suffixes=[1],
    ),
    baca.staff_positions([2, -2], mock=True),
    # TODO: use multistage glissando
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    baca.staff_lines(1),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 13),
    baca.staff_lines(1),
)
