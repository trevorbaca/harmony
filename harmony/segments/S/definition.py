import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [S] #####################################
###############################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[◀R.1]", 2, "darkgreen"),
    ("[S.2-3]", 4),
    ("[▶T.1]", 11, "darkgreen"),
    ("[S.4]", 12),
    ("[▶T.1]", 13, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 10],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (1, 4),
        (5, 4), (4, 4), (5, 4), (4, 4), (5, 4), (4, 4), (1, 4),
        (4, 4), (5, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "S",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.open_volta(baca.skip(1 - 1)),
    baca.close_volta(baca.skip(2 - 1)),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(11 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(11 - 1)),
    baca.metronome_mark("96", baca.skip(12 - 1)),
    baca.metronome_mark("4.=4", baca.skip(12 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(10 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
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
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.tleaves(),
    ),
)

maker(
    ("bfl", 12),
    harmony.warble(
        extra_counts=[2],
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
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.tleaves(),
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("bfl", [11, 13]),
    harmony.sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(2, grace=False),
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(
        baca.phead(1),
    ),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=baca.pleaves()[1:].rleak(),
    ),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (4, 8)),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[1, 19, 1, 15],
        counts=[0, 5, 0, 6, 0, 7, 0, 8, 0, 9],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(1, grace=False),
    ),
)

maker(
    ("perc1", 9),
    harmony.appoggiato(
        divisions=[16],
        counts=[19],
        rest_after=True,
    ),
)

maker(
    ("perc1", 12),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[20],
        counts=[25],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", [11, 13]),
    baca.staff_lines(1),
    harmony.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(2, grace=False),
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.chunk(
        baca.damp(),
        baca.dynamic("p"),
    ),
    baca.new(
        baca.laissez_vibrer(),
        baca.dynamic("f"),
        selector=baca.phead(1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc2", (4, 8)),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[1, 19, 1, 15],
        counts=[0, 4, 0, 5, 0, 6, 0, 7, 0, 8],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(1, grace=False),
    ),
)

maker(
    ("perc2", 9),
    harmony.appoggiato(
        divisions=[16],
        counts=[18],
        rest_after=True,
    ),
)

maker(
    ("perc2", 12),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[20],
        counts=[24],
        rest_after=True,
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc2", [11, 13]),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    harmony.slate_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], [1, (4, 9), 12]),
    baca.new(
        baca.dots_extra_offset((2, 0)),
        baca.dots_x_extent_false(),
        baca.rest_x_extent_false(),
        map=baca.rests().filter_duration(">=", (1, 2)),
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< mp > pp pp < mp >o niente",
        pieces=baca.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic_text_x_offset(
        -3,
        baca.pleaf(1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        baca.pleaf(-1),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        [4, 2, "-"],
    ),
    baca.chunk(
        baca.snap_pizzicato(),
        baca.dynamic("f"),
    ),
    baca.new(
        baca.laissez_vibrer(),
        baca.dynamic("mf"),
        baca.markup(
            r"\baca-pdlt-markup",
            literal=True,
        ),
        selector=baca.phead(1),
    ),
)

maker(
    ("hp", 4),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("hp", (5, 9)),
    baca.make_notes(),
)

maker(
    ("hp", (4, 9)),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", 12),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", [11, 13]),
    harmony.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        literal=True,
    ),
)

# va

maker(
    ("va", (4, 9)),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
)

maker(
    ("va", 12),
    baca.clef("alto"),
)

maker(
    ("va", [11, 13]),
    harmony.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
    ),
)

# vc1

maker(
    ("vc1", (4, 9)),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
)

maker(
    ("vc1", 12),
    baca.clef("bass"),
)

maker(
    ("vc1", [11, 13]),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

# vc2

maker(
    ("vc2", (4, 9)),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
)

maker(
    ("vc2", 12),
    baca.clef("bass"),
)

maker(
    ("vc2", [11, 13]),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
)

# cb1

maker(
    ("cb1", (4, 9)),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
)

maker(
    ("cb1", 12),
    baca.clef("bass"),
)

maker(
    ("cb1", [11, 13]),
    harmony.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

# cb2

maker(
    ("cb2", (4, 9)),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
)

maker(
    ("cb2", 12),
    baca.clef("bass"),
)

maker(
    ("cb2", [11, 13]),
    harmony.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
    # TODO: promote to harmony.sixteenths()
    baca.invisible_music(
        baca.pleaves().get([1], 2),
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=baca.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic_text_x_offset(
        -3,
        baca.pleaf(1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        baca.pleaf(-1),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
        [-4, 6, 2, -4], 
        untie=True,
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([2, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 9)),
    baca.make_notes(),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 9)),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 12),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 12),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], [11, 13]),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
)
