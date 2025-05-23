import abjad
import baca
import rmakers

from harmony import library

#########################################################################################
########################################### 13 ##########################################
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
        ("[M.1]", 1),
        ("[M.2]", 3),
        ("[<J.6]", 4, "#darkgreen"),
        ("[<L.4]", 5, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "2.=4"),
        (5 - 1, "96"),
        (5 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (2 - 1, "fermata"),
        (6 - 1, "short"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[2 - 1],
        r"\harmony-text-twelve",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[6 - 1],
        r"\harmony-text-thirteen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), rt(4), -12],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        ["-", w(2, 4), h(w(2, 4))],
        time_signatures(3),
    )
    rhythm(
        voice,
        [-1, OBGC(9 * [2], [23])],
        time_signatures(4),
    )
    rhythm(
        voice,
        [4, 8],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [OBGC(5 * [2], [-6]), OBGC(4 * [2], [-14])],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-20, OBGC(3 * [2], [-4])],
        time_signatures(3),
        do_not_rewrite_meter=True,
    )
    music = baca.make_notes(time_signatures(4))
    voice.extend(music)
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), "-"],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [OBGC(4 * [2], [-6]), OBGC(5 * [2], [-14])],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-20, OBGC(4 * [2], [-4])],
        time_signatures(3),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [20, "-", 1, -1],
        time_signatures(4),
    )
    rhythm(
        voice,
        3 * [2, -2],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def HP(voice, time_signatures):
    rhythm(
        voice,
        [-4, 4, 8, -4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
        time_signatures(3, 4),
    )
    rhythm(
        voice,
        3 * [2, -2],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def VA(voice, time_signatures):
    rhythm(
        voice,
        [rt(3), -1, OBGC(7 * [2], [12]), -4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    music = baca.make_repeat_tied_notes(time_signatures(4, 5))
    voice.extend(music)
    mmrests(voice, time_signatures(6), head=True)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [rt(3), -1, OBGC(6 * [2], [12]), -4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    components = rhythm(
        voice,
        ["+", 2],
        time_signatures(4),
    )
    rmakers.unbeam(components)
    rhythm(
        voice,
        6 * [4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [7, -1, 12],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2), head=True)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    components = rhythm(
        voice,
        ["+", 2],
        time_signatures(4),
    )
    rmakers.unbeam(components)
    rhythm(
        voice,
        6 * [4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [rt(3), -1, OBGC(6 * [2], [12]), -4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    components = rhythm(
        voice,
        ["+", 2],
        time_signatures(4),
    )
    rmakers.unbeam(components)
    rhythm(
        voice,
        6 * [4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [7, -1, 12],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2), head=True)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    components = rhythm(
        voice,
        ["+", 2],
        time_signatures(4),
    )
    rmakers.unbeam(components)
    rhythm(
        voice,
        6 * [4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6), head=True)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 2]),
            "o<| f|>o!",
            rleak=True,
        )
        baca.spanners.metric_modulation(
            o.leaves()[:2],
            baca.tweak.staff_padding(8),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1]),
            "o<| f|>o!",
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitches(o.leaves(grace=False), "A3")
        baca.pitches(
            o.leaves(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.dynamic(o.pleaf(0, grace=False), "p")
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(8),
            direction=abjad.DOWN,
            rleak=True,
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "Dtqf5")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            baca.tweak.staff_padding(8),
        )
        baca.breathe(o.pleaf(1))
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            'o< "f">o!',
            rleak=True,
        )
        for clpart in baca.select.clparts(o, [2]):
            baca.spanners.text(
                baca.select.lparts(clpart, [1, 1]),
                "T -> A =|",
                baca.tweak.staff_padding(5.5),
                do_not_bookend=True,
                rleak=True,
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(-1), "p")
        baca.staff_position(o, 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-triangle-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[5]) as o:
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "o<|f",
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-superball-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(-1), "p")
        baca.staff_position(o, 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.dynamic(
            o.pleaf(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-fingertips-markup",
            baca.tweak.staff_padding(6),
        )
        with baca.scope(o.plt(0)) as u:
            library.bass_drum_staff_position(u)
            baca.glissando(u)
        baca.stem_tremolo(baca.select.plt(o, 0))
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position(u)
            baca.dynamic(u, "f")
            baca.markup(
                u,
                r"\baca-boxed-brake-drum-markup",
                baca.tweak.self_alignment_x(0.5),
                baca.tweak.staff_padding(6),
            )
    with baca.scope(m[5]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(4, 5)) as o:
        baca.override.dls_staff_padding(o, 6)
        baca.spanners.metric_modulation(
            abjad.select.leaves(o)[3:],
            baca.tweak.staff_padding(10.5),
            rleak=True,
        )


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            rests = abjad.select.rests(o)
            rests = [
                _ for _ in rests if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ]
            baca.override.dots_extra_offset(rests, (2, 0))
            baca.override.dots_x_extent_false(rests)
            baca.override.rest_x_extent_zero(rests)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "B2:C3:Db3")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1]),
            "o< mf>o!",
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitches(o.plts()[:-1], "Bb5 A5 G#5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.ptails()[:-1])
        baca.dynamic(o.phead(0), "f")
        with baca.scope(o.phead(-1)) as u:
            baca.pitch(u, "E4")
            baca.dynamic(u, "f-ancora")
            baca.snap_pizzicato(u)
    with baca.scope(m.get(3, 4)) as o:
        baca.spanners.metric_modulation(
            abjad.select.leaves(o)[1:8],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E4")
        baca.snap_pizzicato(o.pheads())
    with baca.scope(m.get(4, 5)) as o:
        baca.spanners.metric_modulation(
            abjad.select.leaves(o)[6:],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.stem_tremolo(o.pleaf(0))
        baca.hairpin(
            o[:1],
            ">o!",
            left_broken=True,
            rleak=True,
        )
        baca.hairpin(
            o.leaves(grace=False)[2:],
            "mf>o!",
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o.plts()[:1], "Bb3")
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitch(u, "Db3")
        with baca.scope(o.plts(grace=True)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_d_flat_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "D3")
        baca.hairpin(
            o,
            "(mp)>o!",
            rleak=True,
        )
        baca.spanners.scp(
            baca.select.ltleaves(o),
            "T1 =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.stem_tremolo(o.pleaf(0))
        baca.hairpin(
            o[:1],
            ">o!",
            left_broken=True,
            rleak=True,
        )
        baca.hairpin(
            o.leaves(grace=False)[2:],
            "mf>o!",
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o.plts()[:1], "Aqf3")
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitch(u, "C3")
        with baca.scope(o.plts(grace=True)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_c_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.pitch(u, "D2")
            baca.hairpin(
                u,
                "(mp)>o!",
            )
        baca.spanners.scp(
            o.leaves(),
            "T1 =|",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(baca.select.lleak(o.leaves()), "Aqf3")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.phead(0))
        with baca.scope(o.plts()[:1]) as u:
            baca.pitch(u, "F3"),
            baca.stem_tremolo(u)
        baca.pitch(o.plts()[1:], "C3")
        baca.hairpin(
            baca.select.rleak(o.plts()[:1]),
            ">o!",
            left_broken=True,
        )
        baca.dynamic(o.pleaf(-1), "mp")
        baca.spanners.damp(
            o.plts()[1:],
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            baca.tweak.self_alignment_x(-0.75),
        )
    with baca.scope(m[4]) as o:
        baca.repeat_tie(o.leaf(0))
        baca.hairpin(
            o.leaves()[:-1],
            "(mp)>o!",
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.pitch(o.plts()[:1], "C3")
        baca.pitch(o.plts()[1:], "F3")
        baca.spanners.damp(
            o.plts()[:1],
            baca.tweak.staff_padding(3),
            rleak=True,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.stem_tremolo(o.pleaf(0))
        baca.hairpin(
            o.leaves()[:2],
            ">o!",
            left_broken=True,
        )
        baca.hairpin(
            o.leaves(grace=False)[2:],
            "mf>o!",
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o.plts()[:1], "Dtqf3", allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 3)) as o:
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitch(u, "B2")
        with baca.scope(o.plts(grace=True)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_b_2(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.pitch(u, "D2", allow_obgc_mutation=True)
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.hairpin(
                u,
                "(mp)>o!",
            )
        baca.spanners.scp(
            o.leaves(),
            "T4 =|",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(baca.select.lleak(o.leaves()), "Dtqf2")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.phead(0))
        with baca.scope(o.plts()[:1]) as u:
            baca.pitch(u, "Eb2")
            baca.stem_tremolo(u)
        baca.pitch(o.plts()[1:], "B2")
        baca.hairpin(
            baca.select.rleak(o.plts()[:1]),
            ">o!",
            left_broken=True,
        )
        baca.dynamic(o.pleaf(-1), "mp")
        baca.spanners.damp(
            o.plts()[1:],
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            baca.tweak.self_alignment_x(-0.75),
        )
    with baca.scope(m[4]) as o:
        baca.repeat_tie(o.leaf(0))
        baca.hairpin(
            o[:-1],
            "(mp)>o!",
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.pitch(o.plts()[:1], "B2")
        baca.pitch(o.plts()[1:], "Eb2")
        baca.spanners.damp(
            o.plts()[:1],
            baca.tweak.staff_padding(3),
            rleak=True,
        )


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            with baca.scope(o.phead(-1)) as u:
                baca.accent(u)
                baca.stem_tremolo(u)
                baca.dynamic(u, "p"),
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 5)) as o:
            baca.spanners.metric_modulation(
                o.leaves()[-4:],
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(5, 4), (1, 4), (6, 4), (6, 4), (3, 4), (1, 4)]
    time_signatures = baca.section.wrap(time_signatures)
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
    perc2(cache)
    perc1_perc2(cache)
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    composites(cache)
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
        include_layout_ily=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


def make_layout(environment):
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 32),
        strict_overrides=(baca.layout.Override([2, 6], (1, 288)),),
    )
    return baca.section.make_layout_score(
        breaks,
        environment.metadata["time_signatures"],
        fermata_measure_numbers=environment.metadata.get("fermata_measure_numbers", []),
        first_measure_number=environment.first_measure_number,
        has_anchor_skip=environment.metadata["has_anchor_skip"],
        spacing=spacing,
    )


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
        lilypond_file, bol_measure_numbers = make_layout(environment)
        baca.build.persist_section_layout_ily(
            environment.section_directory, lilypond_file
        )
        baca.build.write_bol_metadata(
            environment.section_directory, bol_measure_numbers
        )


if __name__ == "__main__":
    main()
