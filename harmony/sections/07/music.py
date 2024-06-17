import abjad
import baca

from harmony import library

#########################################################################################
########################################### 07 ##########################################
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
        ("[G.1]", 1),
        ("[>H.1]", 2, "#darkgreen"),
        ("[G.2-3]", 4),
        ("[<F.3]", 6, "#darkgreen"),
        ("[>I.1]", 7, "#darkgreen"),
        ("[G.4]", 8),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "57 3/5"),
        (1 - 1, "6:5(4)=4"),
        (2 - 1, "96"),
        (2 - 1, "5:3(4)=4"),
        (4 - 1, "57 3/5"),
        (4 - 1, "3:5(4)=4"),
        (6 - 1, "48"),
        (6 - 1, "5:6(4)=4"),
        (7 - 1, "144"),
        (7 - 1, "3:2(8)=4"),
        (8 - 1, "57 3/5"),
        (8 - 1, "4:5(2)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-six",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), -12],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2, 3))
    rhythm(
        voice,
        [w(1, 2), h(w(1, 4)), "-", w(1, 2), h(w(1, 4))],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-12, T([-2, 4], -2), T([-2, 4], -2)],
        time_signatures(6),
    )
    rhythm(
        voice,
        [-4, 8, -2, T([-4, w(2, 4), h(w(2, 4))], 2)],
        time_signatures(7),
    )
    rhythm(
        voice,
        [w(1, 2), h(w(1, 4)), "-"],
        time_signatures(8),
    )


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [-15, 1],
        time_signatures(1),
    )
    rhythm(
        voice,
        [1, -11],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [1, -16, 1, "-"],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-19, 1],
        time_signatures(6),
    )
    rhythm(
        voice,
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
        time_signatures(7),
    )
    rhythm(
        voice,
        [1, "-"],
        time_signatures(8),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    music = baca.make_notes(time_signatures(4, 5))
    voice.extend(music)
    rhythm(
        voice,
        [16, "-", 1],
        time_signatures(6),
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        ["+"],
        time_signatures(8),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [w(6, 12), h(w(6, 4))],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        [2, -28, 2],
        time_signatures(4, 5),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(6),
        [-2, 4, "-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [-4, T([-4, 8], -4), -2, T([-4, w(2, 4), h(w(2, 4))], 2)],
        time_signatures(7),
    )
    rhythm(
        voice,
        [w(1, 2), h(w(1, 4)), "-"],
        time_signatures(8),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        [OBGC(5 * [2], [4]), T([rt(8), 4, 4, 4], -8)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [4, "+"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        OBGC(4 * [2], [16]),
        time_signatures(4),
    )
    rhythm(
        voice,
        [rt(4), T([rt(2), 4, 4], 2)],
        time_signatures(5),
    )
    rhythm(
        voice,
        [4, 12, -4],
        time_signatures(6),
    )
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(7, 8),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [rt(w(15, 16)), h(w(1, 4))],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [12],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [OBGC(4 * [2], [4]), 4, 4, 4, 4, 4, 4, 4],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(6),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(7),
    )
    rhythm(
        voice,
        [4, T([rt(4), 4, 4, 4, 4], -8)],
        time_signatures(8),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [12],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        ["+"],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(6),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(7),
    )
    music = baca.make_repeat_tied_notes(time_signatures(8))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [4, 4, 4, 4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [12],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [OBGC(4 * [2], [16]), rt(16)],
        time_signatures(4, 5),
    )
    music = baca.make_repeated_duration_notes(
        time_signatures(6),
        [(1, 4)],
    )
    voice.extend(music)
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(7),
    )
    rhythm(
        voice,
        [4, 4, 4, 4],
        time_signatures(8),
    )


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        ["+"],
        time_signatures(4, 5),
    )
    music = baca.make_repeated_duration_notes(
        time_signatures(6),
        [(1, 4)],
    )
    voice.extend(music)
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(7),
    )
    music = baca.make_repeat_tied_notes(time_signatures(8))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Bb5"),
        baca.stem_tremolo(o.pleaves())
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                baca.select.lparts(o, [1, 2]),
                "o<| f|>o!",
            )
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "Bb5")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o[:3], [1, 2]),
            "o<| f|>o!",
        )
        baca.override.dynamic_text_x_offset(o.pleaf(1), -0.75)
        baca.hairpin(
            baca.select.clparts(o[-2:], [1, 1]),
            "o<| mf|>o!",
            rleak=True,
        )
        baca.override.dynamic_text_x_offset(o.pleaf(3), -2)
    with baca.scope(m[6]) as o:
        baca.pitch(o, "Ab3")
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m[7]) as o:
        baca.override.tuplet_bracket_direction_up(o)
        baca.pitch(o.runs()[:1], "G3")
        baca.pitch(o.runs()[1:], "Bb5")
        baca.stem_tremolo(o.pleaves()[-2:])
        baca.hairpin(
            baca.select.clparts(o[-2:], [1]),
            "o< f>o",
        )
    with baca.scope(m.get(6, 7)) as o:
        with baca.scope(o.leaves()[1:7]) as u:
            baca.spanners.covered(
                u,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Bb5"),
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.clparts(o[:3], [1, 2]),
            "o< f>o!",
        )
        baca.override.dynamic_text_x_offset(o.pleaf(1), -0.75)
    with baca.scope(m.get(7, 8)) as o:
        baca.override.tuplet_bracket_staff_padding(o, 6.5)
        baca.spanners.metric_modulation(
            o.leaves()[4:8],
            baca.tweak.staff_padding(11.5),
            rleak=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2),
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.self_alignment_x(0.75),
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.hairpin(
            o.pleaves(),
            "f+mp",
        )
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.self_alignment_x(-0.75),
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-superball-markup",
            baca.tweak.self_alignment_x(1),
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[7]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(6),
        )
        baca.dynamic(
            o.phead(0),
            '"f"',
            baca.tweak.self_alignment_x(-0.75),
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[8]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.self_alignment_x(-0.75),
            baca.tweak.staff_padding(5),
        )


