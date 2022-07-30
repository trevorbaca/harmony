import abjad
import baca

from harmony import library

#########################################################################################
######################################### 19 [S] ########################################
#########################################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[<R.1]", 2, "#darkgreen"),
    ("[S.2-3]", 4),
    ("[>T.1]", 11, "#darkgreen"),
    ("[S.4]", 12),
    ("[>T.1]", 13, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (5, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator,
    accumulator.manifests(),
    accumulator.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

skips = score["Skips"]
manifests = accumulator.manifests()

for index, item in (
    (1 - 1, "96"),
    (1 - 1, "4:3(4)=4"),
    (2 - 1, "72"),
    (2 - 1, "3:4(4)=4"),
    (4 - 1, "96"),
    (4 - 1, "4:3(4)=4"),
    (11 - 1, "144"),
    (11 - 1, "3:2(4)=4"),
    (12 - 1, "96"),
    (12 - 1, "4.=4"),
    (13 - 1, "144"),
    (13 - 1, "3:2(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark_function(skip, indicator, manifests)

baca.open_volta_function(skips[1 - 1], accumulator.first_measure_number)
baca.close_volta_function(skips[2 - 1], accumulator.first_measure_number)

rests = score["Rests"]
for index, string in (
    (3 - 1, "fermata"),
    (10 - 1, "fermata"),
):
    baca.global_fermata_function(rests[index], string)

# text

baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-eighteen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[10 - 1],
    r"\harmony-text-nineteen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    tags=[baca.tags.NOT_PARTS],
)


def BFL(voice):
    music = library.make_warble_rhythm(
        accumulator.get(1),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 8))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(9),
        [4, 4, 4, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(12),
        extra_counts=[2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 8),
        divisions=[1, 19, 1, 15],
        counts=[0, 5, 0, 6, 0, 7, 0, 8, 0, 9],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        divisions=[16],
        counts=[19],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(12),
        divisions=[20],
        counts=[25],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 1, 11],
        counts=[0, 0, 4],
        rest_after=[-2, -1],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 8),
        divisions=[1, 19, 1, 15],
        counts=[0, 4, 0, 5, 0, 6, 0, 7, 0, 8],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        divisions=[16],
        counts=[18],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(12),
        divisions=[20],
        counts=[24],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"r4. \times 5/4 { c2 }",
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, -20, 2, -24],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [2, -20, 2, -24],
    )
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, -4, 2, 2, 2, 2, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 2, 2, 2, 2],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 6, 2, -4],
        untie=True,
        written_quarters=[0],
        invisible=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (1, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(12),
        [3, -1, -8, "-", 3, -1, -8],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    accumulator(
        ("bfl", 1),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -5),
        ),
        baca.new(
            baca.note_head_font_size(-3),
            baca.accidental_font_size(-3),
            baca.accidental_x_offset(0),
            baca.accidental_y_offset(-2),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_),
                (3, 4),
            ),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", 9),
        baca.pitch("F3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", 12),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -5),
        ),
        baca.new(
            baca.note_head_font_size(-3),
            baca.accidental_font_size(-3),
            baca.accidental_x_offset(0),
            baca.accidental_y_offset(-2),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.hairpin(
            "o< mf >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_),
                (3, 4),
            ),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", [11, 13]),
        baca.pitch("Eb3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    accumulator(
        ("bfl", (1, 13)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 2),
        ),
        baca.dls_staff_padding(
            5,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 2, grace=False),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.accent(selector=lambda _: baca.select.phead(_, 0)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.hairpin(
            "o< mf",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-struck-then-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 8)),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic(
            "ff-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.rest(_, 1),
        ),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 1, grace=False),
        ),
    )
    accumulator(
        ("perc1", (4, 9)),
        library.purpleheart_staff_positions([2]),
    )
    accumulator(
        ("perc1", 12),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.dls_staff_padding(
            5,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
    )
    accumulator(
        ("perc1", [11, 13]),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.slate_staff_position(),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        baca.new(
            library.purpleheart_staff_positions([0]),
            selector=lambda _: baca.select.pleaves(_)[:1],
        ),
        baca.new(
            library.purpleheart_staff_positions([2]),
            selector=lambda _: baca.select.pleaves(_)[1:],
        ),
        baca.dynamic(
            "ff-ancora",
            selector=lambda _: baca.select.rest(_, 1),
        ),
        baca.dls_staff_padding(5),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
    )
    accumulator(
        ("perc2", 2),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.brake_drum_staff_position(),
        baca.damp(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (4, 8)),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 1, grace=False),
        ),
    )
    accumulator(
        ("perc2", (4, 9)),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.rest(_, 1),
        ),
        baca.dls_staff_padding(5),
    )
    accumulator(
        ("perc2", 11),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.slate_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 12),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.dls_staff_padding(
            5,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
    )
    accumulator(
        ("perc2", 13),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.tuplet_bracket_up(),
        library.bass_drum_staff_position(),
        baca.accent(selector=lambda _: baca.select.phead(_, 0)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:]),
        ),
    )


