import abjad
import baca

from harmony import library

#########################################################################################
######################################### 02 [B] ########################################
#########################################################################################

stage_markup = (
    ("[B.1-5]", 1),
    ("[<A.2]", 6, "#darkgreen"),
    ("[>C.1]", 7, "#darkgreen"),
    ("[B.6]", 8),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (5, 4),
        (5, 4),
        (5, 4),
        (1, 4),
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
    (1 - 1, "144"),
    (1 - 1, "5:4(8)=4"),
    (6 - 1, "96"),
    (6 - 1, "4.=4"),
    (7 - 1, "57 3/5"),
    (7 - 1, "3:5(4)=4"),
    (8 - 1, "144"),
    (8 - 1, "5:4(8)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

baca.markup_function(
    skips[12 - 1],
    r"\harmony-text-one",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
)

rests = score["Rests"]
for index, string in ((12 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

divisions = [16, 20, 12, 12, 12, 16]
sixteenths = [(2, 2, _ - 4) for _ in divisions]
sixteenths = abjad.sequence.flatten(sixteenths)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 5),
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(6),
        divisions=[12, 8],
        counts=[8, 4],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        library.cerulean()[1:],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8, 11),
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12))
    voice.extend(music)


def PERC1(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 5),
        counts=[4, 4, 4, 4, 4, 0, 0, 0],
        divisions=[16, 20, 16, 20, 10, 6],
        prefix_talea=[2, 3],
        prefix_counts=[0, 0, 0, 0, 0, 2],
        rest_after=[0, 1, 2, 3, 4],
        tie=[-2],
        written_quarters=[-2],
        invisible=[-1],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(7),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(8, 11),
        counts=[7],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12))
    voice.extend(music)


def PERC2(voice):
    music = baca.make_repeat_tied_notes(accumulator.get(1, 3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        ["-", 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(7),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9, 10))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(11),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12))
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 5),
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [10, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8, 11),
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12))
    voice.extend(music)


def VA(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 5),
        divisions=[16, 12, 16, 12, 16, 16],
        counts=[2, 3, 4, 5, 6, 7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(6),
        divisions=[8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        library.cerulean()[1:],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12), head=voice.name)
    voice.extend(music)


def VC1(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 4),
        divisions=[12, 16, 12, 16, 16, 16],
        counts=[3, 4, 5, 6, 7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = baca.make_skeleton(
        r" \times 5/3 { c4 c4 c4 }",
    )
    pleaf = baca.select.pleaf(music, 0)
    baca.repeat_tie_function(pleaf)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [5, -5, 1, "-"],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12), head=voice.name)
    voice.extend(music)


