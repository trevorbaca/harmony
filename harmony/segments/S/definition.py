import abjad
import baca
import harmony
import os
from abjadext import rmakers


###############################################################################
##################################### [S] #####################################
###############################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[◀R.1]", 2, "darkgreen"),
    ("[S.2-3]", 4),
    ("[▶T.1]", 11, "darkgreen"),
    ("[S.4]", 12),
    ("[▶T.1]", 13, "darkgreen"),
)

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.LOCAL_MEASURE_NUMBER,
        abjad.tags.STAGE_NUMBER,
    ],
    fermata_measure_empty_overrides=[3, 10],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    stage_markup=stage_markup,
    time_signatures=[
        (4, 4), (4, 4), (1, 4),
        (5, 4), (4, 4), (5, 4), (4, 4), (5, 4), (4, 4), (1, 4),
        (4, 4), (5, 4), (4, 4),
    ],
    transpose_score=True,
    validate_measure_count=13,
)

maker(
    "Global_Skips",
    baca.rehearsal_mark(
        "S",
        baca.skip(1 - 1),
        abjad.tweak((0, 18)).extra_offset,
    ),
    baca.chunk(
        baca.open_volta(baca.skip(1 - 1)),
        baca.close_volta(baca.skip(2 - 1)),
    ),
)

