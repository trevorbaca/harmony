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
    harmony.sixteenths([2, 2, "-"]),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< f >o niente",
        map=baca.clparts([3]),
        pieces=baca.clparts([1]),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", (4, 5)),
    harmony.sixteenths([1, 1, -28, 1, 1]),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.clparts([1]),
        selector=baca.leaves()[-2:].rleak(),
    ),
    baca.dls_staff_padding(5.5),
)

maker(
    ("bfl", 8),
    harmony.sixteenths([1, 1, "-"]),
    baca.stem_tremolo(baca.pleaves()),
    baca.hairpin(
        "o< f >o niente",
        pieces=baca.clparts([1]),
        selector=baca.leaves()[:3],
    ),
    baca.dls_staff_padding(5.5),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    harmony.sixteenths([-15, 1]),
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
)

maker(
    ("perc1", (4, 5)),
    baca.staff_lines(3),
    harmony.sixteenths([1, -16, 1, "-"]),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.tweak(-0.75).self_alignment_X,
        literal=True,
    ),
    baca.staff_position(2),
    baca.hairpin("f mp", selector=baca.pleaves()),
)

maker(
    ("perc1", 6),
    baca.staff_lines(1),
)

maker(
    ("perc1", 8),
    baca.staff_lines(3),
    harmony.sixteenths([1, "-"]),
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
    harmony.sixteenths([-4, "+"]),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.flat_glissando(hide_middle_stems=True),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("p"),
)

maker(
    ("perc2", (4, 5)),
    baca.make_repeat_tied_notes(),
    baca.flat_glissando(hide_middle_stems=True),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.dynamic("p-ancora", abjad.tweak(-0.75).self_alignment_X),
)

maker(
    ("perc2", 8),
    harmony.sixteenths(["+"]),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    harmony.tam_tam_staff_position(),
    baca.stem_tremolo(baca.pleaves()),
    baca.dynamic("p"),
)
# hp

maker(
    ("hp", 1),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths(
        [2, 2, "-"],
        #rmakers.invisible_music(baca.pleaves().get([1], 2)),
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
)

maker(
    ("hp", (4, 5)),
    baca.clef("percussion"),
    baca.staff_lines(1),
    harmony.sixteenths([2, -28, 2]),
    harmony.whisk_staff_position(),
    baca.markup(
        r"\baca-whisk-markup",
        abjad.tweak(5.5).staff_padding,
        literal=True,
    ),
    baca.dynamic('"f"'),
    baca.dynamic("mf", selector=baca.phead(-1)),
)

maker(
    ("hp", (6, 7)),
    baca.clef("treble"),
    baca.staff_lines(5),
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
    harmony.appoggiato(counts=[9]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)

maker(
    ("va", (4, 5)),
    harmony.appoggiato(counts=[4], fuse=True, after_graces=[4]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)

maker(
    ("va", 8),
    baca.make_repeat_tied_notes(),
    baca.note_head_style_harmonic(),
)

# vc1

maker(
    ("vc1", 1),
    harmony.appoggiato(counts=[7]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)

maker(
    ("vc1", (4, 5)),
    harmony.appoggiato(counts=[4], fuse=True, after_graces=[4]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)

maker(
    ("vc1", 8),
    baca.make_repeat_tied_notes(),
    baca.note_head_style_harmonic(),
)

# vc2

maker(
    ("vc2", 1),
    harmony.sixteenths([-4, "+"]),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("vc2", (4, 5)),
    harmony.sixteenths(["+"]),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
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
    harmony.appoggiato(counts=[5]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
    ),
)

maker(
    ("cb1", (4, 5)),
    harmony.appoggiato(counts=[4], fuse=True, after_graces=[4]),
    baca.literal(
        r"\once \override NoteHead.style = #'harmonic",
        baca.pleaves(),
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
    harmony.sixteenths([-4, "+"]),
    baca.damp_spanner(
        abjad.tweak(3).staff_padding,
    ),
)

maker(
    ("cb2", (4, 5)),
    harmony.sixteenths(["+"]),
    baca.damp_spanner(
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

