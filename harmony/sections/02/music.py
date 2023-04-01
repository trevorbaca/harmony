import abjad
import baca

from harmony import library

#########################################################################################
######################################### 02 [B] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
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
    ]
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[B.1-5]", 1),
        ("[<A.2]", 6, "#darkgreen"),
        ("[>C.1]", 7, "#darkgreen"),
        ("[B.6]", 8),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
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
        baca.metronome_mark(skip, item, library.manifests)
    wrappers = baca.markup(
        skips[12 - 1],
        r"\harmony-text-one",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    for index, string in ((12 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)


durations = [16, 20, 12, 12, 12, 16]
sixteenths = [(2, 2, _ - 4) for _ in durations]
sixteenths = abjad.sequence.flatten(sixteenths)


def BFL(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 5),
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(6),
        weights=[12, 8],
        counts=[8, 4],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        library.cerulean()[1:],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8, 11),
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12))
    voice.extend(music)


def PERC1(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 5),
        counts=[4, 4, 4, 4, 4, 0, 0, 0],
        weights=[16, 20, 16, 20, 10, 6],
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
        time_signatures(6),
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        time_signatures(7),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(8, 11),
        counts=[7],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12))
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = baca.make_repeat_tied_notes(time_signatures(1, 3))
    voice.extend(music)
    music = library.make_tuplet(
        time_signatures(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        ["-", 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        time_signatures(7),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    )
    voice.extend(music)
    music = library.make_tuplet(
        time_signatures(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(9, 10))
    voice.extend(music)
    music = library.make_tuplet(
        time_signatures(11),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12))
    voice.extend(music)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 5),
        sixteenths,
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [10, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8, 11),
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12))
    voice.extend(music)


def VA(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 5),
        weights=[16, 12, 16, 12, 16, 16],
        counts=[2, 3, 4, 5, 6, 7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(6),
        weights=[8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        library.cerulean()[1:],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12), head=voice.name)
    voice.extend(music)


def VC1(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 4),
        weights=[12, 16, 12, 16, 16, 16],
        counts=[3, 4, 5, 6, 7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    music = baca.parse(
        r" \times 5/3 { c4 c4 c4 }",
    )
    pleaf = baca.select.pleaf(music, 0)
    baca.repeat_tie(pleaf)
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [5, -5, 1, "-"],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12), head=voice.name)
    voice.extend(music)


