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
    deactivate=[
        *abjad.tags.instrument_color_tags(),
        *abjad.tags.margin_markup_color_tags(),
        abjad.tags.RHYTHM_ANNOTATION_SPANNER,
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

# text

maker(
    ("bfl", 7),
    baca.literal(
        "\\footnote \"(17-20)\" #'(0 . 0) \\harmony-text-seventeen-twenty",
        format_slot="opening",
    ),
)


# bfl

maker(
    ("bfl", 3),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-4),
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
    ("bfl", 4),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.pitch("D4"),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [-4, 8], 
    ),
)

maker(
    ("bfl", 6),
    harmony.sixteenths(
        [4, 4, "-"], 
    ),
)

maker(
    ("bfl", (5, 6)),
    baca.pitch("D4"),
    baca.text_spanner(
        "A =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.runs()[:1].rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
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
    ("perc1", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.chunk(
        baca.accent(),
        baca.dynamic("mp"),
    ),
    baca.laissez_vibrer(
        baca.phead(1),
    ),
    baca.hairpin(
        "o< mf",
        selector=baca.pleaves()[1:].rleak(),
    ),
)

maker(
    ("perc1", 3),
    baca.clef("percussion"),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
    baca.staff_position(2),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(2, grace=False),
    ),
)

maker(
    ("perc1", (4, 5)),
    baca.staff_lines(1),
    harmony.sixteenths(
        [21, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.flat_glissando(
        do_not_hide_middle_note_heads=True,
    ),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.make_notes(),
    baca.pitch("E4"),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mf",
        selector=baca.pleaves().rleak(),
    ),
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
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=baca.pleaves().rleak(),
    ),
)

maker(
    ("perc1", 10),
    harmony.tuplet(
        [(1, -1, -8)],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=baca.pleaves().rleak(),
    ),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.hairpin(
        "o< mp",
        selector=baca.pleaves().rleak(),
    ),
)

# perc2

maker(
    ("perc2", 1),
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
    ("perc2", 2),
    harmony.sixteenths(
        [2, 2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.chunk(
        baca.dynamic("p"),
        baca.damp(),
    ),
    baca.new(
        baca.laissez_vibrer(),
        baca.dynamic("f"),
        selector=baca.phead(1),
    ),
)

maker(
    ("perc2", 3),
    baca.staff_lines(3),
    harmony.appoggiato(
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
    ),
    baca.staff_position(2),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
        selector=baca.leaf(2, grace=False),
    ),
)

maker(
    ("perc2", (4, 5)),
    baca.staff_lines(1),
    harmony.sixteenths(
        [21, "-"],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 6),
    baca.make_notes(),
    harmony.tam_tam_staff_position(),
    baca.laissez_vibrer(),
    baca.accent(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.brake_drum_staff_position(),
    baca.laissez_vibrer(),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 11),
    baca.staff_lines(3),
    harmony.sixteenths(
        ["-", 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    ),
    baca.staff_position(0),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.runs()[-1:].rleak(),
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], 3),
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
    harmony.sixteenths(
        [-4, 2, "-"],
    ),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
)

maker(
    ("hp", 2),
    harmony.sixteenths(
        [-2, 2, "-"],
    ),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
)

maker(
    ("hp", (4, 5)),
    baca.clef("bass"),
    harmony.sixteenths(
        [21, "-"],
    ),
    baca.pitch("F1"),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

maker(
    ("hp", 6),
    baca.make_notes(),
    baca.chunk(
        baca.pitch("Db1"),
        baca.ottava_bassa(),
    ),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
)

maker(
    ("hp", 8),
    harmony.sixteenths(
        [2, "-"],
    ),
    baca.clef("treble"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
)

maker(
    ("hp", [(1, 2), 8]),
    baca.pitch("G4"),
)

maker(
    ("hp", 9),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("hp", [9, 10, 11]),
    harmony.sixteenths(
        [3, 3, "-"],
        untie=True,
    ),
    harmony.whisk_staff_position(),
    baca.flat_glissando(),
    baca.hairpin(
        'o< "mf" >o niente',
        pieces=baca.lparts([1, 2 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
        match=0,
    ),
)

# va

maker(
    ("va", (4, 5)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 3, -1],
        after_graces=[2, 4, 5],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

maker(
    ("va", 6),
    baca.make_notes(),
    baca.dynamic("pp"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("va", (9, 11)),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
)

# vc1

maker(
    ("vc1", (4, 5)),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("vc1", 6),
    harmony.tessera_2(
        3,
        rest_plts=[0],
    ),
)

maker(
    ("vc1", (9, 11)),
    harmony.sixteenths(
        [3, -7],
    ),
    baca.hairpin(
        "mp -- niente",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

# vc2

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths(
        [3, -1, 8, -8, 3, -1],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("vc2", 6),
    harmony.tessera_2(
        2,
        rest_plts=[0],
    ),
)

maker(
    ("vc2", (9, 11)),
    baca.flat_glissando(
        selector=baca.leaves()[:-1],
    ),
)

# cb1

maker(
    ("cb1", (4, 5)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 3, -1],
        after_graces=[4, 5, 2],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

maker(
    ("cb1", 6),
    harmony.tessera_2(
        1,
        rest_plts=[0],
    ),
)

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
    ("cb2", 2),
    harmony.sixteenths(
        ["-", 2, 2, 2, 2],
        fuse=True,
        extra_counts=[4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.tleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

maker(
    ("cb2", (2, 3)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("cb2", (4, 5)),
    harmony.sixteenths(
        [2, 1, -1, 8, -8, 3, -1],
        after_graces=[5, 2, 4],
    ),
    baca.staff_positions(
        [-2, 2],
        mock=True,
    ),
    baca.glissando(
        allow_repeats=True,
        map=baca.runs(),
    ),
)

maker(
    ("cb2", 6),
    harmony.tessera_2(0),
)

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
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([2, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(),
)

maker(
    (["va", "vc1", "vc2", "cb1"], 2),
    harmony.sixteenths(
        [-2, "+", -1],
        untie=True,
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.lparts([2, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
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
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 8),
    harmony.sixteenths(
        [8, 4, -4],
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    baca.trill_spanner(),
)

# va, vc1, vc2, cb1

maker(
    (["va", "vc1", "vc2", "cb1"], 3),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 6),
    baca.triple_staccato(baca.pheads()),
    baca.hairpin(
        "p < f",
        selector=baca.tleaves(),
    ),
)

# vc1, vc2, cb2

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
    # TODO: move invisible command into rhythm-maker
    baca.invisible_music(
        baca.leaves().get([1], 2),
    ),
    baca.hairpin(
        "niente o< p >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.tleaves(),
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
