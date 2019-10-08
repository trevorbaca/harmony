import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [R] #####################################
###############################################################################

stage_markup = (
    ("[R.1-2]", 1),
    ("[▶S.1]", 3, "darkgreen"),
    ("[◀P.7-8]", 4, "darkgreen"),
    ("[◀Q.1]", 6, "darkgreen"),
    ("[R.3]", 8),
    ("[R.4-6]", 9),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[7],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (3, 4), (4, 4), (3, 4), (3, 4), (6, 4), (1, 4),
        (4, 4), (3, 4), (4, 4), (3, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "R",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("72", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(3 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("2=4", baca.skip(6 - 1)),
    baca.metronome_mark("72", baca.skip(8 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(7 - 1)),
)

# bfl

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    baca.staff_lines(1),
    harmony.bass_drum_staff_position(),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        literal=True,
    ),
    baca.accent(),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=baca.pleaves()[1:].rleak(),
    ),
    baca.laissez_vibrer(
        baca.phead(1),
    ),
)

maker(
    ("perc1", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.chunk(
        baca.accent(),
        baca.dynamic("mp"),
    ),
    baca.hairpin(
        "o< mf",
        selector=baca.pleaves()[1:].rleak(),
    ),
    baca.laissez_vibrer(
        baca.phead(1),
    ),
)

maker(
    ("perc1", 3),
    baca.staff_lines(3),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
)

maker(
    ("perc1", 6),
    baca.staff_lines(5),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
    baca.staff_lines(1),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mf",
        selector=baca.pleaves().rleak(),
    ),
    baca.laissez_vibrer(),
    baca.markup(
        r"\baca-bd-superball-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mp",
        selector=baca.pleaves().rleak(),
    ),
    baca.laissez_vibrer(),
)

maker(
    ("perc1", 10),
    harmony.tuplet(
        [(1, -1, -8)],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mp",
        selector=baca.pleaves().rleak(),
    ),
    baca.laissez_vibrer(),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mp",
        selector=baca.pleaves().rleak(),
    ),
    baca.laissez_vibrer(),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
    baca.chunk(
        baca.dynamic("p"),
        baca.articulation(r"baca-damp"),
    ),
    baca.new(
        baca.dynamic("f"),
        baca.laissez_vibrer(),
        selector=baca.phead(1),
    ),
)

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.chunk(
        baca.dynamic("p"),
        baca.articulation(r"baca-damp"),
    ),
    baca.new(
        baca.dynamic("f"),
        baca.laissez_vibrer(),
        selector=baca.phead(1),
    ),
)

maker(
    ("perc2", 3),
    baca.staff_lines(3),
)

maker(
    ("perc2", 4),
    baca.staff_lines(1),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
    baca.dynamic("f"),
    baca.laissez_vibrer(),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    baca.clef("treble"),
    baca.chunk(
        baca.snap_pizzicato(),
        baca.dynamic("f"),
    ),
    baca.new(
        baca.markup(
            r"\baca-pdlt-markup",
            literal=True,
        ),
        baca.dynamic("mf"),
        baca.laissez_vibrer(),
        selector=baca.phead(1),
    ),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    baca.chunk(
        baca.snap_pizzicato(),
        baca.dynamic("f"),
    ),
    baca.new(
        baca.markup(
            r"\baca-pdlt-markup",
            literal=True,
        ),
        baca.dynamic("mf"),
        baca.laissez_vibrer(),
        selector=baca.phead(1),
    ),
)

maker(
    ("hp", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
    baca.dynamic("mf"),
    baca.laissez_vibrer(),
)

maker(
    ("hp", [9, 10, 11]),
    harmony.sixteenths(
        [3, 3, "-"],
        untie=True,
    ),
    baca.flat_glissando(),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
        match=0,
    ),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

# va

maker(
    ("va", (9, 11)),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
)

# vc1

maker(
    ("vc1", (9, 11)),
    harmony.sixteenths(
        [3, -7],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.hairpin(
        "mp -- niente",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# vc2

maker(
    ("vc2", (9, 11)),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
)

# cb1

maker(
    ("cb1", 9),
    harmony.sixteenths(
        [1, 4, 1, "-"],
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.lparts([2, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.scp_spanner(
        "A -> B -> C",
        abjad.tweak(3).staff_padding,
        pieces=baca.plts(),
        selector=baca.tleaves(),
    ),
)

maker(
    ("cb1", 10),
    harmony.sixteenths(
        [2, 3, 1, "-"],
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.lparts([2, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.scp_spanner(
        "C -> A -> B",
        abjad.tweak(3).staff_padding,
        pieces=baca.plts(),
        selector=baca.tleaves(),
    ),
)

maker(
    ("cb1", 11),
    harmony.sixteenths(
        [1, 3, 2, "-"],
    ),
    baca.hairpin(
        "o< p >o niente",
        pieces=baca.lparts([2, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.scp_spanner(
        "B -> C -> A",
        abjad.tweak(3).staff_padding,
        pieces=baca.plts(),
        selector=baca.tleaves(),
    ),
)

maker(
    ("cb1", (9, 11)),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

# cb2

maker(
    ("cb2", (9, 11)),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        [-4, 6, 2, -4], 
        untie=True,
    ),
    baca.flat_glissando(),
    baca.trill_spanner(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([2, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
        [-2, "+", -1],
        untie=True,
    ),
    baca.flat_glissando(),
    baca.trill_spanner(),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.lparts([2, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    harmony.sixteenths(
        [8, 4, -4],
    ),
    baca.flat_glissando(),
    baca.trill_spanner(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

# v1, vc2, cb2

maker(
    (["va", "vc2", "cb2"], [9, 11]),
    harmony.sixteenths(
        [2],
        written_quarters=True,
    ),
)

maker(
    (["va", "vc2", "cb2"], 10),
    harmony.tuplet(
        [10 * (1,)],
        written_quarters=True,
    ),
)

maker(
    (["va", "vc2", "cb2"], (9, 11)),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.tleaves(),
    ),
    # TODO: move invisible command into rhythm-maker
    baca.invisible_music(
        baca.leaves().get([1], 2),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        # large right padding because open-volta follows in next segment
        abjad.tweak(6).bound_details__right__padding,
        abjad.tweak(3).staff_padding,
    ),
)