def VC2(voice, time_signatures):
    durations = [_.duration for _ in time_signatures(1, 2)]
    durations = [sum(durations)]
    weights = abjad.durations([(15, 8), (3, 8)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [20, "-"],
        denominator=None,
        do_not_rewrite_meter=True,
        durations=durations,
        extra_counts=[-6],
        untie=True,
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(3, 5),
        weights=[8, 16, 12, 16],
        counts=[4, 5, 6, 7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(6),
        weights=[12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [10, "-"],
        untie=True,
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12), head=voice.name)
    voice.extend(music)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [2, -2, 2, -2, "-"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(2, 5),
        weights=[16, 16, 12, 16, 12],
        counts=[5, 6, 7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [10, 4, 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        library.cerulean()[1:],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12), head=voice.name)
    voice.extend(music)


def CB2(voice, time_signatures):
    durations = [_.duration for _ in time_signatures(1, 2)]
    durations = [sum(durations)]
    weights = abjad.durations([(15, 8), (3, 8)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [20, "-"],
        denominator=None,
        do_not_rewrite_meter=True,
        durations=durations,
        extra_counts=[-6],
        untie=True,
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(3, 5),
        weights=[8, 16, 12, 16],
        counts=[6, 7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(6),
        weights=[12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [10, "-"],
        untie=True,
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(8, 11),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(12), head=voice.name)
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.pitch(o, "Ab4")
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, 1], 3))
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p <| mf |> p",
                pieces=baca.select.clparts(clpart, [1]),
            )
        baca.dls_staff_padding(o, 3)
    with baca.scope(m[6]) as o:
        baca.pitches(o.plts(grace=False), "A3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_a(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[6]) as o:
        baca.dynamic(
            abjad.select.get(o.pheads(grace=False), [0, 2]),
            "f-mp",
        )
        baca.dynamic(
            abjad.select.get(o.pheads(grace=False), [1, 3]),
            "mf-mp",
        )
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "F3"),
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 3),
        baca.covered_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch(o, "Ab4")
        baca.stem_tremolo(abjad.select.get(baca.select.plts(o), [0, 1], 3))
        baca.dls_staff_padding(o, 3)
    with baca.scope(m[8]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p <| mp |> p",
                pieces=baca.select.clparts(clpart, [1]),
            )
    with baca.scope(m[9]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p <| mf |> p",
                pieces=baca.select.clparts(clpart, [1]),
            ),
    with baca.scope(m[10]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p <| f |> p",
                pieces=baca.select.clparts(clpart, [1]),
            ),
    with baca.scope(m[11]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p <| ff |> p",
                pieces=baca.select.clparts(clpart, [1]),
            )


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.staff_position(
            o.leaves(grace=True),
            -2,
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(1, grace=False), 1)
        baca.hairpin(o.leaves()[-3:], "o<| f")
        baca.markup(
            o.pleaf(0, grace=False),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[6]) as o:
        baca.laissez_vibrer(o.ptail(0))
        baca.hairpin(
            baca.select.rleak(o.leaves()[:1]),
            "o<| mf",
        )
        baca.hairpin(o.leaves()[-2:], "o<| f")
    with baca.scope(m.get(5, 6)) as o:
        with baca.scope(o.plts(grace=False)) as u:
            library.bass_drum_staff_position(u)
            baca.dls_staff_padding(u, 6),
        baca.metric_modulation_spanner(
            o.leaves(grace=False)[2:8],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m[7]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(o.tleaves(), "f > p")
        baca.dls_staff_padding(o, 5.5),
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.staff_position(
            o.leaves(grace=True),
            -2,
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.dls_staff_padding(o.leaves(grace=False), 5.5)
    with baca.scope(m[8]) as o:
        baca.dynamic(o.rest(0), "p")
    with baca.scope(m[9]) as o:
        baca.dynamic(o.rest(0), "mp")
    with baca.scope(m[10]) as o:
        baca.dynamic(o.rest(0), "mf")
    with baca.scope(m[11]) as o:
        baca.dynamic(o.rest(0), "f")


def perc2(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[4]) as o:
        baca.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 4)) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(baca.select.pleaves(o), [0, -1]))
    with baca.scope(m[5]) as o:
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 6)) as o:
        library.slate_staff_position(o)
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.runs(o)[:1]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m[7]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(o.tleaves(), "f > p")
        baca.dls_staff_padding(o, 5.5),
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.tuplet_bracket_up(o)
        library.tam_tam_staff_position(o)
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.hairpin(o, "p < mf")
        baca.dls_staff_padding(o, 6.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.pitch(o, "<G#4 A4 B4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.stem_tremolo(o.pleaves())
        baca.dls_staff_padding(o, 3),
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        ),
    with baca.scope(m[1]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p < f > p",
                pieces=baca.select.clparts(clpart, [1]),
            )
    with baca.scope(m.get(2, 5)) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "(p) < f > p",
                pieces=baca.select.clparts(clpart, [1]),
            )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G1"),
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 6),
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch(o, "<G#4 A4 B4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
        baca.dls_staff_padding(o, 3),
    with baca.scope(m[8]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p < mp > p",
                pieces=baca.select.clparts(clpart, [1]),
            )
    with baca.scope(m[9]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "(p) < mf > p",
                pieces=baca.select.clparts(clpart, [1]),
            ),
    with baca.scope(m[10]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "(p) < f > p",
                pieces=baca.select.clparts(clpart, [1]),
            ),
    with baca.scope(m[11]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "(p) < ff > p",
                pieces=baca.select.clparts(clpart, [1]),
            )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_a_flat(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.dynamic(o.pheads(grace=False), "f-mp")
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "Gqf4"),
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 3)
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-a",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        for plt in baca.select.plts(o):
            baca.damp_spanner(
                baca.select.rleak(plt),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), '"ff"')
        baca.dls_staff_padding(o, 6),
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -27),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.hairpin(o.leaves(grace=False)[:-1], "p < ff")
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-1),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.dynamic(o.pheads(grace=False), "f-mp")
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m[6]) as o:
        baca.tuplet_bracket_down(o)
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o.rleaves(), "A2")
        baca.stem_tremolo(baca.select.pleaves(baca.select.rleaves(o)))
        baca.accent(baca.select.pheads(baca.select.rleaves(o)))
        leaves = baca.select.rleaves(o, count=2)
        baca.hairpin(
            leaves,
            "o< f >o niente",
            pieces=baca.select.mgroups(leaves, [1, 2]),
        )
        baca.dls_staff_padding(o, 6)
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.scp_spanner(
            leaves,
            "P2 -> P4 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.plts(leaves),
        )
    with baca.scope(m[7]) as o:
        with baca.scope(o.leaf(1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1),
        with baca.scope(o.pleaf(1)) as u:
            library.bridge_staff_position(u)
            baca.accent(u)
            baca.stem_tremolo(u)
            baca.dynamic(u, '"ff"')
            baca.dls_staff_padding(u, 6),
    with baca.scope(m.get(6, 7)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[1:5],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -19),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.hairpin(o.leaves(grace=False)[:-1], "p < ff")
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.tuplet_bracket_down(o)
        baca.interpolate_pitches(o, "G2", "F2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "mf >o niente",
        )
        baca.dls_staff_padding(o, 5),
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-3),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(3, 5)) as o:
        baca.dynamic(o.pheads(grace=False), "f-mp")
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B3"),
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 3),
        for plt in baca.select.plts(o):
            baca.damp_spanner(
                baca.select.rleak(plt),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[7]) as o:
        baca.interpolate_pitches(o, "G2", "F2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.hairpin(o, "mf >o niente")
        baca.dls_staff_padding(o, 4),
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -18),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.hairpin(o.leaves(grace=False)[:-1], "p < ff")
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.metric_modulation_spanner(
            o.leaves()[:4],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
        )
    with baca.scope(m.get(2, 5)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(
            o.plts(grace=False),
            "Ab3",
            do_not_transpose=True,
        )
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-2),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 5)) as o:
        baca.dynamic(o.pheads(grace=False), "f-mp")
        baca.dls_staff_padding(o.leaves(grace=False), 6)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A1"),
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(o.rleaves(), "f >o niente")
        baca.dls_staff_padding(o, 4),
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.scp_spanner(
            leaves,
            "P2 -> P4 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            final_piece_spanner=False,
            pieces=baca.select.plts(leaves),
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), '"ff"')
        baca.dls_staff_padding(o, 6),
        baca.rest_extra_offset(o.rest(-1), (-1, 0))
    with baca.scope(m.get(8, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(
            o.plts(grace=False),
            "Ab3",
            do_not_transpose=True,
        )
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -32),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.hairpin(o.leaves(grace=False)[:-1], "p < ff")
        baca.dls_staff_padding(o.leaves(grace=False), 6)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.interpolate_pitches(o, "G2", "F#2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(baca.select.tleaves(o, rleak=True), "mf >o niente")
        baca.dls_staff_padding(o, 5)
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(
            o.plts(grace=False),
            "Ab3",
            do_not_transpose=True,
        )
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), n=-4),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(3, 5)) as o:
        baca.dynamic(o.pheads(grace=False), "f-mp")
        baca.dls_staff_padding(o.leaves(grace=False), 6)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqs3"),
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-a",
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
        )
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 3),
        for plt in baca.select.plts(o):
            baca.damp_spanner(
                baca.select.rleak(plt),
                abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
            )
    with baca.scope(m[7]) as o:
        baca.interpolate_pitches(o, "G2", "F#2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.hairpin(o, "mf >o niente")
        baca.dls_staff_padding(o, 3),
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(
            o.plts(grace=False),
            "Ab3",
            do_not_transpose=True,
        )
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -23),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.hairpin(o.leaves(grace=False)[:-1], "p < ff")
        baca.dls_staff_padding(o.leaves(grace=False), 6)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )


