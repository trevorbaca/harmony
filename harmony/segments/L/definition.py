import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [L] #####################################
###############################################################################

stage_markup = (
    ("[L.1]", 1),
    ("[▶M.1]", 2, "darkgreen"),
    ("[L.2-3]", 3),
    ("[◀J.6]", 10, "darkgreen"),
    ("[L.4-5]", 11),
    ("[L.6-8]", 13),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        abjad.const.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (5, 4),
        (3, 4), (5, 4), (3, 4), (5, 4), (3, 4), (5, 4), (1, 4),
        (6, 4),
        (3, 4), (4, 4),
        (3, 4), (3, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "L",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("144", baca.skip(2 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(3 - 1)),
    baca.metronome_mark("4.=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("2=4", baca.skip(10 - 1)),
    baca.metronome_mark("96", baca.skip(11 - 1)),
    baca.metronome_mark("8=4", baca.skip(11 - 1)),
)

maker(
    "Global_Skips",
    baca.volta(measures=(11, 12)),
    baca.volta(measures=(13, 15)),

    baca.only_mol(
        baca.bar_line_x_extent((0, 3), baca.skip(11 - 1)),
    ),
    baca.only_mol(
        baca.bar_line_x_extent((0, 4), baca.skip(13 - 1)),
    ),
    baca.only_mol(
        baca.bar_line_x_extent((0, 2), baca.skip(15 - 1), after=True),
    ),

)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.durata([4, -99]),
    baca.text_spanner(
        "multiphonic =|",
        abjad.tweak(5.5).staff_padding,
        bookend=False,
    ),
)

maker(
    ("bfl", (3, 8)),
    harmony.durata([6, -10]),
    baca.text_spanner(
        "multiphonic =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", (11, 12)),
    harmony.durata([2, 4, 2, 6]),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.clparts([2]),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.breathe(baca.pleaves().get([1, 3])),
)

maker(
    ("bfl", (13, 15)),
    harmony.durata([3, 3, 3, 3, 3, 5]),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.clparts([4]),
        pieces=baca.lparts([2, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.breathe(baca.cmgroups([1]).map(baca.pleaf(-1))),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(5),
    harmony.durata([4, -99]),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(3),
)

maker(
    ("perc1", (3, 8)),
    baca.staff_lines(5),
    harmony.durata([6, 8, -2]),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("perc1", 10),
    baca.staff_lines(1),
)

maker(
    ("perc1", (11, 12)),
    harmony.begin_quarter_notes(),
    baca.invisible_music(baca.pleaves(exclude=abjad.const.HIDDEN).get([1], 2)),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", [13, 15]),
    harmony.begin_quarter_notes(),
    baca.invisible_music(baca.pleaves(exclude=abjad.const.HIDDEN).get([1], 2)),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
    ),
)

# perc2

maker(
    ("perc2", 1),
    harmony.durata([4, -99]),
    harmony.tam_tam_staff_position(),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(3),
)

maker(
    ("perc2", (3, 8)),
    baca.staff_lines(1),
    harmony.tam_tam_staff_position(),
    harmony.durata([-6, 8, -2]),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.laissez_vibrer(baca.ptails()),
    baca.laissez_vibrer_tie_up(baca.pleaves()),
)

maker(
    ("perc2", (11, 12)),
    harmony.durata([1, -1]),
    harmony.brake_drum_staff_position(),
    baca.accent(baca.pheads()),
    baca.dynamic("f"),
    baca.markup(r"\baca-brake-drum-markup", literal=True),
)

maker(
    ("perc2", (13, 15)),
    harmony.durata([3, -3, 3, -3, 3, -5]),
    harmony.slate_staff_position(),
    baca.dynamic("mf"),
    baca.markup(r"\baca-slate-scrape-markup", literal=True),
)

# hp

maker(
    ("hp", 1),
    harmony.durata([4, -99]),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (3, 8)),
    harmony.durata([6, 8, -2]),
    baca.laissez_vibrer(baca.ptails()),
)

maker(
    ("hp", (11, 12)),
    harmony.durata([1, -1]),
    baca.accent(baca.pheads()),
    baca.dynamic("f"),
    baca.markup(r"\baca-soundboard-pizz-markup", literal=True),
)

maker(
    ("hp", (13, 15)),
    harmony.durata([3, -3, 3, -3, 3, -5]),
    baca.dynamic("mf"),
    baca.markup(r"\baca-whisk-markup", literal=True),
)

# va

maker(
    ("va", (3, 8)),
    harmony.rimbalzandi(
        None,
        rmakers.force_rest(
            baca.leaves().exclude([6, 9, 11, 14, 16, 19, 21, 22, 23])
        ),
    ),
)

maker(
    ("va", (13, 15)),
    harmony.sixteenths([8, 3, 6]),
)

# vc1

maker(
    ("vc1", (3, 8)),
    harmony.rimbalzandi(
        [1],
        rmakers.force_rest(
            baca.leaves().exclude(
                [6, 7, 11, 14, 15, 19, 21, 22, 24, 25, 26])
        ),
    ),
)

maker(
    ("vc1", (13, 15)),
    harmony.sixteenths([14, 8, 8], [2]),
)

# vc2

maker(
    ("vc2", (3, 8)),
    harmony.rimbalzandi(
        [2],
        rmakers.force_rest(
            baca.leaves().exclude(
                [0, 6, 10, 11, 14, 16, 19, 21, 22, 23, 25, 27, 28, 29])
        ),
    ),
)

maker(
    ("vc2", (13, 15)),
    harmony.sixteenths([8, 8, 14], [2]),
)

# cb1

maker(
    ("cb1", (3, 8)),
    harmony.rimbalzandi(
        [3],
        rmakers.force_rest(
            baca.leaves().exclude(
                [1, 6, 9, 11, 14, 16, 19,21, 22, 24, 25, 26, 28, 30, 31, 32])
        ),
    ),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("cb1", (13, 15)),
    harmony.sixteenths([12, 7, 8], [1]),
)

maker(
    ("cb1", (11, 15)),
    baca.staff_position(0, not_yet_pitched=True),
)

# cb2

maker(
    ("cb2", (3, 8)),
    harmony.rimbalzandi(
        [4],
        rmakers.force_rest(
            baca.leaves().exclude([1, 9, 16, 22, 27, 29, 31, 33, 34, 35])
        ),
    ),
    baca.staff_position(0, not_yet_pitched=True),
)

maker(
    ("cb2", (13, 15)),
    harmony.sixteenths([8, 7, 12], [1]),
)

maker(
    ("cb2", (11, 15)),
    baca.staff_position(0, not_yet_pitched=True),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (3, 8)),
    baca.triple_staccato(baca.pheads()),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 12)),
    harmony.durata([2]),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
    baca.dynamic("p"),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (13, 15)),
    baca.stem_tremolo(baca.pleaves()),
    baca.accent(baca.pheads()),
)
