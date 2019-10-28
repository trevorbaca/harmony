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
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    deactivate=[
        *abjad.tags.instrument_color_tags(),
        *abjad.tags.margin_markup_color_tags(),
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
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
    baca.open_volta(baca.skip(11 - 1)),
    baca.double_volta(baca.skip(13 - 1)),
    baca.close_volta(baca.skip(15 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# text

maker(
    ("perc1", 9),
    baca.literal(
        "\\footnote \"(11)\" #'(0 . 0) \\harmony-text-eleven",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", [1, 3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("<Eb3 Eb4 Bb4>"),
    baca.new(
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
            left_broken=True,
        ),
        match=[0],
    ),
)

maker(
    ("bfl", 2),
    harmony.sixteenths(
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    # TOOD: promote into harmony.sixteenths():
    baca.repeat_tie(
        baca.pleaf(-1),
    ),
    baca.pitch("B4"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 10),
    harmony.appoggiato(
        counts=[9],
        incise=True,
    ),
    baca.pitches(
        "A3",
        baca.leaves(grace=False),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_a.rotate(-9),
        baca.leaves(grace=True),
    ),
    baca.dynamic(
        "p",
        selector=baca.pleaf(0, grace=False),
    ),
    baca.text_spanner(
        r"\harmony-a-sounds-ottava-higher =|",
        abjad.tweak(abjad.Down).direction,
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        direction=abjad.Down,
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("bfl", (11, 12)),
    harmony.sixteenths(
        [4, 8, 4, 12],
    ),
    baca.breathe(
        baca.pleaves().get([1, 3]),
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
    ("bfl", (13, 14)),
    harmony.sixteenths(
        [6, 6, 6, 6, 6, 10],
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

maker(
    ("bfl", 15),
    harmony.sixteenths(
        [6, 8, 2, 2],
        extra_counts=[0, 0, 0, 2],
        denominator=None,
        written_quarters=([-2, -1],),
        invisible=([-1],),
    ),
    baca.stem_tremolo(
        baca.pleaves()[-2:],
    ),
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.lparts([1, 1 + 1]),
        right_broken=True,
        selector=baca.leaves()[-2:].rleak(),
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.pleaf(-1),
    ),
    baca.text_spanner(
        "T -> A =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        pieces=baca.lparts([2, 4]),
        selector=baca.leaves()[:-1],
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[-2:].rleak(),
    ),
)

maker(
    ("bfl", (11, 15)),
    baca.pitch(
        "Dtqf5",
        baca.leaves()[:-2],
    ),
    baca.markup(
        r"\harmony-seven-e-flat",
        abjad.tweak(8).staff_padding,
        literal=True,
    ),
    baca.pitch(
        "B4",
        baca.leaves()[-2:],
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("Eb4"),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.clef("percussion"),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
    ),
    # TODO: should be baca.staff_position(-2):
    baca.staff_positions(
        [-2, -8, -8, -8, -8],
        baca.runs()[:1],
        allow_repeats=True,
    ),
    baca.staff_position(
        0 ,
        baca.runs()[1:],
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc1", [3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
)

maker(
    ("perc1", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("perc1", (3, 8)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("Eb4"),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc1", 10),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("perc1", (11, 12)),
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
    ("perc1", [13, 15]),
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

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
    ),
    baca.staff_position(
        -2,
        baca.runs()[:1],
    ),
    baca.staff_position(
        0 ,
        baca.runs()[1:],
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(0, grace=False),
    ),
)

maker(
    ("perc2", [3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
)

maker(
    ("perc2", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("perc2", (3, 8)),
    baca.staff_lines(1),
    harmony.tam_tam_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", 10),
    baca.make_notes(),
    harmony.bass_drum_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-bd-fingertips-markup",
        literal=True,
    ),
)

maker(
    ("perc2", (11, 12)),
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
    ("perc2", (13, 15)),
    harmony.sixteenths(
        [6, -6, 6, -6, 6, -10],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    harmony.sixteenths(
        ["+"],
    ),
    baca.pitch("Eb4"),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        [-4, 4, "+"],
    ),
)

maker(
    ("hp", [3, 5, 7]),
    harmony.sixteenths(
        ["+"],
    ),
)

maker(
    ("hp", [4, 6, 8]),
    harmony.tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

maker(
    ("hp", (2, 4)),
    baca.clef("bass"),
    baca.pitch("<B2 C3 Db3>"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< mf >o mf",
        pieces=baca.lparts([1, 4]),
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", (5, 8)),
    baca.clef("treble"),
    baca.pitch("Eb4"),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.new(
        baca.dynamic("f"),
        measures=6,
    ),
    baca.new(
        baca.dynamic("mp"),
        measures=7,
    ),
    baca.new(
        baca.dynamic("p"),
        measures=8,
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", (11, 12)),
    harmony.sixteenths(
        [2, -2],
    ),
    baca.pitch("E4"),
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
    ("hp", (13, 15)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [6, -6, 6, -6, 6, -10],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
    ),
)

# va

maker(
    ("va", 1),
    baca.pitch("A5"),
)

maker(
    ("va", (2, 4)),
    baca.clef("alto"),
    harmony.appoggiato(
        divisions=[4, 48],
        counts=[7],
        rest_to=1,
    ),
    baca.note_head_style_harmonic_black(
        baca.leaves(grace=False),
    ),
    baca.pitch(
        "Db3",
        baca.leaves(grace=False),
    ),
    baca.note_head_style_harmonic_black(
        baca.leaves(grace=True),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_d_flat_3,
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("va", (5, 8)),
    harmony.rimbalzandi(
        rest_except=[1, 3, 6, 8, 11, 13, 14, 15],
    ),
)

maker(
    ("va", (13, 15)),
    harmony.sixteenths(
        [8, 3, 6],
    ),
)

maker(
    ("va", [(5, 8), (11, 15)]),
    baca.pitch("Bb3"),
)

# vc1

maker(
    ("vc1", 1),
    baca.pitch("Gqs6"),
)

maker(
    ("vc1", 2),
    baca.clef("bass"),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.note_head_style_harmonic_black(
        baca.leaves(grace=False),
    ),
    baca.pitch(
        "C3",
        baca.leaves(grace=False),
    ),
    baca.note_head_style_harmonic_black(
        baca.leaves(grace=True),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_c_3,
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("vc1", (3, 8)),
    harmony.rimbalzandi(
        extra_counts=[1],
        rest_except=[6, 7, 11, 14, 15, 19, 21, 22, 24, 25, 26],
    ),
)

maker(
    ("vc1", (13, 15)),
    harmony.sixteenths(
        [14, 8, 8],
        extra_counts=[2],
    ),
)

maker(
    ("vc1", [(3, 8), (11, 15)]),
    baca.pitch("Aqf3"),
    baca.markup(
        r"\harmony-eleven-e-flat",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
)

# vc2

maker(
    ("vc2", 1),
    baca.pitch("F#5"),
)

maker(
    ("vc2", 2),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.pitch("C3"),
    baca.clef("bass"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", (3, 8)),
    harmony.rimbalzandi(
        extra_counts=[2],
        rest_except=[0, 6, 10, 11, 14, 16, 19, 21, 22, 23, 25, 27, 28, 29],
    ),
)

maker(
    ("vc2", (13, 15)),
    harmony.sixteenths(
        [8, 8, 14],
        extra_counts=[2],
    ),
)

maker(
    ("vc2", [(3, 8), (11, 15)]),
    baca.pitch("F3"),
)

# cb1

maker(
    ("cb1", 1),
    baca.pitch("C#6"),
)

maker(
    ("cb1", 2),
    harmony.appoggiato(
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
    ),
    baca.clef("bass"),
    baca.note_head_style_harmonic_black(
        baca.leaves(grace=False),
    ),
    baca.pitch(
        "B2",
        baca.leaves(grace=False),
    ),
    baca.note_head_style_harmonic_black(
        baca.leaves(grace=True),
    ),
    baca.pitches(
        harmony.appoggiato_pitches_b_2,
        baca.leaves(grace=True),
    ),
    baca.hairpin(
        "mf >o niente",
        selector=baca.tleaves(grace=False).rleak(),
    ),
)

maker(
    ("cb1", (3, 8)),
    harmony.rimbalzandi(
        rest_except=[
            1, 6, 9, 11, 14, 16, 19,21, 22, 24, 25, 26, 28, 30, 31, 32],
        extra_counts=[3],
    ),
)

maker(
    ("cb1", (13, 15)),
    harmony.sixteenths(
        [12, 7, 8],
        extra_counts=[1],
    ),
)

maker(
    ("cb1", (11, 15)),
)

maker(
    ("cb1", [(3, 8), (11, 15)]),
    baca.pitch("Dtqf3"),
    baca.markup(
        r"\harmony-seven-e-flat",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
)

# cb2

maker(
    ("cb2", 1),
    baca.pitch("Cqf6"),
)

maker(
    ("cb2", 2),
    harmony.sixteenths(
        [-8, 12],
    ),
    baca.clef("bass"),
    baca.pitch("B2"),
    baca.dynamic("mp"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (3, 8)),
    harmony.rimbalzandi(
        rest_except=[1, 9, 16, 22, 27, 29, 31, 33, 34, 35],
        extra_counts=[4],
    ),
)

maker(
    ("cb2", (13, 15)),
    harmony.sixteenths(
        [8, 7, 12],
        extra_counts=[1],
    ),
)

maker(
    ("cb2", [(3, 8), (11, 15)]),
    baca.pitch("Eb2"),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        ["+"],
    ),
    baca.note_head_style_harmonic(),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
        selector=baca.leaves().rleak(),
    ),
    baca.trill_spanner(
        left_broken=True,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (3, 8)),
    baca.triple_staccato(
        baca.pheads(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 10),
    baca.make_notes(),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 12)),
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

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (13, 15)),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.hairpin(
        "mp >o niente",
        right_broken=True,
        selector=baca.plts()[-1:].rleak(),
    ),
)
