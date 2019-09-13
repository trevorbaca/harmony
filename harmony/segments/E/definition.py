import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [E] #####################################
###############################################################################

stage_markup = (
    ("[▶F.3]", 1, "darkgreen"),
    ("[◀C.4]", 2, "darkgreen"),
    ("[◀D.1]", 3, "darkgreen"),
    ("[E.1-2]", 4),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (3, 4), (4, 4),
        (6, 4), (6, 4),
    ],
    transpose_score=True,
    validate_measure_count=5,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "E",
        baca.skip(4 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("4.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("72", baca.skip(3 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(4 - 1)),
)

# bfl

maker(
    ("bfl", 4),
    harmony.train([1, 1, -99], rewrite_meter=True),
    baca.markup(r"\baca-jet-whistle-markup", literal=True),
    baca.dynamic("f"),
)

maker(
    ("bfl", 5),
    harmony.train([-3, 1, -99], rewrite_meter=True),
    baca.markup(r"\baca-jet-whistle-markup", literal=True),
    baca.dynamic("f-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(1),
)

maker(
    ("perc1", 2),
    baca.staff_lines(3),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 5),
    harmony.train([-3, 99], rewrite_meter=True),
    baca.markup(r"\baca-triangle-small-beater-markup", literal=True),
    harmony.triangle_staff_position(),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("p"),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(1),
)

maker(
    ("perc2", 2),
    baca.staff_lines(3),
)

maker(
    ("perc2", 4),
    baca.staff_lines(1),
)

maker(
    ("perc2", 5),
    harmony.train([-3, 99], rewrite_meter=True),
    baca.markup(r"\baca-tam-tam-markup", literal=True),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("p"),
)

# hp

maker(
    ("hp", (4, 5)),
    harmony.sixteenths(
        [4, 4, 8],
        do_not_rewrite_meter=True,
        preprocessor=baca.sequence().fuse(),
    ),
    baca.markup(
        r"\baca-tuning-key-glissando-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.staff_positions([0, -4, 4, -5, 5, -6, 6, -7, 7], not_yet_pitched=True),
    baca.glissando(),
    baca.articulation("prall", baca.pheads().get([1, 2], 3)),
    baca.hairpin('"f" >o niente', selector=baca.leaves().rleak()),
    baca.dls_staff_padding(6.5),
)

# va

maker(
    ("va", 1),
    baca.clef("alto"),
    baca.staff_lines(5),
)

maker(
    ("va", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("va", (4, 5)),
    baca.clef("alto"),
    baca.staff_lines(5),
    harmony.sixteenths([12, 1, 1, 1, 8, 1, 1, 1, 4, 1, 1, 1, 99]),
    baca.staff_positions(
        [0, 1, -2, 3, 2, 3, 0, 5, 4, 5, 2, 7, 6, 7],
        not_yet_pitched=True,
        ),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# vc1

maker(
    ("vc1", 2),
    baca.staff_lines(1),
)

maker(
    ("vc1", 3),
    baca.staff_lines(5),
)

maker(
    ("vc1", (4, 5)),
    harmony.sixteenths([14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, 99]),
    baca.staff_positions(
        [0, 1, -2, 3, 2, 3, 0, 5, 4, 5, 2, 7, 6, 7],
        not_yet_pitched=True,
        ),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# vc2

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths([14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, 99]),
    baca.staff_positions(
        [0, -1, 2, -3, -2, -3, 0, -5, -4, -5, -2, -7, -6, -7],
        not_yet_pitched=True,
        ),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# cb1

maker(
    ("cb1", 1),
    baca.clef("bass"),
)

maker(
    ("cb1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("cb1", 3),
    baca.clef("treble"),
    baca.staff_lines(5),
)

maker(
    ("cb1", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths([15, 1, 1, 1, 6, 1, 1, 1, 12, 1, 1, 1, 99]),
    baca.staff_positions(
        [0, 1, -2, 3, 2, 3, 0, 5, 4, 5, 2, 7, 6, 7],
        not_yet_pitched=True,
        ),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# cb2

maker(
    ("cb2", 1),
    baca.clef("bass"),
)

maker(
    ("cb2", 2),
    baca.clef("treble"),
)

maker(
    ("cb2", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths([11, 1, 1, 1, 11, 1, 1, 1, 7, 1, 1, 1, 99]),
    baca.staff_positions(
        [0, -1, 2, -3, -2, -3, 0, -5, -4, -5, -2, -7, -6, -7],
        not_yet_pitched=True,
        ),
    baca.untie(baca.pleaves()),
    baca.glissando(allow_repeats=True),
)

# va, vc1, vc2, cb2, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.half_clt_spanner(
        abjad.tweak(5.5).staff_padding,
    ),
    baca.hairpin(
        '! o<| "f" |>o niente',
        pieces=baca.cmgroups(),
        selector=baca.leaves().rleak(),
    ),
    baca.dls_staff_padding(5.5),
)
