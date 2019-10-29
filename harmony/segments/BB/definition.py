import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [BB] ####################################
###############################################################################

stage_markup = (
    ("[BB.1-4]", 1),
    ("[◀Y.2]", 5, "darkgreen"),
    ("[BB.5-8]", 6),
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
    fermata_measure_empty_overrides=[6],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (2, 4), (2, 4), (2, 4), (2, 4), (6, 4), (1, 4),
        (2, 4), (2, 4), (2, 4), (2, 4),
    ],
    transpose_score=True,
    validate_measure_count=10,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "BB",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2.=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(6 - 1)),
)

maker(
    "Global_Skips",
    baca.open_volta(baca.skip(7 - 1)),
    baca.close_volta(baca.skip(10 - 1), format_slot="after"),
    baca.markup(
        r"\harmony-repeat-three",
        literal=True,
        selector=baca.skip(7 - 1),
    ),
    baca.text_script_extra_offset((1.5, 12)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(6 - 1)),
)

# text

maker(
    ("bfl", 6),
    baca.literal(
        "\\footnote \"(31)\" #'(0 . 0) \\harmony-text-thirty-one",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 5),
    harmony.warble(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
    baca.pitches(
        harmony.warble_pitches.rotate(-11),
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
        pieces=baca.leaves().partition_by_ratio((4, 5)),
        map=baca.runs(),
        selector=baca.leaves(),
    ),
    baca.trill_spanner(
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        map=baca.runs(),
        selector=baca.leaves().rleak(),
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("bfl", (7, 10)),
    harmony.sixteenths(
        [4],
        written_halves=True,
        invisible_pairs=True,
    ),
    baca.pitch("A4"),
    baca.flat_glissando(
        hide_stem_selector=baca.pleaves()[1:-1],
        selector=baca.leaves()[:-1],
    ),
    baca.hairpin(
        "pp < p >",
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "pp",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        right_broken=True,
    ),
    baca.markup(
        "dynamics as indicated (non cresc.) for all 12 measures",
        abjad.tweak(5.5).staff_padding,
    ),
)

# perc1

maker(
    ("perc1", (1, 4)),
    harmony.sixteenths(
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=([0],),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.hairpin(
        "p < mp > p p < mp > p",
        pieces=baca.clparts([1]),
        selector=baca.tleaves(),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 5),
    harmony.sixteenths(
        [1, -23, -1, 1, -22],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak(False).X_extent,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (7, 10)),
    harmony.sixteenths(
        [4, 4, 4, 4, 4, 4, 4, 3, 1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=([0, -3],),
        invisible=([-2, -1],),
    ),
    harmony.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        selector=baca.leaves()[:-2],
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -3]),
    ),
    baca.hairpin(
        "pp < p > pp < p > pp < p > pp < p > pp",
        pieces=baca.lparts([1, 1, 1, 1, 1, 1, 1, 2]),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        literal=True,
    ),
    baca.markup(
        "dynamics as indicated (non cresc.) for all 12 measures",
        abjad.tweak(8).staff_padding,
    ),
)

# perc2

maker(
    ("perc2", (1, 4)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [2, "-"],
    ),
    baca.pitch("C#5"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
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
    baca.hairpin(
        "f >o niente",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 7),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.markup(
        r"\baca-glockenspiel-markup",
        literal=True,
        selector=baca.leaf(0),
    ),
)

maker(
    ("perc2", 10),
    harmony.sixteenths(
        [-2, 2, -8],
    ),
    baca.pitch("A4"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        "cresc. from mezzo piano to forte over 12 measures",
        abjad.tweak(1).self_alignment_X,
        abjad.tweak(3).staff_padding,
    ),
)

# hp

maker(
    ("hp", (1, 4)),
    baca.clef("bass"),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.pitch("A1"),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

# va

maker(
    ("va", (1, 4)),
    baca.make_notes(),
    baca.pitch("Gqf3"),
    baca.flat_glissando(
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "poc. scr. =|",
        abjad.tweak(3).staff_padding,
        left_broken=True,
    ),
)

maker(
    ("va", 5),
    harmony.tessera_4(4),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

maker(
    ("va", (7, 10)),
    baca.make_notes(),
    baca.pitch("E3"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic("p"),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.markup(
        "cresc. from piano to mezzo forte over 12 measures",
        abjad.tweak(5.5).staff_padding,
    ),
)

# vc1

maker(
    ("vc1", (1, 4)),
    harmony.sixteenths(
        [10, 6],
    ),
    baca.note_head_style_harmonic(),
    baca.pitches("E6 C#6"),
    baca.glissando(),
    baca.dynamic("p"),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
)

maker(
    ("vc1", 5),
    harmony.tessera_4(3),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<A4 B4 C5>"),
    baca.flat_glissando(),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.lparts([2, 3, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc1", (7, 10)),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch("C#6"),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="E6",
        right_broken=True,
    ),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
    baca.markup(
        "cresc. from mezzo piano to forte over 12 measures",
        abjad.tweak(8).staff_padding,
    ),
)

# vc2

maker(
    ("vc2", (1, 4)),
    harmony.sixteenths(
        [10, 6],
    ),
    baca.note_head_style_harmonic(),
    baca.pitches("A5 C#6"),
    baca.glissando(),
    baca.dynamic("p"),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
)

maker(
    ("vc2", 5),
    harmony.tessera_4(2),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.flat_glissando(),
    baca.hairpin(
        "pp -- ! < mp -- ! >o niente",
        pieces=baca.lparts([1, 2, 3, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("vc2", (7, 10)),
    baca.note_head_style_harmonic(),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch("A5"),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        alteration="C#6",
        right_broken=True,
    ),
    baca.markup(
        baca.markups.string_number(1),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
    baca.markup(
        "cresc. from mezzo piano to forte over 12 measures",
        abjad.tweak(5.5).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", (1, 4)),
    baca.clef("treble"),
    harmony.sixteenths(
        [4, 4, -8],
    ),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "niente o< mf >o niente",
        map=baca.runs().map(baca.leaves().rleak()),
        pieces=baca.lparts([1, 1 + 1]),
    ),
    baca.trill_spanner(
        abjad.tweak(2).bound_details__right__padding,
        map=baca.runs(),
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb1", 5),
    harmony.tessera_4(1),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        do_not_transpose=True,
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.lparts([2, 3, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb1", (7, 10)),
    harmony.sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
    ),
    baca.dynamic(
        "niente",
        selector=baca.leaves().rleak()[-1],
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
        right_broken=True,
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
    baca.markup(
        "cresc. from mezzo piano to forte over 12 measures",
        abjad.tweak(3).staff_padding,
    ),
)

# cb2

maker(
    ("cb2", (1, 4)),
    baca.make_notes(),
    baca.pitch("A1"),
    baca.flat_glissando(),
    baca.scp_spanner(
        "scp var. =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
)

maker(
    ("cb2", 5),
    harmony.tessera_4(0),
    baca.clef("treble"),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        do_not_transpose=True,
    ),
    baca.flat_glissando(),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=baca.lparts([2, 1, 1 + 1]),
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("cb2", (7, 10)),
    harmony.sixteenths(
        [8, 8, 8, 7, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_halves=([-2],),
        invisible=([-1],),
    ),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.flat_glissando(
        hide_middle_stems=True,
        selector=baca.leaves()[:-1],
    ),
    baca.dynamic("mp"),
    baca.scp_spanner(
        "T -> O -> (T)",
        abjad.tweak(3).staff_padding,
        bookend=-1,
        pieces=baca.mgroups([2, 2]),
        selector=baca.leaves(),
    ),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(1.5).staff_padding,
        direction=abjad.Down,
    ),
    baca.markup(
        "cresc. from mezzo piano to forte over 12 measures",
        abjad.tweak(5.5).staff_padding,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
)