def VC2(voice):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(15, 8), (3, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [20, "-"],
        preprocessor=preprocessor,
        denominator=None,
        do_not_rewrite_meter=True,
        extra_counts=[-6],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3, 5),
        divisions=[8, 16, 12, 16],
        counts=[4, 5, 6, 7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(6),
        divisions=[12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [10, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12), head=voice.name)
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, -2, 2, -2, "-"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(2, 5),
        divisions=[16, 16, 12, 16, 12],
        counts=[5, 6, 7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [10, 4, 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        library.cerulean()[1:],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12), head=voice.name)
    voice.extend(music)


def CB2(voice):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(15, 8), (3, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [20, "-"],
        preprocessor=preprocessor,
        denominator=None,
        do_not_rewrite_meter=True,
        extra_counts=[-6],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3, 5),
        divisions=[8, 16, 12, 16],
        counts=[6, 7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(6),
        divisions=[12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [10, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12), head=voice.name)
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", (1, 5)),
        baca.pitch("Ab4"),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, 1], 3),
        ),
        baca.hairpin(
            "p <| mf |> p",
            map=lambda _: baca.select.clparts(_, [3]),
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.dls_staff_padding(3),
    )
    accumulator(
        ("bfl", 6),
        baca.pitches(
            "A3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_a(),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: abjad.select.get(
                baca.select.pheads(_, grace=False), [0, 2]
            ),
        ),
        baca.dynamic(
            "mf-mp",
            selector=lambda _: abjad.select.get(
                baca.select.pheads(_, grace=False), [1, 3]
            ),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("bfl", 7),
        baca.pitch("F3"),
        baca.dynamic("mf"),
        baca.dls_staff_padding(3),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            argument=r"\baca-cov-markup =|",
        ),
    )
    accumulator(
        ("bfl", (8, 11)),
        baca.pitch("Ab4"),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.plts(_), [0, 1], 3),
        ),
        baca.hairpin(
            "p <| mp |> p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=8,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "p <| mf |> p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=9,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "p <| f |> p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=10,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "p <| ff |> p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=11,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.dls_staff_padding(3),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 5)),
        baca.staff_position(
            -2,
            selector=lambda _: baca.select.leaves(_, grace=True),
        ),
        baca.new(
            baca.staff_lines(
                1,
                selector=lambda _: abjad.select.leaf(_, 1, grace=False),
            ),
            baca.hairpin(
                "o<| f",
                selector=lambda _: baca.select.leaves(_)[-3:],
            ),
            baca.markup(
                r"\baca-bd-superball-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
                selector=lambda _: baca.select.pleaf(_, 0, grace=False),
            ),
            measures=5,
        ),
    )
    accumulator(
        ("perc1", 6),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptail(_, 0),
        ),
        baca.hairpin(
            "o<| mf",
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[:1]),
        ),
        baca.hairpin(
            "o<| f",
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
    )
    accumulator(
        ("perc1", (5, 6)),
        baca.new(
            library.bass_drum_staff_position(),
            baca.dls_staff_padding(6),
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.leaves(_, grace=False)[2:8],
        ),
    )
    accumulator(
        ("perc1", 7),
        baca.staff_lines(3),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (8, 11)),
        baca.staff_position(-2),
        baca.new(
            baca.dynamic("p"),
            selector=lambda _: baca.select.rest(_, 0),
            measures=8,
        ),
        baca.new(
            baca.dynamic("mp"),
            selector=lambda _: baca.select.rest(_, 0),
            measures=9,
        ),
        baca.new(
            baca.dynamic("mf"),
            selector=lambda _: baca.select.rest(_, 0),
            measures=10,
        ),
        baca.new(
            baca.dynamic("f"),
            selector=lambda _: baca.select.rest(_, 0),
            measures=11,
        ),
        baca.dls_staff_padding(
            5.5,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 3)),
        baca.staff_lines(1),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 4),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("perc2", (1, 4)),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
    )
    accumulator(
        ("perc2", 5),
        baca.dynamic("mf"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (5, 6)),
        library.slate_staff_position(),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
        ),
    )
    accumulator(
        ("perc2", 7),
        baca.staff_lines(3),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (8, 11)),
        baca.staff_lines(1),
        baca.tuplet_bracket_up(),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.hairpin(
            "p < mf",
        ),
        baca.dls_staff_padding(6.5),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def hp(m):
    accumulator(
        ("hp", (1, 5)),
        baca.clef("treble"),
        baca.pitch("<G#4 A4 B4>"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "p < f > p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=1,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "(p) < f > p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=(2, 5),
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dls_staff_padding(3),
    )
    accumulator(
        ("hp", 6),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.whisk_staff_position(),
        baca.dynamic("mf"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 7),
        baca.clef("bass"),
        baca.staff_lines(5),
        baca.pitch("G1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f"),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("hp", (8, 11)),
        baca.clef("treble"),
        baca.pitch("<G#4 A4 B4>"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "p < mp > p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=8,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "(p) < mf > p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=9,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "(p) < f > p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=10,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.hairpin(
            "(p) < ff > p",
            map=lambda _: baca.select.clparts(_, [3]),
            measures=11,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dls_staff_padding(3),
    )


def va(m):
    accumulator(
        ("va", (1, 5)),
        baca.clef("alto"),
        baca.staff_lines(5),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_a_flat(),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: baca.select.pheads(_, grace=False),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("va", 6),
        baca.pitch("Gqf4"),
        baca.dynamic("mp"),
        baca.dls_staff_padding(3),
        baca.markup(
            r"\baca-seven-a",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("va", 7),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic('"ff"'),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("va", 8),
        baca.clef("alto"),
        baca.staff_lines(5),
    )
    accumulator(
        ("va", (8, 11)),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -27),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.hairpin(
            "p < ff",
            selector=lambda _: baca.select.leaves(_, grace=False)[:-1],
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 4)),
        baca.clef("tenor"),
        baca.staff_lines(5),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-1),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: baca.select.pheads(_, grace=False),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("vc1", 5),
        baca.clef("bass"),
    )
    accumulator(
        ("vc1", 6),
        baca.tuplet_bracket_down(),
    )
    accumulator(
        ("vc1", (5, 6)),
        baca.pitch(
            "A2",
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.pleaves(baca.rleaves(_)),
        ),
        baca.accent(
            selector=lambda _: baca.pheads(baca.rleaves(_)),
        ),
        baca.hairpin(
            "o< f >o niente",
            pieces=lambda _: baca.mgroups(_, [1, 2]),
            selector=lambda _: baca.rleaves(_, count=2),
        ),
        baca.dls_staff_padding(6),
        baca.scp_spanner(
            "P2 -> P4 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("vc1", 7),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        baca.new(
            library.bridge_staff_position(),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.stem_tremolo(),
            baca.dynamic('"ff"'),
            baca.dls_staff_padding(6),
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
    )
    accumulator(
        ("vc1", (6, 7)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[1:5],
        ),
    )
    accumulator(
        ("vc1", 8),
        baca.clef("tenor"),
        baca.staff_lines(5),
    )
    accumulator(
        ("vc1", (8, 11)),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -19),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.hairpin(
            "p < ff",
            selector=lambda _: baca.select.leaves(_, grace=False)[:-1],
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        baca.tuplet_bracket_down(),
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dls_staff_padding(5),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", (3, 5)),
        baca.clef("tenor"),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-3),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: baca.select.pheads(_, grace=False),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 6),
        baca.clef("bass"),
        baca.pitch("B3"),
        baca.dynamic("mp"),
        baca.dls_staff_padding(3),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("vc2", 7),
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.hairpin(
            "mf >o niente",
        ),
        baca.dls_staff_padding(4),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", (8, 11)),
        baca.clef("tenor"),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -18),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.hairpin(
            "p < ff",
            selector=lambda _: baca.select.leaves(_, grace=False)[:-1],
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:4],
        ),
    )
    accumulator(
        ("cb1", (2, 5)),
        baca.clef("treble"),
        baca.staff_lines(5),
        baca.pitch(
            "Ab3",
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-2),
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: baca.select.pheads(_, grace=False),
        ),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("cb1", 6),
        baca.clef("bass"),
        baca.pitch("A1"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "f >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dls_staff_padding(4),
        baca.scp_spanner(
            "P2 -> P4 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            final_piece_spanner=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("cb1", 7),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic('"ff"'),
        baca.dls_staff_padding(6),
        baca.rest_extra_offset(
            (-1, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("cb1", (8, 11)),
        baca.clef("treble"),
        baca.staff_lines(5),
        baca.pitch(
            "Ab3",
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -32),
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.hairpin(
            "p < ff",
            selector=lambda _: baca.select.leaves(_, grace=False)[:-1],
        ),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 2)),
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dls_staff_padding(5),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", (3, 5)),
        baca.clef("treble"),
        baca.pitch(
            "Ab3",
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-4),
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: baca.select.pheads(_, grace=False),
        ),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("cb2", 6),
        baca.clef("bass"),
        baca.pitch("Dqs3"),
        baca.markup(
            r"\baca-eleven-a",
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dynamic("mp"),
        baca.dls_staff_padding(3),
        baca.damp_spanner(
            abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
            map=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("cb2", 7),
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.hairpin(
            "mf >o niente",
        ),
        baca.dls_staff_padding(3),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", (8, 11)),
        baca.clef("treble"),
        baca.pitch(
            "Ab3",
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -23),
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.hairpin(
            "p < ff",
            selector=lambda _: baca.select.leaves(_, grace=False)[:-1],
        ),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )


def strings(cache):
    accumulator(
        (["va", "vc1", "cb1"], [(1, 5), (8, 11)]),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
    )
    accumulator(
        ("vc2", [(3, 5), (8, 11)]),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
    )
    accumulator(
        (["cb2"], [(3, 5), (8, 11)]),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
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
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    strings(cache)


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
        fermata_measure_empty_overrides=[12],
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