maker(
    "Global_Skips",
    baca.metronome_mark("96", baca.skip(1 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(1 - 1)),
    baca.metronome_mark("72", baca.skip(2 - 1)),
    baca.metronome_mark("3:4(4)=4", baca.skip(2 - 1)),
    baca.metronome_mark("96", baca.skip(4 - 1)),
    baca.metronome_mark("4:3(4)=4", baca.skip(4 - 1)),
    baca.metronome_mark("144", baca.skip(11 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(11 - 1)),
    baca.metronome_mark("96", baca.skip(12 - 1)),
    baca.metronome_mark("4.=4", baca.skip(12 - 1)),
    baca.metronome_mark("144", baca.skip(13 - 1)),
    baca.metronome_mark("3:2(4)=4", baca.skip(13 - 1)),
)

maker(
    "Global_Rests",
    baca.global_fermata("fermata", baca.rest(3 - 1)),
    baca.global_fermata("fermata", baca.rest(10 - 1)),
)

# bfl

maker(
    ("bfl", 1),
    harmony.thirty_seconds(
        rmakers.force_rest(baca.tuplet(1)),
        divisions=[2],
        extra_counts=[2],
    ),
    baca.pitches("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3"),
    baca.trill_spanner(
        None,
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mp >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    ("bfl", 12),
    harmony.thirty_seconds(
        divisions=[5],
        extra_counts=[2],
    ),
    baca.pitches("G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3"),
    baca.trill_spanner(
        None,
        abjad.tweak(r"\harmony-d-d-sharp", literal=True).bound_details__left__text,
        abjad.tweak(8, literal=True).staff_padding,
        selector=baca.tleaves(),
    ),
    baca.hairpin(
        "o< mf >o niente",
        pieces=baca.leaves().partition_by_ratio((3, 4)),
        selector=baca.tleaves().rleak(),
    ),
)

# perc1

maker(
    ("perc1", 1),
    baca.staff_lines(3),
    baca.clef("percussion"),
    harmony.rest_appoggiato([0, 5], [5, 11]),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
)

maker(
    ("perc1", 2),
    baca.staff_lines(1),
)

maker(
    ("perc1", (4, 8)),
    baca.staff_lines(3),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
    harmony.rest_appoggiato([0, 5, 0, 6, 0, 7, 0, 8, 0, 9], [1, 19, 1, 15]),
)

maker(
    ("perc1", 9),
    harmony.rest_appoggiato([19], [16]),
)

maker(
    ("perc1", 11),
    baca.staff_lines(1),
)

maker(
    ("perc1", 12),
    baca.staff_lines(3),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
    harmony.rest_appoggiato([25], [20]),
)

maker(
    ("perc1", 13),
    baca.staff_lines(1),
)

# perc2

maker(
    ("perc2", 1),
    baca.staff_lines(3),
    harmony.rest_appoggiato([0, 4], [5, 11]),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
)

maker(
    ("perc2", 2),
    baca.staff_lines(1),
)

maker(
    ("perc2", (4, 8)),
    baca.staff_lines(3),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
    harmony.rest_appoggiato([0, 4, 0, 5, 0, 6, 0, 7, 0, 8], [1, 19, 1, 15]),
)

maker(
    ("perc2", 9),
    harmony.rest_appoggiato([18], [16]),
)

maker(
    ("perc2", 11),
    baca.staff_lines(1),
)

maker(
    ("perc2", 12),
    baca.staff_lines(3),
    baca.markup(r"\baca-purpleheart-markup", literal=True),
    harmony.rest_appoggiato([24], [20]),
)

maker(
    ("perc2", 13),
    baca.staff_lines(1),
)

# hp

maker(
    ("hp", 1),
    harmony.sixteenths(
        [2, 2, 2, 2, 2, 2, -99],
        None,
        rmakers.written_duration((1, 4)),
        rmakers.invisible_music(baca.pleaves().get([1], 2)),
        rmakers.repeat_tie(baca.pleaves()[1:]),
        rmakers.unbeam(),
    ),
    baca.stem_tremolo(baca.pleaves()),
    baca.markup(r"\baca-bisb-markup", literal=True),
    baca.hairpin(
        "o< mp > pp -- ! < mp >o niente",
        pieces=baca.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
    # note that chord erases duration multipliers on notes;
    # fix before pitch application
    baca.pitch("B4"),
)

maker(
    ("hp", (4, 9)),
    baca.make_notes(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.markup(r"\baca-bisb-markup", literal=True),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

maker(
    ("hp", 12),
    baca.make_notes(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.markup(r"\baca-bisb-markup", literal=True),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

# va

maker(
    ("va", 1),
    # chord pitches cause duration multipliers to go missing
)

maker(
    ("va", (4, 9)),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

maker(
    ("va", 12),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

# vc1

maker(
    ("vc1", 1),
    # chord pitches cause duration multipliers to go missing
)

maker(
    ("vc1", (4, 9)),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

maker(
    ("vc1", 12),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

# vc2

maker(
    ("vc2", 1),
    # chord pitches cause duration multipliers to go missing
)

maker(
    ("vc2", (4, 9)),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

maker(
    ("vc2", 12),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

# cb1

maker(
    ("cb1", 1),
    # chord pitches cause duration multipliers to go missing
)

maker(
    ("cb1", (4, 9)),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

maker(
    ("cb1", 12),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

# cb2

maker(
    ("cb2", 1),
    # chord pitches cause duration multipliers to go missing
)

maker(
    ("cb2", (4, 9)),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

maker(
    ("cb2", 12),
    baca.flat_glissando(
        [
            abjad.StaffPosition(-1),
            abjad.StaffPosition(0),
            abjad.StaffPosition(1),
        ],
        mock=True,
        hide_middle_stems=True,
    ),
)

# va, vc1, vc2, cb1, cb2

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 1),
    harmony.sixteenths(
        [2, 2, 2, 2, 2, 2, -99],
        None,
        rmakers.written_duration((1, 4)),
        rmakers.repeat_tie(baca.pleaves()[1:]),
        rmakers.unbeam(),
    ),
    baca.invisible_music(baca.pleaves().get([1], 2)),
    baca.stem_tremolo(baca.pleaves()),
    baca.markup(r"\baca-quasi-bisb-markup", literal=True),
    baca.hairpin(
        "o< mp > pp -- ! < mp >o niente",
        pieces=baca.lparts([1, 1, 2, 1, 1 + 1]),
        selector=baca.tleaves().rleak(),
    ),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 9)),
    baca.make_notes(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.markup(r"\baca-quasi-bisb-markup", literal=True),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 12),
    baca.make_notes(),
    baca.stem_tremolo(baca.pleaves().get([0, -1])),
    baca.markup(r"\baca-quasi-bisb-markup", literal=True),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 11),
    baca.staff_lines(1),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 12),
    baca.staff_lines(5),
)

maker(
    (["va", "vc1", "vc2", "cb1", "cb2"], 13),
    baca.staff_lines(1),
)