def strings(cache):
    for name in ["va", "vc1", "cb1"]:
        for item in [(1, 5), (8, 11)]:
            with baca.scope(cache[name].get(item)) as o:
                for run in abjad.select.runs(o, grace=True):
                    baca.note_head_style_harmonic(run)
    m = cache["vc2"]
    for item in [(3, 5), (8, 11)]:
        with baca.scope(m.get(item)) as o:
            for run in abjad.select.runs(o, grace=True):
                baca.note_head_style_harmonic(run)
    m = cache["cb2"]
    for item in [(3, 5), (8, 11)]:
        with baca.scope(m.get(item)) as o:
            for run in abjad.select.runs(o, grace=True):
                baca.note_head_style_harmonic(run)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, time_signatures = make_empty_score()
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(voices("bfl"), time_signatures)
    PERC1(voices("perc1"), time_signatures)
    PERC2(voices("perc2"), time_signatures)
    HP(voices("hp"), time_signatures)
    VA(voices("va"), time_signatures)
    VC1(voices("vc1"), time_signatures)
    VC2(voices("vc2"), time_signatures)
    CB1(voices("cb1"), time_signatures)
    CB2(voices("cb2"), time_signatures)
    baca.section.reapply(
        voices,
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(time_signatures()),
        library.voice_abbreviations,
    )
    bfl(cache)
    perc1(cache)
    perc2(cache["perc2"])
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    strings(cache)
    return score


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        always_make_global_rests=True,
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    )
    baca.tags.activate(
        score,
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


if __name__ == "__main__":
    main()
