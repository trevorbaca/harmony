import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [Y] #####################################
###############################################################################

stage_markup = (
    ("[▶AA.1]", 1, "darkgreen"),
    ("[Y.1]", 2),
    ("[◀X.6]", 3, "darkgreen"),
    ("[Y.2]", 5),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[4, 11],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (6, 4), (4, 4), (1, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
    ],
    transpose_score=True,
    validate_measure_count=11,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "Y",
        baca.skip(2 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(8)=4", baca.skip(1 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(2 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(2 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("5:6(4)=4", baca.skip(3 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(5 - 1)),
    baca.metronome_mark("6:5(4)=4", baca.skip(5 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(4 - 1)),
    baca.global_fermata("fermata", baca.rest(11 - 1)),
)

# bfl

maker(
    ("bfl", 2),
    harmony.warble(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
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
    ),
    baca.dls_staff_padding(5),
)

maker(
    ("bfl", 3),
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
    ("bfl", (5, 10)),
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

# perc1

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [1, -3, 3, -3, 3, -3],
    ),
    harmony.slate_staff_position(),
    baca.dynamic("p"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (5, 10)),
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

# perc2

maker(
    ("perc2", 1),
    harmony.sixteenths(
        [4, -20, 4],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.dynamic("f"),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
)

maker(
    ("perc2", 2),
    baca.staff_lines(1),
)

maker(
    ("perc2", (5, 10)),
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

# hp

maker(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-24, 4],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.laissez_vibrer(
        baca.ptails(),
    ),
    baca.markup(
        r"\baca-pince-markup",
        literal=True,
    ),
    baca.dynamic("mp"),
)

maker(
    ("hp", 3),
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
    ("hp", (5, 10)),
    baca.clef("bass"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [-24, -1, 3, -20],
    ),
    baca.staff_position(
        -6,
        mock=True,
    ),
    baca.accent(
        baca.pheads(),
        ),
    baca.laissez_vibrer(
        baca.ptails(),
        ),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak(False).X_extent,
    ),
    baca.markup(
        r"\baca-lv-into-fermata-markup",
        literal=True,
        selector=baca.phead(-1),
    ),
)

# va

maker(
    ("va", 1),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("va", 2),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("va", 3),
    harmony.sixteenths(
        [2, 5, 9],
    ),
)

maker(
    ("va", (5, 10)),
    harmony.tessera_4(4),
    baca.chunk(
        baca.staff_position(
            [-1, 0, 1],
            mock=True,
        ),
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f -- ! > mf < ff --"
            " ! >o niente",
            pieces=baca.plts(),
            selector=baca.leaves().rleak(),
        ),
        baca.flat_glissando(),
    ),
)

# vc1

maker(
    ("vc1", 2),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("vc1", 3),
    harmony.sixteenths(
        [12, 4],
    ),
)

maker(
    ("vc1", (5, 10)),
    harmony.tessera_4(3),
    baca.chunk(
        baca.staff_position(
            [-1, 0, 1],
            mock=True,
        ),
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f -- ! > mf < ff --"
            " ! >o niente",
            pieces=baca.plts(),
            selector=baca.leaves().rleak(),
        ),
        baca.flat_glissando(),
    ),
)

# vc2

maker(
    ("vc2", 2),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("vc2", 3),
    harmony.sixteenths(
        [5, 5, 6],
    ),
)

maker(
    ("vc2", (5, 10)),
    harmony.tessera_4(2),
    baca.chunk(
        baca.staff_position(
            [-1, 0, 1],
            mock=True,
        ),
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f -- ! > mf < ff --"
            " ! >o niente",
            pieces=baca.plts(),
            selector=baca.leaves().rleak(),
        ),
        baca.flat_glissando(),
    ),
)

# cb1

maker(
    ("cb1", 2),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("cb1", 3),
    harmony.sixteenths(
        [10, 5, 1],
    ),
)

maker(
    ("cb1", (5, 10)),
    harmony.tessera_4(1),
    baca.chunk(
        baca.staff_position(
            [-1, 0, 1],
            mock=True,
        ),
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f -- ! > mf < ff --"
            " ! >o niente",
            pieces=baca.plts(),
            selector=baca.leaves().rleak(),
        ),
        baca.flat_glissando(),
    ),
)

# cb2

maker(
    ("cb2", 2),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("cb2", 3),
    harmony.sixteenths(
        [4, 6, 6],
    ),
)

maker(
    ("cb2", (5, 10)),
    harmony.tessera_4(0),
    baca.chunk(
        baca.staff_position(
            [-1, 0, 1],
            mock=True,
        ),
        baca.hairpin(
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f -- ! > mf < ff --"
            " ! >o niente",
            pieces=baca.plts(),
            selector=baca.leaves().rleak(),
        ),
        baca.flat_glissando(),
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 2),
    baca.make_notes(),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
    baca.stem_tremolo(
        baca.pleaves(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 3),
    baca.stem_tremolo(
        baca.pleaves(),
        ),
    baca.accent(
        baca.pheads()[1:],
    ),
    baca.dynamic("pp"),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (5, 10)),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
)
