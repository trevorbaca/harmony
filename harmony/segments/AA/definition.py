import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [AA] ####################################
###############################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[◀X.6]", 3, "darkgreen"),
    ("[AA.2-3]", 4),
    ("[◀Y.2]", 6, "darkgreen"),
    ("[▶CC.1]", 7, "darkgreen"),
    ("[AA.4]", 13),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[2, 12],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (1, 4),
        (7, 4), (7, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (7, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "AA",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("2.=4", baca.skip(3 - 1)),
    baca.metronome_mark("144", baca.skip(4 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(6 - 1)),
    baca.metronome_mark("72", baca.skip(7 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("8=4", baca.skip(13 - 1)),
)

maker(
    "Global_Skips",
    baca.open_volta(baca.skip(4 - 1)),
    baca.close_volta(baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(12 - 1)),
)

# bfl

maker(
    ("bfl", (4, 5)),
    harmony.appoggiato(divisions=[28, 24], counts=[9, 6]),
    baca.text_spanner(
        "air =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 13),
    harmony.sixteenths([4, "-"]),
    baca.markup(r"\baca-jet-whistle-markup", literal=True),
)

# perc1

maker(
    ("perc1", (4, 5)),
    baca.make_repeat_tied_notes(),
    harmony.brake_drum_staff_position(),
    baca.markup(r"\baca-brake-drum-paper-towel-markup", literal=True),
    baca.dynamic("p"),
)

maker(
    ("perc1", 13),
    baca.make_repeat_tied_notes(),
    harmony.brake_drum_staff_position(),
    baca.markup(r"\baca-brake-drum-paper-towel-markup", literal=True),
    baca.dynamic("p"),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.sixteenths([4, -20, 4]),
    baca.accent(baca.pheads()),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
    baca.dynamic("f"),
)

maker(
    ("perc2", (4, 5)),
    harmony.sixteenths(
       [2],
       beam=True,
       fuse=True,
       do_not_rewrite_meter=True,
    ),
    baca.accent(baca.pheads()),
)

maker(
    ("perc2", 6),
    baca.staff_lines(1),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths([-24, 4]),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
    baca.markup(r"\baca-pince-markup", literal=True),
    baca.dynamic("mp"),
)

maker(
    ("hp", (4, 5)),
    harmony.sixteenths([4, "-"]),
    baca.accent(baca.pheads()),
    baca.laissez_vibrer(baca.ptails()),
    baca.markup(r"\baca-pince-markup", literal=True),
    baca.dynamic("mp"),
)

# va

maker(
    ("va", 1),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("va", (4, 5)),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("va", 13),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

# vc1

maker(
    ("vc1", 4),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], stop=4),
)

maker(
    ("vc1", 5),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2]),
)

maker(
    ("vc1", 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.make_notes(),
    baca.staff_position(0),
    baca.dynamic("p"),
)

# vc2

maker(
    ("vc2", 4),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], r=-2, stop=4),
)

maker(
    ("vc2", 5),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], r=-2),
)

maker(
    ("vc2", 13),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", 4),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], r=-4, stop=4),
)

maker(
    ("cb1", 5),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], r=-4),
)

maker(
    ("cb1", 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.make_notes(),
    baca.staff_position(0),
    baca.dynamic("p"),
)

# cb2

maker(
    ("cb2", 4),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], r=-6, stop=4),
)

maker(
    ("cb2", 5),
    harmony.sixteenths([6, -2, 4, -2, 4, -2, 2, -2], r=-6),
)

maker(
    ("cb2", 13),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)
