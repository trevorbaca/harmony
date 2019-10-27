import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [G] #####################################
###############################################################################

stage_markup = (
    ("[G.1]", 1),
    ("[▶H.1]", 2, "darkgreen"),
    ("[G.2-3]", 4),
    ("[◀F.3]", 6, "darkgreen"),
    ("[▶I.1]", 7, "darkgreen"),
    ("[G.4]", 8),
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
    fermata_measure_empty_overrides=[3],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (3, 4), (1, 4),
        (4, 4), (4, 4), (5, 4), (6, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=8,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "G",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("57 3/5", baca.skip(1 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("96", baca.skip(2 - 1)),
    baca.metronome_mark("5:3(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(4 - 1)),
    baca.metronome_mark("3:5(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(6 - 1)),
    baca.metronome_mark("144", baca.skip(7 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(7 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(8 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(8 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
)

# text

maker(
    ("bfl", 3 + 1),
    baca.literal(
        "\\footnote \"(6)\" #'(0 . 0) \\harmony-text-six",
        format_slot="opening",
    ),
)

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", (4, 5)),
    harmony.sixteenths(
        [1, 1, -28, 1, 1],
        written_eighths=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o<| f |>o niente",
        pieces=baca.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.pleaf(1),
    ),
    baca.hairpin(
        "o<| mf |>o niente",
        pieces=baca.clparts([1]),
        selector=baca.leaves()[-2:].rleak(),
    ),
    baca.dynamic_text_x_offset(
        -2,
        baca.pleaf(3),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", 6),
    harmony.sixteenths(
        ["-", -2, 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.pitch("Ab3"),
    baca.dynamic("mp"),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        [-4, 8, "-", 2, 2],
        preprocessor=baca.sequence().fuse().split_divisions([(7, 8), (5, 8)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([-2, -1],),
        invisible=([-1],),
    ),
    baca.pitch(
        "G3",
        baca.runs()[:1],
    ),
    baca.pitch(
        "Bb5",
        baca.runs()[1:],
    ),
    baca.stem_tremolo(
        baca.pleaves()[-2:],
    ),
    baca.hairpin(
        "o< f >o",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.leaves()[-2:],
    ),
)

maker(
    ("bfl", (6, 7)),
    baca.new(
        baca.covered_spanner(
            abjad.tweak(3).staff_padding,
        ),
        baca.metric_modulation_spanner(
            abjad.tweak(8).staff_padding,
        ),
        selector=baca.leaves()[1:8],
    ),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [1, 1, "-"],
        written_eighths=True,
        invisible_pairs=True,
    ),
    baca.pitch("Bb5"),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.dynamic_text_x_offset(
        -0.75,
        baca.pleaf(1),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[4:9],
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.sixteenths(
        [-15, 1],
    ),
    baca.staff_position(2),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -11],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic(
        "f-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (4, 5)),
    baca.staff_lines(3),
    harmony.sixteenths(
        [1, -16, 1, "-"],
    ),
    baca.staff_position(2),
    baca.hairpin(
        "f mp",
        selector=baca.pleaves(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(-0.75).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(1).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc1", 7),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
    harmony.slate_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.stem_tremolo(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
    baca.dynamic('"f"'),
)

maker(
    ("perc1", 8),
    baca.staff_lines(3),
    harmony.sixteenths(
        [1, "-"],
    ),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(-0.75).self_alignment_X,
        literal=True,
    ),
)

# perc2

maker(
    ("perc2", (1, 2)),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("perc2", (4, 5)),
    baca.make_notes(),
    baca.stem_tremolo(),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc2", 6),
    harmony.sixteenths(
        [16, "-", 1],
    ),
    baca.stem_tremolo(),
    baca.new(
        harmony.brake_drum_staff_position(),
        baca.accent(),
        baca.damp(),
        baca.dynamic("mf"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.tweak(1).self_alignment_X,
            literal=True,
        ),
        selector=baca.pleaf(-1),
    ),
)

maker(
    ("perc2", (4, 6)),
    baca.new(
        harmony.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        selector=baca.run(0),
    ),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        ["+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=baca.pleaves().rleak(),
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)
# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
        ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        left_broken=True,
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        left_broken=True,
        selector=baca.leaves()[:2].rleak(),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("hp", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [6, 4, 1, 1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0],),
        invisible=([1, 2, 3],),
    ),
    baca.staff_position(
        [-1, 0, 1],
        baca.pleaf(0),
        mock=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.hairpin(
        "p < mf > p",
        pieces=baca.lparts([1, 3]),
        selector=baca.leaves(),
    ),
    baca.markup(
        r"\baca-bisb-markup",
        literal=True,
    ),
)

maker(
    ("hp", (4, 5)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, -28, 2],
    ),
    harmony.whisk_staff_position(),
    baca.dynamic('"f"'),
    baca.dynamic(
        "mf",
        selector=baca.phead(-1),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        literal=True,
    ),
)

maker(
    ("hp", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.dynamic("mp"),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
)

maker(
    ("hp", 7),
    harmony.sixteenths(
        [-4, -4, 8, -2, -4, 2, 2],
        preprocessor=baca.sequence().fuse().split_divisions(
            [(1, 4), (2, 4), (1, 8), (5, 8)],
        ),
        extra_counts=[0, 4, 0, -2],
        denominator=None,
        written_quarters=([-2, -1],),
        invisible=([-1],),
    ),
    baca.new(
        baca.staff_position(
            [0, 1],
            mock=True,
        ),
        baca.flageolet(),
        baca.laissez_vibrer(),
        baca.dynamic("mf"),
        selector=baca.pleaf(0),
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        harmony.whisk_staff_position(),
        baca.markup(
            r"\baca-whisk-markup",
            literal=True,
        ),
        selector=baca.pleaf(-2),
    ),
    baca.hairpin(
        'o< "f" >o',
        forbid_al_niente_to_bar_line=True,
        pieces=baca.lparts([1, 1]),
        selector=baca.leaves()[-2:],
    ),
)

maker(
    ("hp", 8),
    harmony.sixteenths(
        [1, 1, "-"],
        written_eighths=([0, 1],),
        invisible=([1],),
        do_not_rewrite_meter=True,
    ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        pieces=baca.lparts([1, 2]),
        selector=baca.leaves()[:3],
    ),
)

maker(
    ("hp", (7, 8)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[5:10],
    ),
)

# va

maker(
    ("va", 1),
    harmony.appoggiato(
        counts=[5, 0, 0, 0, 0],
        divisions=[4, 12],
        extra_counts=[0, 8],
        prefix_counts=[0, 3],
        prefix_talea=[8, 4, 4],
        tie=[6],
    ),
    baca.note_head_style_harmonic(
        baca.pleaves(grace=False)[:2],
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
    baca.espressivo(
        baca.pheads()[-3:],
    ),
)

maker(
    ("va", 2),
    harmony.sixteenths(
        [4, "+"],
    ),
    baca.espressivo(
        baca.pheads(),
    ),
)

maker(
    ("va", (1, 2)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[7:12],
    ),
)

maker(
    ("va", 4),
    harmony.appoggiato(
        counts=[4],
        fuse=True,
    ),
    baca.new(
        baca.note_head_style_harmonic(),
        map=baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)

maker(
    ("va", 5),
    harmony.sixteenths(
        [6, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        tie=([0],),
    ),
    baca.note_head_style_harmonic(
        baca.pleaves()[:2],
    ),
    baca.espressivo(
        baca.pleaves()[2:],
    ),
)

maker(
    ("va", 6),
    harmony.sixteenths(
        [4, 12, -4],
    ),
    baca.espressivo(
        baca.pheads()[:2],
    ),
    baca.hairpin(
        "mp >o niente",
        selector=baca.leaves()[1:3],
    ),
)

maker(
    ("va", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[2:6],
    ),
)

maker(
    ("va", 7),
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

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths(
        counts=[15, 1],
        do_not_rewrite_meter=True,
        written_wholes=([0],),
        invisible_pairs=True,
    ),
    baca.hairpin(
        "mp >o niente",
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3.5).staff_padding,
        left_broken=True,
    ),
)

maker(
    ("vc1", (4, 5)),
    harmony.appoggiato(
        divisions=[4, 4, 4, 4, 4, 4, 4, 4],
        counts=[4, 0, 0, 0, 0, 0, 0, 0],
        after_graces=[4],
        ),
    baca.new(
        baca.note_head_style_harmonic(),
        map=baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
    baca.espressivo(
        baca.pheads(grace=False)[1:],
    )
)

maker(
    ("vc1", 6),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc1", 8),
    harmony.sixteenths(
        [8, 4, 4, 4, 4],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, 8],
        denominator=None,
    ),
    baca.note_head_style_harmonic(),
    baca.espressivo(
        baca.pheads()[-4:],
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        right_broken=True,
        selector=baca.leaves()[-4:].rleak(),
    ),
)

# vc2

maker(
    ("vc2", 1),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths(
        ["+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", 6),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.dynamic("mp"),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("vc2", 8),
    baca.make_repeat_tied_notes(),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        right_broken=True,
    ),
)

# cb1

maker(
    ("cb1", 1),
    harmony.sixteenths(
        [4, 4, 4, 4],
    ),
    baca.new(
        baca.staff_position(
            -6,
            mock=True,
        ),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.scp_spanner(
            "SCP =|",
            abjad.tweak(3).staff_padding,
            left_broken=True,
        ),
    ),
)

maker(
    ("cb1", (4, 5)),
    harmony.appoggiato(
        counts=[4],
        fuse=True,
        after_graces=[4],
    ),
    baca.new(
        baca.note_head_style_harmonic(),
        map=baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)

maker(
    ("cb1", 6),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.flat_glissando(),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", 8),
    harmony.sixteenths(
        [4, 4, 4, 4],
    ),
    baca.note_head_style_harmonic(),
    baca.espressivo(
        baca.pheads(),
    ),
)

# cb2

maker(
    ("cb2", (1, 2)),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (4, 5)),
    harmony.sixteenths(
        ["+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", 6),
    baca.make_repeated_duration_notes(
        [(1, 4)],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.flat_glissando(),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", 8),
    baca.make_repeat_tied_notes(),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
        right_broken=True,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1"], 2),
    harmony.sixteenths(
        [12],
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

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 7),
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