def percs(cache):
    # perc1, perc2
    accumulator(
        (["perc1", "perc2"], [1, (4, 9), 12]),
        baca.new(
            baca.dots_extra_offset((1, 0)),
            baca.dots_x_extent_false(),
            baca.rest_x_extent_zero(selector=lambda _: abjad.select.rest(_, 0)),
            map=lambda x: [
                _
                for _ in abjad.select.rests(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ],
        ),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("hp", 2),
        baca.pitch("G4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (1, 2)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", (4, 9)),
        baca.pitch("<G6 A6 Bb6>"),
        baca.ottava(),
        baca.ottava_bracket_staff_padding(5.5),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak X-offset 3"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 12),
        baca.pitch("<G6 A6 Bb6>"),
        baca.ottava(),
        baca.ottava_bracket_staff_padding(5.5),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak X-offset 4"),
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", [11, 13]),
        baca.pitch("F#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def va(m):
    accumulator(
        ("va", 2),
        baca.tuplet_bracket_up(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| mp |>o niente o<| mp |>o niente o<| mp |>o",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dynamic(
            "niente",
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:])[-1],
        ),
    )
    accumulator(
        ("va", [(1, 2), (4, 9), 12]),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G#5 A5 Bb5>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("va", 12),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("vc1", 2),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("D5"),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", [1, (4, 9), 12]),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G#5 A5 Bb5>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", 12),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )


def vc2(m):
    accumulator(
        ("vc2", [1, (4, 9), 12]),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<A5 Bb5 Cb6>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", 2),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("Btqf4"),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", 12),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("vc2", [11, 13]),
        baca.tuplet_bracket_staff_padding(3),
        baca.new(
            baca.rest_extra_offset(
                (-1.5, 0),
                selector=lambda _: baca.select.rest(_, -1),
            ),
            match=[0],
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", [1, (4, 9), 12]),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<B5 C6 Db6>",
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 2),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("G3"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("cb1", 12),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("cb2", (1, 2)),
        baca.pitch(
            "E5",
            do_not_transpose=True,
        ),
        baca.hairpin(
            "o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 2, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        # TODO: text spanner currently must precede pitched trill spanner; fix
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[1:8],
        ),
        baca.trill_spanner(
            alteration="Fqs5",
        ),
    )
    accumulator(
        ("cb2", (4, 9)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<A#5 B5 C6>",
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", (11, 13)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("cb2", (12, 13)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[4:]),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 1),
        # TODO: promote to music = library.make_sixteenths()
        baca.invisible_music(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| mp |> pp pp <| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dynamic_text_x_offset(
            -3,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.dynamic_text_x_offset(
            -0.25,
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1"], 2),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.new(
            baca.trill_spanner(),
            match=[0, 1],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (4, 9)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< fff-scratch",
        ),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 12),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "fff-scratch",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 12),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 11),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 13),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (11, 13)),
        baca.dls_staff_padding(6),
    )


def main():
    BFL(accumulator.voice("bfl"))
    PERC1(accumulator.voice("perc1"))
    PERC2(accumulator.voice("perc2"))
    HP(accumulator.voice("hp"))
    VA(accumulator.voice("va"))
    VC1(accumulator.voice("vc1"))
    VC2(accumulator.voice("vc2"))
    CB1(accumulator.voice("cb1"))
    CB2(accumulator.voice("cb2"))
    previous_persist = baca.previous_metadata(__file__, file_name="__persist__")
    baca.reapply(accumulator, accumulator.manifests(), previous_persist, voice_names)
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        accumulator.voice_abbreviations,
    )
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    percs(cache)
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)


if __name__ == "__main__":
    main()
    metadata, persist, score, timing = baca.build.section(
        score,
        accumulator.manifests(),
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=accumulator.commands,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[3, 10],
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
