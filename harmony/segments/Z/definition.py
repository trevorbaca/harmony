import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Z] #####################################
###############################################################################

stage_markup = (
    ("[Z.1-2]", 1),
    ("[▶CC.1]", 4, "darkgreen"),
    ("[Z.3-5]", 5),
    ("[◀X.6]", 8, "darkgreen"),
    ("[◀Y.2]", 9, "darkgreen"),
    ("[Z.6]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (1, 4),
        (6, 4), (4, 4), (4, 4), (4, 4), (4, 4), (6, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Z",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(4 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("96", baca.skip(5 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(8 - 1)),
    baca.metronome_mark("2=4", baca.skip(8 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(9 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(9 - 1)),
    baca.metronome_mark("96", baca.skip(10 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# bfl

maker(
    ("bfl", 4),
    harmony.sixteenths(
        [4, 4, 16],
    ),
    baca.flat_glissando(
        selector=baca.leaves()[:3],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
    baca.text_spanner(
        "(T) -> A -> (T)",
        abjad.tweak(5.5).staff_padding,
        pieces=baca.lparts([1, 1 + 1]),
    ),
    baca.hairpin(
        "pp < p > pp",
        pieces=baca.lparts([1, 1 + 1]),
    ),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [2, -2, 2],
    ),
    baca.hairpin(
        "p >o niente",
        selector=baca.leaves()[:2],
    ),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs()[1:].map(baca.leaves().rleak()),
    ),
    baca.trill_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
    baca.text_spanner(
        "T -> A",
        abjad.tweak(5.5).staff_padding,
        selector=baca.leaves()[:2],
    ),
    baca.text_spanner(
        "A -> T -> A",
        abjad.tweak(5.5).staff_padding,
        pieces=baca.lparts([1, 1 + 1]),
        map=baca.runs()[1:].map(baca.leaves().rleak()),
    ),
)

maker(
    ("bfl", 9),
    harmony.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        "G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3",
    ),
    baca.new(
        baca.note_head_font_size(-3),
        baca.accidental_font_size(-3),
        baca.accidental_x_offset(0),
        baca.accidental_y_offset(-2),
        selector=baca.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((4, 5)),
        map=baca.runs(),
        selector=baca.leaves(),
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("bfl", [(1, 2), (5, 7), 10]),
    harmony.sixteenths(
        [4, -12],
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        argument=r"\baca-cov-markup =|",
        map=baca.runs(),
    ),
    baca.dynamic("mp"),
)

# perc1

maker(
    ("perc1", 4),
    harmony.sixteenths(
        [1, -22, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
    baca.dynamic("f"),
    baca.dynamic(
        "mp",
        selector=baca.phead(-1),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc1", 8),
    harmony.sixteenths(
        [1, -3, 3, -3, 3, -3],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("p"),
)

maker(
    ("perc1", 9),
    harmony.sixteenths(
        [1, -23, -1, 1, -22],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak(False).X_extent,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc1", [(1, 2), (5, 7), 10]),
    harmony.sixteenths(
        [4, -12],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
    baca.dynamic("mf"),
)

# perc2

maker(
    ("perc2", 4),
    harmony.sixteenths(
        [1, -22, 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
    ),
    baca.dynamic(
        "mp",
        selector=baca.pheads(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(),
    baca.damp(
        baca.leaves().rleak()[-1],
    ),
)

maker(
    ("perc2", 9),
    harmony.sixteenths(
        [2, -22, -1, 2, -21],
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
    baca.hairpin(
        "f >o niente",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# hp

maker(
    ("hp", (1, 2)),
    harmony.sixteenths(
        [-10, 2, -4, -14, 2],
    ),
    baca.clef("treble"),
    baca.staff_position(
        [0, 1],
        mock=True,
    ),
    baca.flageolet(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-lv-into-fermata-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
        selector=baca.phead(-1),
    ),
)

maker(
    ("hp", 4),
    harmony.sixteenths(
        [1, -22, 1],
    ),
    baca.markup(
        r"\baca-soundboard-pizz-markup",
        literal=True,
    ),
    baca.dynamic("f"),
    baca.dynamic(
        "mp",
        selector=baca.phead(-1),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("hp", (5, 7)),
    harmony.sixteenths(
        [-10, 2, -4, -14, 2, -8, 2, -6],
    ),
    baca.staff_position(
        [0, 1],
        mock=True,
    ),
    baca.flageolet(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("f"),
)

maker(
    ("hp", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -3, 3, -3, 3, -3],
    ),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
    ),
    baca.dynamic("p"),
)

maker(
    ("hp", 9),
    baca.clef("treble"),
    baca.staff_lines(5),
)

maker(
    ("hp", 10),
    harmony.sixteenths(
        [2, -14],
    ),
    baca.staff_position(
        [0, 1],
        mock=True,
    ),
    baca.flageolet(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("f"),
)

# va

maker(
    ("va", 8),
    harmony.sixteenths(
        [2, 5, 9],
    ),
)

maker(
    ("va", 9),
    harmony.tessera_4(4),
    baca.dynamic("pp"),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

# vc1

maker(
    ("vc1", 8),
    harmony.sixteenths(
        [12, 4],
    ),
)

maker(
    ("vc1", 9),
    harmony.tessera_4(3),
    baca.hairpin(
        "pp -- ! < mp >",
        pieces=baca.plts(),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

# vc2

maker(
    ("vc2", 8),
    harmony.sixteenths(
        [5, 5, 6],
    ),
)

maker(
    ("vc2", 9),
    harmony.tessera_4(2),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        bookend=False,
        pieces=baca.lparts([1, 2, 3, 2]),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

# cb1

maker(
    ("cb1", 8),
    harmony.sixteenths(
        [10, 5, 1],
    ),
)

maker(
    ("cb1", 9),
    harmony.tessera_4(1),
    baca.hairpin(
        "pp -- ! < mp >",
        bookend=False,
        pieces=baca.lparts([2, 3, 2]),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

# cb2

maker(
    ("cb2", 8),
    harmony.sixteenths(
        [4, 6, 6],
    ),
)

maker(
    ("cb2", 9),
    harmony.tessera_4(0),
    baca.hairpin(
        "pp -- ! < mp >",
        pieces=baca.lparts([2, 1, 1]),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    harmony.sixteenths(
        [4, 4, 16],
        written_halves=([0, 1, 3, 4],),
        invisible=([1, 4],),
        tie_all=True,
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        left_broken=True,
    ),
    baca.hairpin(
        "pp < p > pp",
        pieces=baca.lparts([1, 1 + 1]),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.stem_tremolo(
        baca.pleaves(),
        ),
    baca.accent(
        baca.pheads()[1:],
    ),
    baca.dynamic("pp"),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 9),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], [(1, 2), (5, 7), 10]),
    harmony.sixteenths(
        [4, -12],
    ),
    baca.hairpin(
        "o<| ff",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.stop_on_string(
        baca.leaf(0),
        map=baca.runs().map(baca.leaves().rleak()[-1]),
    ),
)
