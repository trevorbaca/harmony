import abjad
import baca

from harmony import library

#########################################################################################
########################################### 11 ##########################################
#########################################################################################

AG = baca.rhythm.AG
T = baca.rhythm.T
bl = baca.rhythm.bl
br = baca.rhythm.br
h = baca.rhythm.h
rt = baca.rhythm.rt
t = baca.rhythm.t
w = baca.rhythm.w

OBGC = library.OBGC
mmrests = library.mmrests
rhythm = library.rhythm


def GLOBALS(skips, rests):
    stage_markup = (
        ("[>L.1]", 1, "#darkgreen"),
        ("[K.1]", 2),
        ("[K.2-3]", 4),
        ("[<I.1]", 6, "#darkgreen"),
        ("[>L.4]", 7, "#darkgreen"),
        ("[>L.6]", 8, "#darkgreen"),
        ("[K.4]", 10),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "8=4"),
        (2 - 1, "72"),
        (2 - 1, "3:4(4)=4"),
        (6 - 1, "144"),
        (6 - 1, "8=4"),
        (7 - 1, "96"),
        (7 - 1, "4.=4"),
        (10 - 1, "72"),
        (10 - 1, "3:4(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (3 - 1, "fermata"),
        (9 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-nine",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[9 - 1],
        r"\harmony-text-ten",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [w(6, 12), h(6)],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(2, 4), head=True)
    rhythm(
        voice,
        ["-", 4, -2, 4],
        time_signatures(5),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, 8],
        time_signatures(7),
    )
    rhythm(
        voice,
        [6, 6],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9), head=True)
    rhythm(
        voice,
        ["-", w(4, 8), h(w(4, 8))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
        time_signatures(6),
    )
    rhythm(
        voice,
        2 * [w(3, 4), h(w(1, 4)), -8],
        time_signatures(7, 8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-2, 10, "-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [14, -4, 12, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-12, -6, 3, -3],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        3 * [2, -2],
        time_signatures(7),
    )
    rhythm(
        voice,
        [6, -6],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [6, -4, 4, -2],
        time_signatures(10),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-2, 10, "-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [14, -4, 12, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-4, T([-2, 4], -2), -4, -6, 3, -3],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        3 * [2, -2],
        time_signatures(7),
    )
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), rt(w(1, 2)), h(w(1, 4)), -6],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [6, -4, 4, -2],
        time_signatures(10),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        [rt(12)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        [8, 3, 6],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [-4, T([-2, w(2, 4), h(w(2, 4))], 2)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-4, 8, -6, 6],
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, 4, 4],
        time_signatures(7),
    )
    rhythm(
        voice,
        [8, T([rt(2), 4], -2)],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [rt(12)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-4, 8, -6, 6],
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, 4, 4],
        time_signatures(7),
    )
    rhythm(
        voice,
        [4, T([rt(2), 4], -2), T([rt(4), 2], -2)],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [-4, T([-2, w(2, 4), h(w(2, 4))], 2)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-4, 8, -6, 6],
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, 4, 4],
        time_signatures(7),
    )
    rhythm(
        voice,
        [8, T([rt(2), 3], -1)],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [rt(12)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-4, 8, -6, 6],
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, 4, 4],
        time_signatures(7),
    )
    rhythm(
        voice,
        [4, T([rt(3), t(2)], -1), 4],
        time_signatures(8),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.hairpinlib.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf >o !",
            glue=True,
            rleak=True,
        )
        baca.markup(o.pleaf(0), baca.levine_multiphonic(5))
    with baca.scope(m[5]) as o:
        baca.pitch(o, "Ab3")
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m[6]) as o:
        baca.pitch(o, "G3")
    with baca.scope(m.get(5, 6)) as o:
        with baca.scope(o.leaves()[1:8]) as u:
            baca.rspanners.covered(
                u,
                staff_padding=3,
            )
            baca.rspanners.metric_modulation(
                u,
                staff_padding=5.5,
            )
    with baca.scope(m[7]) as o:
        baca.breathe(o.pleaf(-1))
        for clpart in baca.select.clparts(o, [2]):
            baca.mspanners.text(
                baca.select.lparts(o, [1, 1]),
                "T -> A =|",
                do_not_bookend=True,
                staff_padding=5.5,
            )
    with baca.scope(m[8]) as o:
        cmgroups = baca.select.cmgroups(o, [1])
        pleaves = [baca.select.pleaf(_, -1) for _ in cmgroups]
        baca.breathe(pleaves)
        for clpart in baca.select.clparts(o, [4]):
            baca.mspanners.text(
                baca.select.lparts(clpart, [2, 2]),
                "T -> A =|",
                do_not_bookend=True,
                staff_padding=5.5,
            )
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch(o, "Dtqf5")
        baca.hairpinlib.hairpin(
            baca.select.lparts(o, [1, 1, 2, 2]),
            'o< "f" >o ! o< "f" >o !',
            glue=True,
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[10]) as o:
        baca.pitch(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[10]) as o:
        baca.hairpinlib.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1]),
            "o< mf >o !",
            glue=True,
            rleak=True,
        )
        baca.rspanners.metric_modulation(
            o.runs()[-1:],
            right_broken=True,
            staff_padding=5.5,
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.hairpinlib.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1]),
            "o< p >o !",
            glue=True,
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(o.pleaves())
        baca.stem_tremolo(o.pleaves()),
        baca.hairpinlib.hairpin(
            baca.select.lparts(o[:2], [1, 1]),
            "o< p > pp",
            glue=True,
            rleak=True,
        ),
        baca.hairpinlib.hairpin(
            baca.select.lparts(o[5:7], [1, 1]),
            "pp < mp > pp",
            glue=True,
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
        baca.dynamic(
            o.phead(0),
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            baca.hairpinlib.exact(
                run,
                "o<|f",
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[8]) as o:
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            baca.hairpinlib.exact(
                run,
                "o<|f",
            )
    with baca.scope(m[10]) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(o.leaves()[:-1])
        baca.stem_tremolo(o.pheads())
        baca.hairpinlib.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1, 1, 1, 1, 1, 1]),
            "o< p > pp pp < p > pp < p >o !",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            glue=True,
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.flat_glissando(o, left_broken=True)
        baca.stem_tremolo(o.pleaf(-1))
        baca.hairpinlib.exact(
            o,
            "(p)>o!",
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        library.tam_tam_staff_position(o)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        library.tam_tam_staff_position(o)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[6]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(6, 7)) as o:
        baca.rspanners.metric_modulation(
            o.leaves()[2:],
            staff_padding=10.5,
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[10]) as o:
        library.tam_tam_staff_position(o)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "C1")
        baca.rspanners.ottava(o.tleaves(), -1)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "C1")
        baca.rspanners.ottava(o.tleaves(), -1)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        with baca.scope(o.pleaf(0)) as u:
            baca.pitch(u, "<B5 C#6>")
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[6]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.double_flageolet(u)
            baca.dynamic(
                u,
                "f-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            )
        with baca.scope(o.phead(-1)) as u:
            baca.pitch(u, "E4")
            baca.dynamic(
                u,
                "f-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            )
            baca.snap_pizzicato(u)
    with baca.scope(m[7]) as o:
        baca.pitch(o, "E4")
        baca.snap_pizzicato(o.pheads())
    with baca.scope(m.get(6, 7)) as o:
        baca.rspanners.metric_modulation(
            o.leaves()[5:],
            staff_padding=8,
        )
    with baca.scope(m.get(1, 7)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.hairpinlib.hairpin(
            baca.select.lparts(o.run(0), [1, 3]),
            'o< "f" >o !',
            glue=True,
        )
        baca.override.dls_staff_padding(o, 6)
        baca.override.dynamic_text_x_offset(o.pleaf(1), -1.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "C1")
        baca.rspanners.ottava(o.tleaves(), -1)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(1, 10)) as o:
        baca.override.ottava_bracket_staff_padding(o, 8)


def va(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D3")
        baca.hairpinlib.exact(
            o,
            ">o!",
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "C#4")
        baca.flat_glissando(o.pleaves())
        baca.hairpinlib.exact(
            o.tleaves(),
            "mf>o!",
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\harmony-match-harp-decay-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.rspanners.xfb(
            o.pleaves(),
            staff_padding=3,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "Eb3")
    for item in [2, (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o.rleaves(), "A5", allow_hidden=True)
    for item in [2, 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.markup(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_up(o)
        baca.override.note_head_style_harmonic(o.pleaves())
        leaves = baca.select.rleak(o.leaves()[-2:])
        baca.hairpinlib.hairpin(
            baca.select.lparts(leaves, [1, 2]),
            "o<| mp |>o !",
            glue=True,
        )
        baca.override.dynamic_text_x_offset(o.pleaf(1), -1.5)
        baca.rspanners.trill(
            o.leaves()[-2:],
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
        )
    with baca.scope(m.get(1, 2)) as o:
        # TODO: pitched trill suppresses start of text spanner
        baca.rspanners.metric_modulation(
            o.tleaves(),
            staff_padding=12,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.phead(1), "bass")
    with baca.scope(m.get(6, 8)) as o:
        baca.pitch(o.run(0), "B4")
        baca.pitch(o.run(1), "Aqf3")
        baca.markup(
            o.run(1)[0],
            r"\baca-eleven-e-flat",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    for item in [(1, 2), (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o.rleaves(), "Gqs6", allow_hidden=True)
    for item in [(1, 2), 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.markup(
                o.pleaf(0),
                r"\baca-eleven-d",
                abjad.Tweak(r"- \tweak X-offset 2.5"),
                direction=abjad.DOWN,
            )
            baca.markup(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D2")
        baca.hairpinlib.exact(
            o,
            ">o!",
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.phead(-1), "bass")
    for item in [2, (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o.rleaves(), "F#5", allow_hidden=True)
    for item in [2, 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.markup(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.pitch(o.run(0), "Dqs4")
        baca.pitch(o.run(1), "F3")


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_up(o)
        baca.override.note_head_style_harmonic(o.pleaves())
        leaves = baca.select.rleak(abjad.select.leaves(o)[-2:])
        baca.hairpinlib.hairpin(
            baca.select.lparts(leaves, [1, 2]),
            "o<| mp |>o !",
            glue=True,
        )
        baca.override.dynamic_text_x_offset(o.pleaf(1), -1.5)
        baca.rspanners.trill(
            abjad.select.leaves(o)[-2:],
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
        )
    with baca.scope(m.get(1, 2)) as o:
        # TODO: pitched trill suppresses start of text spanner
        baca.rspanners.metric_modulation(
            o.tleaves(),
            staff_padding=10.5,
        )
    for item in [(1, 2), (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(
                o.rleaves(),
                "C#6",
                allow_hidden=True,
                do_not_transpose=True,
            )
    for item in [(1, 2), 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.markup(
                o.pleaf(0),
                r"\baca-fifteen-d",
                abjad.Tweak(r"- \tweak X-offset 2.5"),
                direction=abjad.DOWN,
            )
            baca.markup(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.override.note_head_style_harmonic(o.run(0))
        baca.pitch(o.run(0), "E3")
        baca.pitch(o.run(1), "Dtqf3")
        baca.markup(
            o.run(1)[0],
            r"\baca-seven-e-flat",
            direction=abjad.DOWN,
        )


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D2")
        baca.hairpinlib.exact(
            o,
            ">o!",
            left_broken=True,
            rleak=True,
        )
    for item in [2, (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(
                o.rleaves(),
                "Cqf6",
                allow_hidden=True,
                do_not_transpose=True,
            )
    for item in [2, 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.markup(
                o.pleaf(0),
                r"\baca-fourteen-d",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
            baca.markup(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o.run(0), "A1")
        baca.pitch(o.run(1), "Eb2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.hairpinlib.hairpin(
                baca.select.lparts(o.tleaves(), [1, 1]),
                "o<| mp |>o !",
                glue=True,
                rleak=True,
            )
            baca.rspanners.trill(
                baca.select.tleaves(o),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 5)) as o:
            baca.flat_glissando(o.pleaves())
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.hairpinlib.hairpin(
                baca.select.lparts(o[:2], [1, 1]),
                "o<| p |> pp",
                glue=True,
                rleak=True,
            )
            baca.hairpinlib.hairpin(
                baca.select.lparts(o[5:7], [1, 1]),
                "pp <| mp |> pp",
                glue=True,
                rleak=True,
            )
            baca.rspanners.trill(
                baca.select.tleaves(o),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            baca.override.tuplet_bracket_up(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.pheads()[1:], "sfp")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[10]) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.flat_glissando(o.rleaves(), right_broken=True)
            baca.hairpinlib.hairpin(
                baca.select.lparts(o.rleaves(), [1, 1, 1, 1, 1, 1, 1, 1]),
                "o<| mp |> pp pp <| mp |> ! <| mp |>o !",
                right_broken=True,
            )
            baca.rspanners.trill(
                baca.select.tleaves(o),
                right_broken=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
            baca.override.dls_staff_padding(o, 4)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[6]) as o:
            baca.stop_on_string(o.rest(1))
            baca.hairpinlib.exact(
                o[1:2],
                "o<|ff",
                rleak=True,
            )
            baca.accent(o.phead(-1))
            baca.stem_tremolo(o.plt(-1))
            baca.dynamic(o.phead(-1), "p")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[7]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(6, 7)) as o:
            baca.rspanners.metric_modulation(
                o.leaves()[4:],
                staff_padding=5.5,
            )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [3, 4, 1, 4, 4, 6, 3, 3, 1, 4]
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
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache)
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
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


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=40, distances=distances),
        ),
        baca.page(
            2,
            baca.system(measure=7, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([3, 9], (1, 288)),),
    )
    baca.section.make_layout_ly(spacing)


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
