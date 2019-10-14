import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [AA] ####################################
###############################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[◀X.6]", 3, "darkgreen"),
    ("[AA.2-3]", 4),
    ("[◀Y.2]", 6, "darkgreen"),
    ("[▶CC.1]", 7, "darkgreen"),
    ("[AA.4]", 13),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[2, 12],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (7, 4), (1, 4),
        (4, 4), (7, 4), (6, 4),
        (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4), (1, 4),
        (7, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "AA",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("144", baca.skip(1 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("48", baca.skip(3 - 1)),
    baca.metronome_mark("2.=4", baca.skip(3 - 1)),
    baca.metronome_mark("144", baca.skip(4 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("57 3/5", baca.skip(6 - 1)),
    baca.metronome_mark("4:5(2)=4", baca.skip(6 - 1)),
    baca.metronome_mark("72", baca.skip(7 - 1)),
    baca.metronome_mark("5:4(4)=4", baca.skip(7 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("8=4", baca.skip(13 - 1)),
)

maker(
    "Global_Skips",
    baca.open_volta(baca.skip(4 - 1)),
    baca.close_volta(baca.skip(6 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(2 - 1)),
    baca.global_fermata("fermata", baca.rest(12 - 1)),
)

# bfl

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
    ("bfl", (4, 5)),
    harmony.appoggiato(
        divisions=[28, 24],
        counts=[9, 6],
        incise=True,
    ),
    baca.text_spanner(
        "air =|",
        abjad.tweak(5.5).staff_padding,
        autodetect_right_padding=True,
        bookend=False,
        selector=baca.leaves().rleak(),
    ),
)

maker(
    ("bfl", 6),
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

maker(
    ("bfl", (7, 11)),
    harmony.sixteenths(
        [4, 4, 16],
    ),
    baca.new(
        baca.flat_glissando(),
        baca.text_spanner(
            "(T) -> A -> (T)",
            abjad.tweak(5.5).staff_padding,
            pieces=baca.lparts([1, 1 + 1]),
        ),
        baca.hairpin(
            "pp < p > pp",
            pieces=baca.lparts([1, 1 + 1]),
        ),
        map=baca.clparts([3]),
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
)

maker(
    ("bfl", 13),
    harmony.sixteenths(
        [4, "-"],
    ),
    baca.markup(
        r"\baca-jet-whistle-markup",
        literal=True,
    ),
)

# perc1

maker(
    ("perc1", 3),
    harmony.sixteenths(
        [1, -3, 3, -3, 3, -3],
    ),
    harmony.slate_staff_position(),
    baca.markup(
        r"\baca-slate-scrape-markup",
        literal=True,
    ),
    baca.dynamic("p"),
)

maker(
    ("perc1", (4, 5)),
    baca.make_repeat_tied_notes(),
    harmony.brake_drum_staff_position(),
    baca.flat_glissando(),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        literal=True,
    ),
    baca.dynamic("p"),
)

maker(
    ("perc1", 6),
    harmony.sixteenths(
        [1, -23, -1, 1, -22],
    ),
    harmony.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.tweak(-0.75).self_alignment_X,
        abjad.tweak(False).X_extent,
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
)

maker(
    ("perc1", (7, 11)),
    harmony.sixteenths(
        [1, -23, 1, -23, 1, -23, 1, -23, 1, -22, 1],
    ),
    harmony.brake_drum_staff_position(),
    baca.markup(
        r"\baca-brake-drum-markup",
        literal=True,
    ),
    baca.dynamic(
        "f",
        selector=baca.pheads()[:-1],
    ),
    baca.dynamic(
        "mp",
        selector=baca.phead(-1),
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc1", 13),
    baca.make_repeat_tied_notes(),
    harmony.brake_drum_staff_position(),
    baca.markup(
        r"\baca-brake-drum-paper-towel-markup",
        literal=True,
    ),
    baca.dynamic("p"),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.sixteenths(
        [4, -20, 4],
    ),
    baca.accent(
        baca.pheads(),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        literal=True,
    ),
    baca.dynamic("f"),
)

maker(
    ("perc2", (4, 5)),
    harmony.sixteenths(
       [2],
       beam=True,
       fuse=True,
       do_not_rewrite_meter=True,
    ),
    baca.accent(
        baca.pheads(),
    ),
)

maker(
    ("perc2", 6),
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
    baca.markup(
        r"\baca-slate-brush-markup",
        literal=True,
    ),
    baca.hairpin(
        "f >o niente",
        map=baca.runs().map(baca.leaves().rleak()),
    ),
)

maker(
    ("perc2", (7, 11)),
    harmony.sixteenths(
        [1, -23, 1, -23, 1, -23, 1, -23, 1, -22, 1],
    ),
    harmony.bass_drum_staff_position(),
    baca.markup(
        r"\baca-bd-struck-markup",
        literal=True,
    ),
    baca.dynamic(
        "mp",
        selector=baca.pheads(),
    ),
    baca.accent(
        baca.pheads()[:-1],
    ),
    baca.laissez_vibrer(
        baca.ptails()[:-1],
    ),
    baca.damp(
        baca.pleaf(-1),
    ),
)

# hp

maker(
    ("hp", 1),
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
    ("hp", (4, 5)),
    baca.clef("treble"),
    baca.staff_lines(5),
    harmony.sixteenths(
        [4, "-"],
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
    ("hp", (7, 11)),
    harmony.sixteenths(
        [1, -23, 1, -23, 1, -23, 1, -23, 1, -22, 1],
    ),
    baca.markup(
        r"\baca-soundboard-pizz-markup",
        literal=True,
    ),
    baca.dynamic(
        "f",
        selector=baca.pheads()[:-1],
    ),
    baca.dynamic(
        "mp",
        selector=baca.phead(-1),
    ),
    baca.accent(
        baca.pheads(),
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
    ("va", 3),
    harmony.sixteenths(
        [2, 5, 9],
    ),
)

maker(
    ("va", (4, 5)),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

maker(
    ("va", 6),
    harmony.tessera_4(4),
    baca.dynamic("pp"),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("va", 13),
    baca.make_notes(),
    baca.bow_speed_spanner(
        "XFB =|",
        abjad.tweak(3).staff_padding,
    ),
    baca.dynamic("mp"),
)

# vc1

sixteenths = baca.sequence([6, -2, 4, -2, 4, -2, 2, -2])

maker(
    ("vc1", 3),
    harmony.sixteenths(
        [12, 4],
    ),
)

maker(
    ("vc1", 4),
    harmony.sixteenths(
        sixteenths[:4] + ["-"],
    )
)

maker(
    ("vc1", 5),
    harmony.sixteenths(
        sixteenths,
    ),
)

maker(
    ("vc1", 6),
    harmony.tessera_4(3),
    baca.hairpin(
        "pp -- ! < mp >",
        pieces=baca.plts(),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("vc1", 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.make_notes(),
    baca.staff_position(0),
    baca.dynamic("p"),
)

# vc2

maker(
    ("vc2", 3),
    harmony.sixteenths(
        [5, 5, 6],
    ),
)

maker(
    ("vc2", 4),
    harmony.sixteenths(
        sixteenths.rotate(-2)[:4] + ["-"],
    ),
)

maker(
    ("vc2", 5),
    harmony.sixteenths(
        sixteenths.rotate(-2),
    ),
)

maker(
    ("vc2", 6),
    harmony.tessera_4(2),
    baca.hairpin(
        "pp -- ! < mp -- ! >",
        bookend=False,
        pieces=baca.lparts([1, 2, 3, 2]),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("vc2", 13),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# cb1

maker(
    ("cb1", 3),
    harmony.sixteenths(
        [10, 5, 1],
    ),
)

maker(
    ("cb1", 4),
    harmony.sixteenths(
        sixteenths.rotate(-4)[:4] + ["-"],
    ),
)

maker(
    ("cb1", 5),
    harmony.sixteenths(
        sixteenths.rotate(-4),
    ),
)

maker(
    ("cb1", 6),
    harmony.tessera_4(1),
    baca.hairpin(
        "pp -- ! < mp >",
        bookend=False,
        pieces=baca.lparts([2, 3, 2]),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("cb1", 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    baca.make_notes(),
    baca.staff_position(0),
    baca.dynamic("p"),
)

# cb2

maker(
    ("cb2", 3),
    harmony.sixteenths(
        [4, 6, 6],
    ),
)

maker(
    ("cb2", 4),
    harmony.sixteenths(
        sixteenths.rotate(-6)[:4] + ["-"],
        ),
)

maker(
    ("cb2", 5),
    harmony.sixteenths(
        sixteenths.rotate(-6),
    ),
)

maker(
    ("cb2", 6),
    harmony.tessera_4(0),
    baca.hairpin(
        "pp -- ! < mp >",
        pieces=baca.lparts([2, 1, 1]),
    ),
    baca.flat_glissando(),
    baca.staff_position(
        [-1, 0, 1],
        mock=True,
    ),
)

maker(
    ("cb2", 13),
    baca.make_notes(),
    baca.dynamic("p"),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

# va, vc1, vc2, cb1, cb2

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
    (["va", "vc1", "vc2", "cb1", "cb2"], 6),
    baca.markup(
        r"\baca-quasi-bisb-markup",
        literal=True,
    ),
    baca.stem_tremolo(
        baca.pleaves().get([0, -1]),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (7, 11)),
    harmony.sixteenths(
        [4, 4, 16],
        written_halves=([0, 1], 3),
        invisible=([1], 3),
        tie_all=True,
    ),
    baca.trill_spanner(
        abjad.tweak(3).bound_details__right__padding,
    ),
    baca.hairpin(
        "pp < p > pp",
        map=baca.clparts([3]),
        pieces=baca.lparts([1, 1 + 1]),
    ),
)

# vc1, vc2, cb1, cb2

maker(
    (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)
