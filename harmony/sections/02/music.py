import abjad
import baca

from harmony import library

#########################################################################################
######################################### 02 [B] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
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
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[B.1-5]", 1),
        ("[<A.2]", 6, "#darkgreen"),
        ("[>C.1]", 7, "#darkgreen"),
        ("[B.6]", 8),
    )
    baca.label_stage_numbers(skips, stage_markup)
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
        baca.metronome_mark_function(skip, item, library.manifests)
    wrappers = baca.markup_function(
        skips[12 - 1],
        r"\harmony-text-one",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    for index, string in ((12 - 1, "fermata"),):
        baca.global_fermata_function(rests[index], string)


divisions = [16, 20, 12, 12, 12, 16]
sixteenths = [(2, 2, _ - 4) for _ in divisions]
sixteenths = abjad.sequence.flatten(sixteenths)


def BFL(voice, accumulator):
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


def PERC1(voice, accumulator):
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


def PERC2(voice, accumulator):
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


def HP(voice, accumulator):
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


def VA(voice, accumulator):
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


def VC1(voice, accumulator):
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


def VC2(voice, accumulator):
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


def CB1(voice, accumulator):
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


def CB2(voice, accumulator):
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


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.pitch_function(o, "Ab4")
        baca.stem_tremolo_function(abjad.select.get(o.pleaves(), [0, 1], 3))
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p <| mf |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
        baca.dls_staff_padding_function(o, 3)
    with baca.scope(m[6]) as o:
        baca.pitches_function(baca.select.plts(o, grace=False), "A3")
        baca.pitches_function(
            baca.select.plts(o, grace=True),
            library.appoggiato_pitches_a(),
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[6]) as o:
        baca.dynamic_function(
            abjad.select.get(baca.select.pheads(o, grace=False), [0, 2]),
            "f-mp",
        )
        baca.dynamic_function(
            abjad.select.get(baca.select.pheads(o, grace=False), [1, 3]),
            "mf-mp",
        )
        baca.dls_staff_padding_function(baca.select.leaves(o, grace=False), 4)
        baca.text_spanner_function(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[7]) as o:
        baca.pitch_function(o, "F3"),
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 3),
        baca.covered_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch_function(o, "Ab4")
        baca.stem_tremolo_function(abjad.select.get(baca.select.plts(o), [0, 1], 3))
        baca.dls_staff_padding_function(o, 3)
    with baca.scope(m[8]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p <| mp |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
    with baca.scope(m[9]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p <| mf |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            ),
    with baca.scope(m[10]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p <| f |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            ),
    with baca.scope(m[11]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p <| ff |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.staff_position_function(baca.select.leaves(o, grace=True), -2)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.staff_lines_function(abjad.select.leaf(o, 1, grace=False), 1)
        baca.hairpin_function(o.leaves()[-3:], "o<| f")
        baca.markup_function(
            baca.select.pleaf(o, 0, grace=False),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[6]) as o:
        baca.laissez_vibrer_function(o.ptail(0))
        baca.hairpin_function(
            baca.select.rleak(o.leaves()[:1]),
            "o<| mf",
        )
        baca.hairpin_function(o.leaves()[-2:], "o<| f")
    with baca.scope(m.get(5, 6)) as o:
        with baca.scope(baca.select.plts(o, grace=False)) as u:
            library.bass_drum_staff_position_function(u)
            baca.dls_staff_padding_function(u, 6),
        baca.metric_modulation_spanner_function(
            baca.select.leaves(o, grace=False)[2:8],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m[7]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [0, 0, -2, 0, -2])
        baca.hairpin_function(o.tleaves(), "f > p")
        baca.dls_staff_padding_function(o, 5.5),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.staff_position_function(o, -2)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.dls_staff_padding_function(baca.select.leaves(o, grace=False), 5.5)
    with baca.scope(m[8]) as o:
        baca.dynamic_function(o.rest(0), "p")
    with baca.scope(m[9]) as o:
        baca.dynamic_function(o.rest(0), "mp")
    with baca.scope(m[10]) as o:
        baca.dynamic_function(o.rest(0), "mf")
    with baca.scope(m[11]) as o:
        baca.dynamic_function(o.rest(0), "f")


def perc2(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        baca.dynamic_function(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.dls_staff_padding_function(o, 6),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[4]) as o:
        baca.tuplet_bracket_up_function(o)
    with baca.scope(m.get(1, 4)) as o:
        library.tam_tam_staff_position_function(o)
        baca.flat_glissando_function(o, hide_middle_stems=True)
        baca.stem_tremolo_function(abjad.select.get(baca.select.pleaves(o), [0, -1]))
    with baca.scope(m[5]) as o:
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 6),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 6)) as o:
        library.slate_staff_position_function(o)
        baca.metric_modulation_spanner_function(
            baca.select.rleak(baca.select.runs(o)[:1]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m[7]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [0, 0, -2, 0, -2])
        baca.hairpin_function(o.tleaves(), "f > p")
        baca.dls_staff_padding_function(o, 5.5),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        baca.tuplet_bracket_up_function(o)
        library.tam_tam_staff_position_function(o)
        baca.flat_glissando_function(o, hide_middle_stems=True)
        baca.stem_tremolo_function(abjad.select.get(o.pleaves(), [0, -1]))
        baca.hairpin_function(o, "p < mf")
        baca.dls_staff_padding_function(o, 6.5)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.pitch_function(o, "<G#4 A4 B4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.stem_tremolo_function(o.pleaves())
        baca.dls_staff_padding_function(o, 3),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        ),
    with baca.scope(m[1]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p < f > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
    with baca.scope(m.get(2, 5)) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "(p) < f > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
    with baca.scope(m[6]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.whisk_staff_position_function(o)
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 6),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "G1"),
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 6),
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch_function(o, "<G#4 A4 B4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.stem_tremolo_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
        baca.dls_staff_padding_function(o, 3),
    with baca.scope(m[8]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p < mp > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
    with baca.scope(m[9]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "(p) < mf > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            ),
    with baca.scope(m[10]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "(p) < f > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            ),
    with baca.scope(m[11]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "(p) < ff > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )


def va(m, accumulator):
    accumulator(
        ("va", (1, 5)),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
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
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(3),
        baca.markup(
            r"\baca-seven-a",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("va", 7),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic('"ff"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("va", 8),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
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


def vc1(m, accumulator):
    accumulator(
        ("vc1", (1, 4)),
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
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
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
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
            selector=lambda _: baca.select.pleaves(baca.select.rleaves(_)),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(baca.select.rleaves(_)),
        ),
        baca.hairpin(
            "o< f >o niente",
            pieces=lambda _: baca.select.mgroups(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_, count=2),
        ),
        baca.dls_staff_padding(6),
        baca.scp_spanner(
            "P2 -> P4 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc1", 7),
        baca.new(
            baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
            baca.staff_lines(1),
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        baca.new(
            library.bridge_staff_position(),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.stem_tremolo(),
            baca.dynamic('"ff"', selector=lambda _: baca.select.phead(_, 0)),
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
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
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


def vc2(m, accumulator):
    accumulator(
        ("vc2", (1, 2)),
        baca.tuplet_bracket_down(),
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
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
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
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
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("B3"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(3),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 7),
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
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
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
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


def cb1(m, accumulator):
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
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
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
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
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
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb1", 7),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic('"ff"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.rest_extra_offset(
            (-1, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("cb1", (8, 11)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
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


def cb2(m, accumulator):
    accumulator(
        ("cb2", (1, 2)),
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
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
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
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
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Dqs3"),
        baca.markup(
            r"\baca-eleven-a",
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(3),
        baca.damp_spanner(
            abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
            map=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("cb2", 7),
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
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
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
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


def strings(cache, accumulator):
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


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
    baca.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        library.voice_abbreviations,
    )
    bfl(cache)
    perc1(cache)
    perc2(cache["perc2"])
    hp(cache)
    va(cache["va"], accumulator)
    vc1(cache["vc1"], accumulator)
    vc2(cache["vc2"], accumulator)
    cb1(cache["cb1"], accumulator)
    cb2(cache["cb2"], accumulator)
    strings(cache, accumulator)
    return score, accumulator


def main():
    previous_metadata = baca.previous_metadata(__file__)
    first_measure_number = previous_metadata["final_measure_number"] + 1
    previous_persist = baca.previous_persist(__file__)
    score, accumulator = make_score(
        first_measure_number, previous_persist["persistent_indicators"]
    )
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        commands=accumulator.commands,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        empty_fermata_measures=True,
        first_measure_number=first_measure_number,
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


if __name__ == "__main__":
    main()
