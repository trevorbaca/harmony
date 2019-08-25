import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [G] #####################################
###############################################################################

stage_markup = (
    ("[G.1]", 1),
    ("[▶H.1]", 2, "darkgreen"),
    ("[G.2-3]", 4),
    ("[◀F.3]", 6, "darkgreen"),
    ("[▶I.1]", 7, "darkgreen"),
    ("[G.4]", 8),
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
        (4, 4), (3, 4), (1, 4),
        (4, 4), (4, 4), (5, 4), (6, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "G",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(2 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(4 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("48", baca.skip(5 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("144", baca.skip(6 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(7 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(7 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.flutter_initiated_cells(fill_with_rests=True),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< f >o niente",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
)

maker(
    ("perc1", 4),
    baca.staff_lines(3),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
)

maker(
    ("perc1", 8),
    baca.staff_lines(3),
)

# perc2

maker(
    ("perc2", (1, 2)),
    harmony.sixteenths([-4, 99]),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(0, hide_middle_stems=True),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("p"),
)

maker(
    ("perc2", (4, 5)),
    baca.make_repeat_tied_notes(),
    baca.flat_glissando(0, hide_middle_stems=True),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("p-ancora", abjad.tweak(-0.75).self_alignment_X),
)

# hp

maker(
    ("hp", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.flutter_initiated_cells(
        None, rmakers.tie(baca.pleaf(0)), fill_with_rests=True
    ),
    baca.hairpin(
        'o< "f" >o niente',
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
    harmony.whisk_staff_position(),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 2),
    baca.chunk(
        baca.clef("treble"),
        baca.not_parts(baca.clef_shift("treble")),
    ),
    baca.staff_lines(5),
)

maker(
    ("hp", (4, 5)),
    baca.clef("percussion"),
    baca.staff_lines(1),
#    baca.markup(
#        r"\baca-whisk-markup",
#        abjad.tweak(5.5).staff_padding,
#        literal=True,
#    ),
)

maker(
    ("hp", (5, 6)),
    baca.chunk(
        baca.clef("treble"),
        baca.not_parts(baca.clef_shift("treble")),
    ),
    baca.staff_lines(5),
)

maker(
    ("hp", 8),
    baca.chunk(
        baca.clef("percussion"),
        baca.not_parts(baca.clef_shift("percussion")),
    ),
    baca.staff_lines(1),
#    baca.markup(
#        r"\baca-whisk-markup",
#        abjad.tweak(5.5).staff_padding,
#        literal=True,
#    ),
)

# va

# vc1

# vc2

# cb1

# cb2
