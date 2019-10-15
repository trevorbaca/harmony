import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [K] #####################################
###############################################################################

stage_markup = (
    ("[▶L.1]", 1, "darkgreen"),
    ("[K.1]", 2),
    ("[K.2-3]", 4),
    ("[◀I.1]", 6, "darkgreen"),
    ("[▶L.4]", 7, "darkgreen"),
    ("[▶L.6]", 8, "darkgreen"),
    ("[K.4]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (3, 4), (4, 4), (1, 4),
        (4, 4), (4, 4), (6, 4), (3, 4), (3, 4), (1, 4),
        (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "K",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("8=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("144", baca.skip(6 - 1)),
    baca.metronome_mark("8=4", baca.skip(6 - 1)),
    baca.metronome_mark("96", baca.skip(7 - 1)),
    baca.metronome_mark("4.=4", baca.skip(7 - 1)),
    baca.metronome_mark("72", baca.skip(10 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        [8, "-"],
    ),
    baca.text_spanner(
        "multiphonic =|",
        abjad.tweak(5.5).staff_padding,
        bookend=False,
    ),
)

maker(
    ("bfl", 6),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.dynamic("mp"),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        [4, 8],
    ),
    baca.breathe(
        baca.pleaf(1),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.clparts([2]),
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [6, 6],
    ),
    baca.breathe(
        baca.cmgroups([1]).map(baca.pleaf(-1)),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.clparts([4]),
        pieces=baca.lparts([2, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [8, "-"],
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(1),
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
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (4, 5)),
    harmony.sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=([0, 1],),
        invisible=([1],),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< p > pp",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves()[:3],
    ),
    baca.hairpin(
        "pp < mp > pp",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves()[5:8],
    ),
)

maker(
    ("perc1", 6),
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
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
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
    ("perc1", 8),
    harmony.sixteenths(
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o<| f",
        map=baca.runs(),
    ),
)

maker(
    ("perc1", 10),
    harmony.sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=([0, 1, 3, 4, 5, 6],),
        invisible=([1, 4, 6],),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
    baca.hairpin(
        "o< p > pp pp < p > pp < p >o niente",
        abjad.tweak(10).staff_padding,
        pieces=baca.lparts([1, 1, 1, 1, 1, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [8, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 2),
    harmony.sixteenths(
        [-2, 10, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mp"),
)

maker(
    ("perc2", (4, 5)),
    harmony.sixteenths(
        [14, -4, 12, -2],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc2", 7),
    harmony.sixteenths(
        [2, -2],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        [6, -6],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 10),
    harmony.sixteenths(
        [6, -4, 4, -2],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    harmony.sixteenths(
        [8, "-"],
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 2),
    baca.clef("bass"),
    harmony.sixteenths(
        [-2, 10, "-"],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mp"),
)

maker(
    ("hp", (4, 5)),
    harmony.sixteenths(
        [14, -4, 12, -2],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("hp", 6),
    baca.clef("treble"),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.staff_position(
        [0, 1],
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
)

maker(
    ("hp", 7),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-soundboard-pizz-markup",
        literal=True,
    ),
)

maker(
    ("hp", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [6, -6],
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
    ),
)

maker(
    ("hp", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [6, -4, 4, -2],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mp"),
)

# va

maker(
    ("va", 6),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves().rleak(),
    ),
    # TODO: predefine markup
    baca.markup(
        "match harp decay",
        abjad.tweak(5.5).staff_padding,
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
        [8, 3, 6],
    ),
)

# vc1

maker(
    ("vc1", 8),
    harmony.sixteenths(
        [14, 8, 8],
        extra_counts=[2],
    ),
)

# vc2

maker(
    ("vc2", 8),
    harmony.sixteenths(
        [8, 8, 14],
        extra_counts=[2],
    ),
)

# cb1

maker(
    ("cb1", 8),
    harmony.sixteenths(
        [12, 7, 8],
        extra_counts=[1],
    ),
)

# cb2

maker(
    ("cb2", 8),
    harmony.sixteenths(
        [8, 7, 12],
        extra_counts=[1],
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

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 5)),
    harmony.sixteenths(
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=([0, 1],),
        invisible=([1],),
    ),
    baca.flat_glissando(),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "o<| p |> pp",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves()[:3],
    ),
    baca.hairpin(
        "pp <| mp |> pp",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves()[5:8],
    ),
    baca.trill_spanner(
        alteration="M2",
        harmonic=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 10),
    harmony.sixteenths(
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=([0, 1, 3, 4, 5, 6],),
        invisible=([1, 4, 6],),
    ),
    baca.note_head_style_harmonic(),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |> ! <| mp |>o niente",
        pieces=baca.lparts([1, 1, 1, 1, 1, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(
        abjad.tweak(2.75).bound_details__right__padding,
        alteration="M2",
        harmonic=True,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 6),
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

maker(
    (["vc1", "vc2", "cb1", "cb2"], 7),
    harmony.sixteenths(
        [4],
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("p"),
)