def perc2(m):
    with baca.scope(m.get(1, 2)) as o:
        library.tam_tam_staff_position(o)
        baca.glissando(o.pleaves(), "C4", hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.stem_tremolo(o.pleaf(0))
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.75),
        )
    with baca.scope(m[6]) as o:
        baca.stem_tremolo(o.pleaf(0))
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position(u)
            baca.damp(u)
            baca.dynamic(u, "mf")
            baca.markup(
                u,
                r"\baca-boxed-brake-drum-markup",
                baca.tweak.self_alignment_x(1),
                baca.tweak.staff_padding(6),
            )
    with baca.scope(m.get(4, 6)) as o:
        with baca.scope(o.run(0)) as u:
            library.tam_tam_staff_position(u)
            baca.glissando(u, "C4", hide_middle_stems=True)
    with baca.scope(m[8]) as o:
        library.tam_tam_staff_position(o)
        baca.glissando(
            baca.select.rleak(o.pleaves()),
            "C4",
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.dynamic(o.phead(0), '"f"')
        baca.override.dls_staff_padding(o, 6)
        baca.spanners.metric_modulation(
            o.leaves()[:2],
            baca.tweak.staff_padding(5.5),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "B5:C6:D6")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 4),
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.padding(2.5),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.dynamic(o.phead(0), '"f"')
        baca.dynamic(o.phead(-1), "mf")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitches(o, "F#4 G#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 4)
        baca.spanners.text(
            o,
            r"\baca-fingernail-markup =|",
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[7]) as o:
        baca.pitch(o.plt(0), "B5:C#6")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[7]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.double_flageolet(u)
            baca.dynamic(u, "f")
            baca.markup(
                u,
                r"\baca-lv-markup",
                baca.tweak.padding(1.5),
            )
            baca.override.dls_staff_padding(u, 4 + 2),
        with baca.scope(o.pleaf(-2)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1),
            library.whisk_staff_position(u)
            baca.staff_position(u, 0)
            baca.markup(u, r"\baca-whisk-markup")
            baca.dynamic(u, '"f"')
            baca.override.dls_staff_padding(u, 6 + 2)
        library.whisk_staff_position(o.pleaf(-1))
        baca.staff_position(o.pleaf(-1), 0)
    with baca.scope(m[8]) as o:
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.dynamic(o.phead(0), '"f"')
        baca.override.dls_staff_padding(o, 6 + 2)
    with baca.scope(m.get(7, 8)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[5:9],
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_b_flat(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(8),
            direction=abjad.DOWN,
            rleak=True,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
        baca.espressivo(baca.select.pheads(o, grace=False)[1:])
        baca.spanners.metric_modulation(
            o.leaves()[7:11],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o[1:2],
            "pp>o!",
            rleak=True,
        )
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 6)) as o:
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(8),
            direction=abjad.DOWN,
            rleak=True,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
        baca.espressivo(o.pheads(grace=False)[1:])
    with baca.scope(m.get(5, 6)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[2:5],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m.get(7, 8)) as o:
        baca.glissando(o.pleaves(), "C#4")
        baca.hairpin(
            o.tleaves(),
            "mf>o!",
            rleak=True,
        )
        baca.spanners.xfb(
            o.pleaves(),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E4")
        baca.hairpin(
            [o],
            ">o!",
            left_broken=True,
        )
        baca.spanners.bow_speed(
            o,
            "scr. =|",
            baca.tweak.staff_padding(3.5),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "C5:Db5:Eb5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 1),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(9),
            direction=abjad.DOWN,
            rleak=True,
        ),
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
        baca.espressivo(baca.select.pheads(o, grace=False)[1:])
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E4")
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.spanners.bow_speed(
                o,
                "scr. =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "B4")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Bb4")
        baca.espressivo(o.pheads()[-4:])
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.metric_modulation(
            o.leaves()[-4:],
            baca.tweak.staff_padding(5.5),
            right_broken=True,
            rleak=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2"),
        baca.dynamic(o.phead(0), "p")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.bound_details_right_padding(4),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "B4:C5:D5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2"),
        baca.dynamic(o.phead(0), "p")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eqf4"),
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.spanners.bow_speed(
                run,
                "scr. =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "Dqs4")
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-a",
            baca.tweak.padding(1),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "p")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            right_broken=True,
            rleak=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.glissando(o, "E1", left_broken=True)
        baca.hairpin(
            [o],
            ">o",
            left_broken=True,
        )
        baca.spanners.scp(
            [o],
            "P1 -> T1",
            baca.tweak.staff_padding(3),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "C5:Db5:Eb5", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o.plts(grace=False), "Bb3", do_not_transpose=True)
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 2),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(8),
            direction=abjad.DOWN,
            rleak=True,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.glissando(o, "E1")
        baca.hairpin(
            o,
            "mf>p",
        )
        baca.spanners.scp(
            [o],
            "P1 -> T1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[7]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "E3"),
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.padding(1),
            direction=abjad.DOWN,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Bb4", do_not_transpose=True)
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def cb2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "Bb2"),
        baca.dynamic(o.phead(0), "p")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "Bb2")
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.glissando(o, "E1")
        baca.hairpin(
            o,
            "p<f",
        )
        baca.spanners.scp(
            baca.select.lparts(o, [2, 2]),
            "T1 -> P2 -> O",
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "A1")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.padding(1),
            direction=abjad.DOWN,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Bb2")
        baca.dynamic(o.phead(0), "p")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            right_broken=True,
            rleak=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def composites(cache):
    for name in ["vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.markup(
                o.pleaf(0),
                r"\baca-quasi-bisb-markup",
                baca.tweak.padding(1.5),
            )
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[7]) as o:
            for run in abjad.select.runs(o):
                leaf = baca.select.rleaf(run, -1)
                baca.stop_on_string(leaf)
            baca.hairpin(
                o.tleaves(),
                "o<|ff",
                rleak=True,
            )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(4, 4), (3, 4), (1, 4), (4, 4), (4, 4), (5, 4), (6, 4), (4, 4)]
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
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache["cb2"])
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
        baca.layout.Page(
            2,
            baca.layout.System(6, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        overrides=(baca.layout.Override([3], (1, 288)),),
    )
    baca.build.write_layout_ily(
        breaks,
        environment.metadata["time_signatures"],
        spacing,
        fermata_measure_numbers=environment.metadata.get("fermata_measure_numbers", []),
        first_measure_number=environment.first_measure_number,
        has_anchor_skip=environment.metadata["has_anchor_skip"],
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
        make_layout(environment)


if __name__ == "__main__":
    main()
