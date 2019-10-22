import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Q] #####################################
###############################################################################

stage_markup = (
    ("[Q.1]", 1),
    ("[▶S.1]", 2, "darkgreen"),
    ("[◀O.4]", 4, "darkgreen"),
    ("[Q.2]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 6],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (6, 4), (4, 4), (1, 4),
        (3, 4), (5, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=6,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Q",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(2 - 1)),
    baca.metronome_mark("8=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(5 - 1)),
    baca.metronome_mark("2=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(6 - 1)),
)

# text

maker(
    ("bfl", 6),
    baca.literal(
        "\\footnote \"(16)\" #'(0 . 0) \\harmony-text-sixteen",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        [4, 4, "-"],
    ),
    baca.new(
        baca.text_spanner(
            "A =|",
            abjad.tweak(3).staff_padding,
            autodetect_right_padding=True,
            bookend=False,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        left_broken=True,
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("bfl", 2),
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
    ("bfl", 4),
    harmony.sixteenths(
        [-4, 8],
    ),
    baca.dynamic("p"),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [4, "-", 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 4), (2, 4)]),
        extra_counts=[0, 4],
        denominator=None,
    ),
)

maker(
    ("bfl", (4, 5)),
    baca.new(
        baca.trill_spanner(
            abjad.tweak(2).bound_details__right__padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.runs()[:1].rleak(),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        selector=baca.runs()[1:2].rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.make_notes(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.clef("percussion"),
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
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        ["+"],
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 5),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-16, 4],
    ),
    baca.laissez_vibrer(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", 1),
    baca.clef("percussion"),
    baca.make_notes(),
    harmony.tam_tam_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 2),
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
    ("perc2", 4),
    baca.staff_lines(1),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        [-16, 4],
    ),
    harmony.tam_tam_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        literal=True,
    ),
)

# perc1, perc2

maker(
    (["perc1", "perc2"], 2),
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
    baca.make_notes(),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
)

maker(
    ("hp", 2),
    baca.clef("treble"),
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
    ("hp", 4),
    harmony.sixteenths(
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.staff_position(
        [-1, 0],
        mock=True,
    ),
    baca.flageolet(),
    baca.laissez_vibrer(),
)

maker(
    ("hp", 5),
    baca.clef(
        "bass",
        baca.pleaf(0),
    ),
    harmony.sixteenths(
        [-16, 4],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
)

# va

maker(
    ("va", (1, 2)),
    baca.make_notes(),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True, 
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
        left_broken=True,
    ),
)

maker(
    ("va", 4),
    harmony.sixteenths(
        ["+"],
    ),
    baca.dynamic(
        "p-sempre",
        abjad.tweak(-0.95).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs(),
    ),
)

maker(
    ("va", 5),
    baca.make_repeat_tied_notes(),
    baca.dynamic(
        "pp-ancora",
        abjad.tweak(-1).self_alignment_X,
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
)

# vc1

maker(
    ("vc1", 1),
    harmony.tessera_2(
        3,
        rest_plts=[0],
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "f <| fff",
    ),
)

maker(
    ("vc1", 5),
    harmony.tessera_2(
        3,
        advance=24,
    ),
)

# vc2

maker(
    ("vc2", 1),
    harmony.tessera_2(
        2,
        rest_plts=[0],
    ),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "f <| fff",
    ),
)

maker(
    ("vc2", 5),
    harmony.tessera_2(
        2,
        advance=24,
    ),
)

# cb1

maker(
    ("cb1", 1),
    harmony.tessera_2(
        1,
        rest_plts=[0],
    ),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "f <| fff",
    ),
)

maker(
    ("cb1", 5),
    harmony.tessera_2(
        1,
        advance=24,
    ),
)

# cb2

maker(
    ("cb2", 1),
    harmony.tessera_2(0),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        ["+", -1],
    ),
    baca.new(
        baca.stop_on_string(),
        selector=baca.leaf(-1),
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.hairpin(
        "f <| fff",
    ),
)

maker(
    ("cb2", 5),
    harmony.tessera_2(
        0,
        advance=24,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 2),
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

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 1),
    baca.hairpin(
        "p < f",
        selector=baca.tleaves(),
    ),
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], 5),
    baca.dynamic("p"),
)

maker(
    (["vc1", "vc2", "cb1", "cb2"], [1, 5]),
    baca.triple_staccato(baca.pheads()),
#    baca.label(
#        abjad.label().with_durations(denominator=16),
#    ),
)
