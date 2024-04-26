import abjad
import baca

from harmony import library

#########################################################################################
########################################### 02 ##########################################
#########################################################################################

AG = baca.rhythm.AG
T = baca.rhythm.T
bl = baca.rhythm.bl
br = baca.rhythm.br
h = baca.rhythm.h
rt = baca.rhythm.rt
w = baca.rhythm.w

OBGC = library.OBGC
mmrests = library.mmrests
rhythm = library.rhythm


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
        baca.metronome_mark(skip, item, manifests=library.manifests)
    wrappers = baca.markup(
        skips[12 - 1],
        r"\harmony-text-one",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)
    for index, string in ((12 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)


def bfl_and_harp():
    return [16, 20, 12, 12, 12, 16]


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [(w(2, 4), h(w(2, 4)), rt(_ - 4)) for _ in bfl_and_harp()],
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(8 * [2], [3, rt(8)]), -1, OBGC(4 * [2], [7])],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[1:], weight=12),
        time_signatures(7),
    )
    rhythm(
        voice,
        4 * [w(2, 4), h(w(2, 4)), rt(16)],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12))


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        2 * [OBGC(4 * [2], [-16]), OBGC(4 * [2], [-20])],
        time_signatures(1, 4),
    )
    rhythm(
        voice,
        [OBGC(4 * [2], [-8]), -2, 2, rt(w(3, 4)), h(w(1, 4))],
        time_signatures(5),
    )
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), "-", w(3, 4), h(w(1, 4))],
        time_signatures(6),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(7),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=slice(None, -1),
    )
    rhythm(
        voice,
        4 * [OBGC(7 * [2], [-20])],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12))


def PERC2(voice, time_signatures):
    music = baca.make_repeat_tied_notes(time_signatures(1, 3))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    rhythm(
        voice,
        ["-", 6],
        time_signatures(5),
    )
    rhythm(
        voice,
        [4, -6, 4, 4, -2],
        time_signatures(6),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(7),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest=slice(None, -1),
        rest_pleaves=[0, 1, 2, 3],
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9, 10))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(11),
    )
    mmrests(voice, time_signatures(12))


def HP(voice, time_signatures):
    rhythm(voice, [(w(2, 4), h(w(2, 4)), _ - 4) for _ in bfl_and_harp()])
    rhythm(
        voice,
        [4, -6, 4, 4, -2],
        time_signatures(6),
    )
    rhythm(
        voice,
        [10, "-"],
        time_signatures(7),
    )
    rhythm(
        voice,
        4 * [w(2, 4), h(w(2, 4)), 16],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12))


def VA(voice, time_signatures):
    obgcs = []
    pairs = abjad.sequence.zip([[2, 3, 4, 5, 6, 7], [16, 12, 16, 12, 16, 16]])
    for graces, main in pairs:
        obgcs.append(OBGC(graces * [2], [main]))
    rhythm(
        voice,
        obgcs,
        time_signatures(1, 5),
    )
    rhythm(
        voice,
        [-1, 7, -1, 3, rt(8)],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(7),
        library.cerulean_counts()[1:],
        extra_counts=[2],
    )
    rhythm(
        voice,
        4 * [OBGC(7 * [2], [20])],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12), head=True)


