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

# bfl

maker(
    ("bfl", 1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    ),
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
    ("bfl", 7),
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
    ("bfl", 8),
    harmony.sixteenths(
        [1, 1, "-"],
        written_eighths=True,
        invisible_pairs=True,
    ),
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

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.sixteenths(
        [-15, 1],
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
    ),
    baca.staff_position(2),
    baca.dynamic("mp"),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, -11],
    ),
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
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(-0.75).self_alignment_X,
        literal=True,
    ),
    baca.staff_position(2),
    baca.hairpin(
        "f mp",
        selector=baca.pleaves(),
    ),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-19, 1],
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(1).self_alignment_X,
        literal=True,
    ),
    harmony.bass_drum_staff_position(),
    baca.dynamic("mf"),
)

maker(
    ("perc1", 7),
    harmony.sixteenths(
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    ),
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
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(-0.75).self_alignment_X,
        literal=True,
    ),
    baca.staff_position(2),
    baca.dynamic("f"),
)

# perc2

maker(
    ("perc2", (1, 2)),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.dynamic("p"),
)

maker(
    ("perc2", (4, 5)),
    baca.make_repeat_tied_notes(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc2", 6),
    harmony.sixteenths(
        [-19, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptail(-1),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(1).self_alignment_X,
        literal=True,
    ),
    baca.dynamic("mf"),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(
        ["+"],
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(
        hide_middle_stems=True,
        right_broken=True,
        selector=baca.pleaves().rleak(),
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
)
# hp

maker(
    ("hp", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
        ),
    baca.hairpin(
        'o< "f" >o niente',
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
    harmony.whisk_staff_position(),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
)

maker(
    ("hp", 2),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0, 1], 3),
        invisible=([1], 3),
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
    baca.hairpin(
        "p < mf > p",
        pieces=baca.lparts([1, 1 + 1]),
        selector=baca.leaves().rleak(),
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
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dynamic('"f"'),
    baca.dynamic(
        "mf",
        selector=baca.phead(-1),
    ),
)

maker(
    ("hp", 6),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-2, 2, "-", 2],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-pdlt-markup",
        literal=True,
    ),
    baca.dynamic("mp"),
)

maker(
    ("hp", 7),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.staff_position(
        [0, 1],
        mock=True,
    ),
    baca.flageolet(),
    baca.dynamic("mf"),
    baca.laissez_vibrer(),
)

maker(
    ("hp", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths([2, "-"]),
    harmony.whisk_staff_position(),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dynamic('"f"'),
)

# va

maker(
    ("va", 1),
    harmony.appoggiato(
        counts=[9],
    ),
    baca.note_head_style_harmonic(
        baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)

maker(
    ("va", (4, 5)),
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
    ("va", 6),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("va", 7),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
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
    baca.dls_staff_padding(4.5),
)

maker(
    ("va", 8),
    baca.make_repeat_tied_notes(),
    baca.note_head_style_harmonic(),
)

# vc1

maker(
    ("vc1", 1),
    harmony.appoggiato(
        counts=[7],
    ),
    baca.note_head_style_harmonic(
        baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
    ),
)

maker(
    ("vc1", (4, 5)),
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
    ("vc1", 6),
    harmony.sixteenths(
        [-1, 2, "-"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("vc1", 8),
    baca.make_repeat_tied_notes(),
    baca.note_head_style_harmonic(),
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
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs(),
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("vc2", 8),
    baca.make_repeat_tied_notes(),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", 1),
    harmony.appoggiato(
        counts=[5],
    ),
    baca.note_head_style_harmonic(
        baca.pleaves(grace=False),
    ),
    baca.new(
        baca.note_head_style_harmonic(
            baca.pleaves(grace=True),
        ),
        map=baca.pleaves(grace=True).runs(),
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
    baca.flat_glissando(),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.scp_spanner(
        "SCP =|",
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb1", 8),
    baca.make_repeat_tied_notes(),
    baca.note_head_style_harmonic(),
)

# cb2

maker(
    ("cb2", 1),
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
    baca.flat_glissando(),
    baca.staff_position(
        -6,
        mock=True,
    ),
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
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    harmony.sixteenths(
        [12],
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], 7),
    harmony.sixteenths(
        [-4, 8, "-"],
    ),
    baca.hairpin(
        "o<| ff",
        selector=baca.tleaves().rleak(),
    ),
    baca.stop_on_string(
        baca.runs().map(baca.leaves().rleak()[-1]),
    ),
    baca.dls_staff_padding(4.5),
)
