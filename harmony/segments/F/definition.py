import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [F] #####################################
###############################################################################

stage_markup = (
    ("[F.1]", 1),
    ("[▶G.1]", 3, "darkgreen"),
    ("[F.2]", 4),
    ("[▶G.1]", 5, "darkgreen"),
    ("[F.3-4]", 6),
    ("[◀C.4]", 8, "darkgreen"),
    ("[F.5-6]", 10),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[2, 9],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (5, 4), (1, 4),
        (4, 4), (4, 4), (4, 4),
        (5, 4), (4, 4), (3, 4), (1, 4),
        (5, 4), (4, 4), (5, 4), (4, 4), (5, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=15,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "F",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("48", baca.skip(1 - 1)),
    baca.metronome_mark("2=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(3 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("48", baca.skip(4 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
    baca.metronome_mark("48", baca.skip(6 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(6 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(8 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(8 - 1)),
    baca.metronome_mark("48", baca.skip(10 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(10 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(9 - 1)),
)

# bfl

maker(
    ("bfl", 3),
    harmony.sixteenths(
        [2, 2, -6, 2, 2],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
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
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.leaves()[-2:].rleak(),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", 4),
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
        pieces=baca.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", (3, 4)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[3:7].rleak(),
    ),
)

maker(
    ("bfl", 5),
    harmony.sixteenths(
        [2, 2, -6, 2, 2],
        preprocessor=baca.sequence().fuse().split_divisions([(1, 4), (3, 4)]),
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
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
    baca.hairpin(
        "o<| f |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=baca.clparts([1]),
        selector=baca.leaves()[-2:].rleak(),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", 6),
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
        pieces=baca.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", (5, 6)),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[3:7].rleak(),
    ),
)

maker(
    ("bfl", 7),
    harmony.sixteenths(
        [-6, -4, 1, -5, 1, -1],
        preprocessor=baca.sequence().fuse().split_divisions([(3, 8), (5, 8)]),
        extra_counts=[0, 2],
        denominator=None,
    ),
)

maker(
    ("bfl", 8),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
)

maker(
    ("bfl", (7, 8)),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.covered_spanner(
        abjad.tweak(3).staff_padding,
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        argument="MM (with accel.) =|",
        selector=baca.leaves()[3:].rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
    harmony.sixteenths(
        [16, "-", 1],
    ),
    baca.new(
        harmony.triangle_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(),
        selector=baca.pleaves()[:1],
    ),
    baca.damp(
        baca.rest(0),
    ),
    baca.new(
        harmony.bass_drum_staff_position(),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.tweak(1).self_alignment_X,
            literal=True,
        ),
        baca.accent(
            baca.pheads(),
        ),
        baca.damp(),
        baca.dynamic("mp"),
        selector=baca.pleaf(-1),
    ),
)

maker(
    ("perc1", 3),
    baca.staff_lines(3),
    harmony.sixteenths(
        [-15, 1],
    ),
    baca.staff_position(2),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc1", 4),
    baca.staff_lines(1),
    harmony.sixteenths(
        [-3, 6, "-"],
    ),
    harmony.bass_drum_staff_position(),
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
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 5),
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
    ("perc1", 6),
    baca.staff_lines(1),
    harmony.sixteenths(
        ["-", 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.accent(
        baca.phead(-1),
    ),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-bd-superball-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
    ),
)

maker(
    ("perc1", 8),
    baca.staff_lines(3),
    harmony.phjc(
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    ),
    baca.staff_positions(
        [-2, 0, -2, 0, 0],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3.5),
)

maker(
    ("perc1", 10),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, "-"],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< mf",
        selector=baca.tleaves().rleak(),
    ),
    baca.markup(
        r"\baca-bd-superball-markup",
        literal=True,
    ),
)

maker(
    ("perc1", 11),
    harmony.sixteenths(
        ["-", 3, -4],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< f",
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("perc1", 15),
    harmony.sixteenths(
        ["-", 6],
    ),
    harmony.bass_drum_staff_position(),
    baca.hairpin(
        "o< ff",
        selector=baca.tleaves().rleak(),
    ),
)

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [16, "-"],
    ),
    baca.new(
        harmony.tam_tam_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(),
        selector=baca.pleaves(),
    ),
    baca.damp(
        baca.rest(0),
    ),
)

maker(
    ("perc2", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
)

maker(
    ("perc2", 4),
    harmony.sixteenths(
        [9, "-"],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    harmony.tam_tam_staff_position(),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("perc2", 5),
    harmony.sixteenths(
        [-4, "+"],
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic("p"),
)

maker(
    ("perc2", (6, 7)),
    harmony.sixteenths(
        [-19, 1, "-"],
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.tweak(0.75).self_alignment_X,
        literal=True,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptail(-1),
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic("mf"),
)

maker(
    ("perc2", 8),
    baca.staff_lines(3),
    harmony.phjc(
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    ),
    baca.staff_positions(
        [-2, 0, 0, -2, 0],
        allow_repeats=True,
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.stem_down(),
    baca.tuplet_bracket_down(),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("perc2", 10),
    baca.staff_lines(1),
    harmony.sixteenths(
        [1, "-"],
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
    ("perc2", 11),
    harmony.sixteenths(
        ["-", 1, -1],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc2", 14),
    harmony.sixteenths(
        ["-", 1, -2],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc2", 15),
    harmony.sixteenths(
        ["-", 1, -5],
    ),
    harmony.brake_drum_staff_position(),
    baca.accent(
        baca.pheads(),
    ),
)

# hp

maker(
    ("hp", 1),
    baca.clef("bass"),
    harmony.sixteenths(
        [-10, 6, "-"],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
    baca.dynamic("mp"),
)

maker(
    ("hp", 3),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
        ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("hp", 4),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [9, "-"],
    ),
    baca.staff_position(
        -6,
        mock=True,
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
    ("hp", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
        ),
    harmony.whisk_staff_position(),
    baca.hairpin(
        'o< "f" >o niente',
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dls_staff_padding(5.5),
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
    ("hp", 8),
    baca.clef("bass"),
    harmony.sixteenths(
        [10, -2],
    ),
    baca.chunk(
        baca.staff_position(-14, mock=True),
        baca.no_ledgers(),
        baca.ottava_bassa(),
    ),
    baca.tenuto(
        baca.pheads(),
    ),
    baca.damp(
        baca.ptails().map(baca.rleak()[-1]),
    ),
)

maker(
    ("hp", 10),
    baca.clef("treble"),
    harmony.tuplet(
        [(-1, 1, -8, 1)],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 11),
    harmony.tuplet(
        [(-4, 1)],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 12),
    harmony.tuplet(
        [(1, 1, -1, 1, -1, -6)],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 13),
    harmony.tuplet(
        [(-4, 1, 1)],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 14),
    harmony.tuplet(
        [(1, 1, 1, 1, 1, -7)],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

maker(
    ("hp", 15),
    harmony.tuplet(
        [(-5, 1, 1, 1, 1, 1, -2)],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
)

# va

maker(
    ("va", 1),
    harmony.sixteenths([3, "-"]),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.metric_modulation_spanner(
        abjad.tweak(8).staff_padding,
        selector=baca.leaves()[:3],
    ),
    baca.dynamic("mp"),
)

maker(
    ("va", 3),
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
    ("va", 4),
    harmony.sixteenths(["-", 2, -3]),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("va", 5),
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
    ("va", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
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
    ("va", 8),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

maker(
    ("va", 10),
    baca.clef("alto"),
    baca.staff_lines(5),
)

maker(
    ("va", (10, 15)),
    harmony.sixteenths(
        [-5, 2, -5, 3, -10, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs()[:-1],
        selector=baca.tleaves().rleak(),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs()[-1:],
        selector=baca.tleaves().rleak(),
    ),
)

# vc1

maker(
    ("vc1", 1),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("vc1", 3),
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
    ("vc1", 4),
    harmony.sixteenths(
        ["-", 2, -3],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc1", 5),
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
    ("vc1", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
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
    baca.staff_lines(1),
    baca.clef("percussion"),
    harmony.sixteenths(
        [1, -3, 1, "-"],
        extra_counts=[1],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc1", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
)

maker(
    ("vc1", (10, 15)),
    harmony.sixteenths(
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs()[:-1],
        selector=baca.tleaves().rleak(),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs()[-1:],
        selector=baca.tleaves().rleak(),
    ),
)

# vc2

maker(
    ("vc2", 1),
    harmony.sixteenths(
        [3, "-"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic("mp"),
)

maker(
    ("vc2", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        ["-", 2, -3],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        selector=baca.tleaves().rleak(),
    ),
    baca.dynamic(
        "mp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("vc2", 5),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", (6, 7)),
    harmony.sixteenths(
        [-1, 2, "-", 3, -2],
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
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(0, 1, mock=True),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.runs(),
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("vc2", (10, 15)),
    harmony.sixteenths(
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        autodetect_right_padding=False,
        map=baca.runs()[:-1],
        selector=baca.tleaves().rleak(),
    ),
    baca.bow_speed_spanner(
        "scr. =|",
        abjad.tweak(3).staff_padding,
        map=baca.runs()[-1:],
        selector=baca.tleaves().rleak(),
    ),
)

# cb1

maker(
    ("cb1", 1),
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
    ("cb1", 3),
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
    ("cb1", (4, 7)),
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
    baca.staff_lines(1),
    baca.clef("percussion"),
    harmony.sixteenths(
        [-4, 1, -4, 1, "-"],
    ),
    baca.staff_position(0),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic(
        "sfp-ancora",
        abjad.tweak(-0.75).self_alignment_X,
    ),
)

maker(
    ("cb1", 10),
    baca.clef("bass"),
    baca.staff_lines(5),
)

maker(
    ("cb1", (10, 15)),
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

# cb2

maker(
    ("cb2", 1),
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
    ("cb2", 3),
    harmony.sixteenths(
        [-4, "+"],
    ),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (4, 7)),
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
    harmony.sixteenths(
        [10, -2],
        untie=True,
        after_graces=[1],
    ),
    baca.new(
        baca.interpolate_staff_positions(0, 1, mock=True),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        map=baca.runs(),
    ),
    baca.stem_tremolo(
        baca.pleaves(grace=False),
    ),
)

maker(
    ("cb2", (10, 15)),
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