def VC1(voice, time_signatures):
    items = [-12]
    pairs = abjad.sequence.zip([[3, 4, 5, 6], [16, 12, 16, 16]])
    for graces, main in pairs:
        items.append(OBGC(graces * [2], [main]))
    rhythm(
        voice,
        items,
        time_signatures(1, 4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([rt(4), 4, 4], 8),
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, -4, T([1, -4], -1)],
        time_signatures(7),
    )
    rhythm(
        voice,
        4 * [OBGC(7 * [2], [20])],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12), head=True)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [T([16, AG([2], 4), -4], "4:5"), -6],
        time_signatures(1, 2),
    )
    items = [-8]
    pairs = abjad.sequence.zip([[4, 5, 6], [16, 12, 16]])
    for graces, main in pairs:
        items.append(OBGC(graces * [2], [main]))
    rhythm(
        voice,
        items,
        time_signatures(3, 5),
    )
    rhythm(
        voice,
        [-1, 3, rt(8), -1, 7],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [8, AG([2], 2), "-"],
        time_signatures(7),
    )
    rhythm(
        voice,
        4 * [OBGC(7 * [2], [20])],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12), head=True)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [2, -2, 2, -2, "-"],
        time_signatures(1),
    )
    items = []
    pairs = abjad.sequence.zip([[5, 6, 7, 5, 6], [16, 16, 12, 16, 12]])
    for graces, main in pairs:
        items.append(OBGC(graces * [2], [main]))
    rhythm(
        voice,
        items,
        time_signatures(2, 5),
    )
    rhythm(
        voice,
        [10, 4, 6],
        time_signatures(6),
    )
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[1:], weight=12),
        time_signatures(7),
    )
    rhythm(
        voice,
        4 * [OBGC(7 * [2], [20])],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12), head=True)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [T([16, AG([2], 4), -4], "4:5"), -6],
        time_signatures(1, 2),
    )
    items = [-8]
    pairs = abjad.sequence.zip([[6, 7, 6], [16, 12, 16]])
    for graces, main in pairs:
        items.append(OBGC(graces * [2], [main]))
    rhythm(
        voice,
        items,
        time_signatures(3, 5),
    )
    rhythm(
        voice,
        [-1, 3, rt(8), -1, 7],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [8, AG([2], 2), "-"],
        time_signatures(7),
    )
    rhythm(
        voice,
        4 * [OBGC(7 * [2], [20])],
        time_signatures(8, 11),
    )
    mmrests(voice, time_signatures(12), head=True)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.pitch(o, "Ab4")
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, 1], 3))
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p<| mf|>p",
            )
        baca.override.dls_staff_padding(o, 3)
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "F3"),
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 3),
        baca.spanners.covered(
            baca.select.ltleaves(o),
            descriptor=r"\baca-cov-markup =|",
            rleak=True,
            staff_padding=3,
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch(o, "Ab4")
        baca.stem_tremolo(abjad.select.get(baca.select.plts(o), [0, 1], 3))
        baca.override.dls_staff_padding(o, 3)
    with baca.scope(m[8]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p<| mp|>p",
            )
    with baca.scope(m[9]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p<| mf|>p",
            ),
    with baca.scope(m[10]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p<| f|>p",
            ),
    with baca.scope(m[11]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p<| ff|>p",
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
        baca.hairpin(
            o[-3:],
            "o<|f",
        )
        baca.markup(
            o.pleaf(0, grace=False),
            r"\baca-boxed-bd-superball-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[6]) as o:
        baca.laissez_vibrer(o.ptail(0))
        baca.hairpin(
            o[:1],
            "o<|mf",
            rleak=True,
        )
        baca.hairpin(
            o[-2:],
            "o<|f",
        )
    with baca.scope(m.get(5, 6)) as o:
        with baca.scope(o.plts(grace=False)) as u:
            library.bass_drum_staff_position(u)
            baca.override.dls_staff_padding(u, 6),
        baca.spanners.metric_modulation(
            o.leaves(grace=False)[2:7],
            rleak=True,
            staff_padding=10.5,
        )
    with baca.scope(m[7]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
        baca.override.dls_staff_padding(o, 5.5),
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.self_alignment_x(0.25),
            baca.tweak.staff_padding(5 + 1),
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 5.5)
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
            baca.tweak.self_alignment_x(-0.75),
        )
        baca.override.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[4]) as o:
        baca.override.tuplet_bracket_direction_up(o)
    with baca.scope(m.get(1, 4)) as o:
        library.tam_tam_staff_position(o)
        baca.glissando(o, "C4", hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(baca.select.pleaves(o), [0, -1]))
    with baca.scope(m[5]) as o:
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(5, 6)) as o:
        library.slate_staff_position(o)
        baca.spanners.metric_modulation(
            baca.select.runs(o)[:1],
            rleak=True,
            staff_padding=10.5,
        )
    with baca.scope(m[7]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
        baca.override.dls_staff_padding(o, 5.5),
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.self_alignment_x(0.25),
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.override.tuplet_bracket_direction_up(o)
        library.tam_tam_staff_position(o)
        baca.glissando(o, "C4", hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.hairpin(
            o,
            "p<mf",
        )
        baca.override.dls_staff_padding(o, 6.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.pitch(o, "G#4:A4:B4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 5)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.stem_tremolo(o.pleaves())
        baca.override.dls_staff_padding(o, 3),
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.staff_padding(4),
        ),
    with baca.scope(m[1]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p< f>p",
            )
    with baca.scope(m.get(2, 5)) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "(p)< f>p",
            )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G1"),
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 6),
    with baca.scope(m.get(8, 11)) as o:
        baca.pitch(o, "G#4:A4:B4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.staff_padding(4),
        )
        baca.override.dls_staff_padding(o, 3),
    with baca.scope(m[8]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "p< mp>p",
            )
    with baca.scope(m[9]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "(p)< mf>p",
            ),
    with baca.scope(m[10]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "(p)< f>p",
            ),
    with baca.scope(m[11]) as o:
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(clpart, [1, 2]),
                "(p)< ff>p",
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "Gqf4"),
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 3)
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-a",
            baca.tweak.staff_padding(5.5),
        )
        for plt in baca.select.plts(o):
            baca.spanners.damp(
                plt,
                rleak=True,
                staff_padding=3,
            )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), '"ff"')
        baca.override.dls_staff_padding(o, 6),
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
        baca.hairpin(
            o.leaves(grace=False)[:-1],
            "p<ff",
        )
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m[6]) as o:
        baca.override.tuplet_bracket_direction_down(o)
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o.rleaves(), "A2")
        baca.stem_tremolo(baca.select.pleaves(baca.select.rleaves(o)))
        baca.accent(baca.select.pheads(baca.select.rleaves(o)))
        leaves = baca.select.rleaves(o, count=2)
        baca.hairpin(
            baca.select.mgroups(leaves, [1, 2]),
            "o< f>o!",
        )
        baca.override.dls_staff_padding(o, 6)
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.spanners.scp(
            baca.select.plts(leaves),
            "P2 -> P4 -> P1 -> P3 ->",
            staff_padding=3,
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
            baca.override.dls_staff_padding(u, 6),
    with baca.scope(m.get(6, 7)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[1:4],
            rleak=True,
            staff_padding=8,
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
        baca.hairpin(
            o.leaves(grace=False)[:-1],
            "p<ff",
        )
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.override.tuplet_bracket_direction_down(o)
        baca.glissando(
            o.tleaves(),
            "G2 F2",
        )
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o),
            "mf>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 5),
        baca.spanners.scp(
            o.tleaves(),
            "P1 =|",
            rleak=True,
            staff_padding=3,
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B3"),
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 3),
        for plt in baca.select.plts(o):
            baca.spanners.damp(
                plt,
                rleak=True,
                staff_padding=3,
            )
    with baca.scope(m[7]) as o:
        baca.glissando(
            o.tleaves(),
            "G2 F2",
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.hairpin(
            o,
            "mf>o!",
        )
        baca.override.dls_staff_padding(o, 4),
        baca.spanners.scp(
            o.tleaves(),
            "P1 =|",
            rleak=True,
            staff_padding=3,
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
        baca.hairpin(
            o.leaves(grace=False)[:-1],
            "p<ff",
        )
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=8,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.spanners.metric_modulation(
            o.leaves()[:3],
            left_broken=True,
            rleak=True,
            staff_padding=5.5,
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 6)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=10,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A1"),
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            o,
            "f>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 4),
        baca.spanners.scp(
            o.plts(),
            "P2 -> P4 -> P1 =|",
            do_not_bookend=True,
            rleak=True,
            staff_padding=4.25,
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), '"ff"')
        baca.override.dls_staff_padding(o, 6),
        baca.override.rest_extra_offset(o.rest(-1), (-1, 0))
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
        baca.hairpin(
            o.leaves(grace=False)[:-1],
            "p<ff",
        )
        baca.override.dls_staff_padding(o.leaves(grace=False), 6)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=10,
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.glissando(
            o.tleaves(),
            "G2 F#2",
        )
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.tleaves(),
            "mf>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 5)
        baca.spanners.scp(
            o.tleaves(),
            "P1 =|",
            rleak=True,
            staff_padding=5.5,
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 6)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=10,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqs3"),
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-a",
            baca.tweak.staff_padding(5.5 + 1),
        )
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 3),
        for plt in baca.select.plts(o):
            baca.spanners.damp(
                plt,
                rleak=True,
                staff_padding=3 + 1,
            )
    with baca.scope(m[7]) as o:
        baca.glissando(
            o.tleaves(),
            "G2 F#2",
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.hairpin(
            o,
            "mf>o!",
        )
        baca.override.dls_staff_padding(o, 3),
        baca.spanners.scp(
            o.tleaves(),
            "P1 =|",
            rleak=True,
            staff_padding=3,
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
        baca.hairpin(
            o.leaves(grace=False)[:-1],
            "p<ff",
        )
        baca.override.dls_staff_padding(o.leaves(grace=False), 6)
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            direction=abjad.DOWN,
            rleak=True,
            staff_padding=10,
        )


def strings(cache):
    for name in ["va", "vc1", "cb1"]:
        for item in [(1, 5), (8, 11)]:
            with baca.scope(cache[name].get(item)) as o:
                for run in abjad.select.runs(o, grace=True):
                    baca.override.note_head_style_harmonic(run)
    m = cache["vc2"]
    for item in [(3, 5), (8, 11)]:
        with baca.scope(m.get(item)) as o:
            for run in abjad.select.runs(o, grace=True):
                baca.override.note_head_style_harmonic(run)
    m = cache["cb2"]
    for item in [(3, 5), (8, 11)]:
        with baca.scope(m.get(item)) as o:
            for run in abjad.select.runs(o, grace=True):
                baca.override.note_head_style_harmonic(run)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 5, 4, 5, 4, 5, 3, 5, 5, 5, 5, 1]
    pairs = [(_, 4) for _ in numerators]
    time_signatures = baca.section.wrap(pairs)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        score_persistent_indicators=previous_persistent_indicators["Score"],
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
    baca.section.reapply_persistent_indicators(
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


def persist_score(score, environment):
    metadata = baca.section.postprocess(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
    )
    baca.section.deactivate_tags(
        score,
    )
    baca.section.activate_tags(
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


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=40, distances=distances),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(7, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        overrides=(baca.layout.Override([12], (1, 288)),),
    )
    baca.build.write_layout_ly(breaks, spacing)


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    if environment.score():
        score = make_score(
            environment.first_measure_number,
            environment.previous_metadata["persistent_indicators"],
            environment.timing,
        )
        persist_score(score, environment)
    if environment.arguments.layout:
        make_layout()


if __name__ == "__main__":
    main()
