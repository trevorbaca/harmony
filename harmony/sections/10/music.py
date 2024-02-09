import abjad
import baca

from harmony import library

#########################################################################################
########################################### 10 ##########################################
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


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[J.1]", 1),
        ("[>K.1]", 2, "#darkgreen"),
        ("[<I.1]", 3, "#darkgreen"),
        ("[J.2-5]", 4),
        ("[<I.1]", 8, "#darkgreen"),
        ("[J.6]", 10),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2.=4"),
        (2 - 1, "72"),
        (2 - 1, "3:2(4)=4"),
        (3 - 1, "144"),
        (3 - 1, "8=4"),
        (4 - 1, "48"),
        (4 - 1, "2.=4"),
        (8 - 1, "144"),
        (8 - 1, "3:2(8)=4"),
        (10 - 1, "48"),
        (10 - 1, "2.=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.close_volta(skips[2 - 1], first_measure_number)
    for index, string in ((9 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[9 - 1],
        r"\harmony-text-eight",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1),
        ["-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [-2, 4, -2, -4, 4],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4, 6))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(7),
        ["-", 4, -2, 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [-1, OBGC(9 * [2], [3, rt(8)]), 12],
        time_signatures(10),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        3 * [w(12, 24), h(12)],
        time_signatures(11, 13),
    )
    rhythm(
        voice,
        [w(12, 24), h(8), h(w(3, 4)), h(w(1, 4))],
        time_signatures(14),
    )
    rhythm(
        voice,
        [-1, OBGC(9 * [2], [23])],
        time_signatures(15),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    rhythm(
        voice,
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4, 6))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(7),
        ["-", 2, -2, 2, -2],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9), head=True)
    music = baca.make_notes(time_signatures(10, 14))
    voice.extend(music)
    mmrests(voice, time_signatures(15), head=True)


def PERC2(voice, time_signatures):
    music = baca.make_notes(time_signatures(1, 7))
    voice.extend(music)
    mmrests(voice, time_signatures(8, 9))
    music = baca.make_notes(time_signatures(10, 15))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    music = baca.make_notes(time_signatures(2, 8))
    voice.extend(music)
    mmrests(voice, time_signatures(9))
    music = baca.make_notes(time_signatures(10, 12))
    voice.extend(music)
    mmrests(voice, time_signatures(13, 15), head=True)


def VA(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4, 7), head=True)
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9), head=True)
    rhythm(
        voice,
        [12, 1, 1, 1, "+"],
        time_signatures(10),
    )
    rhythm(
        voice,
        4 * [T(11 * [4], "11:6")],
        time_signatures(11, 14),
    )
    music = baca.make_notes(time_signatures(15))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4, 7))
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        abjad.sequence.repeat_to_weight([13, 1, 1, 1], 48),
        time_signatures(10, 11),
    )
    rhythm(
        voice,
        3 * [T(10 * [4], "10:6")],
        time_signatures(12, 14),
    )
    music = baca.make_notes(time_signatures(15))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4, 7))
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        abjad.sequence.repeat_to_weight([14, 1, 1, 1], 72),
        time_signatures(10, 12),
    )
    rhythm(
        voice,
        2 * [T(9 * [4], "9:6")],
        time_signatures(13, 14),
    )
    music = baca.make_notes(time_signatures(15))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    music = baca.make_notes(time_signatures(2, 8))
    voice.extend(music)
    mmrests(voice, time_signatures(9))
    music = baca.make_notes(time_signatures(10, 15))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    rhythm(
        voice,
        [-8, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4, 7))
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        abjad.sequence.repeat_to_weight([16, 1, 1, 1], 72),
        time_signatures(10, 12),
    )
    rhythm(
        voice,
        2 * [T(7 * [4], "7:6")],
        time_signatures(13, 14),
    )
    music = baca.make_notes(time_signatures(15))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m.get(1, 2)) as o:
        with baca.scope(o.leaves()[2:7]) as u:
            baca.rspanners.covered(
                u,
                staff_padding=5.5,
            )
            baca.rspanners.metric_modulation(
                u,
                staff_padding=8,
            )
    with baca.scope(m.get(2, 3)) as o:
        baca.pitch(o, "E3")
        with baca.scope(o.leaves()[4:8]) as u:
            baca.rspanners.covered(
                u,
                staff_padding=5.5,
            )
            baca.rspanners.metric_modulation(
                u,
                staff_padding=8,
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "F3")
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "E3")
    with baca.scope(m.get(7, 8)) as o:
        with baca.scope(o.leaves()[1:7]) as u:
            baca.rspanners.covered(
                u,
                staff_padding=5.5,
            )
            baca.rspanners.metric_modulation(
                u,
                staff_padding=8,
            )
    with baca.scope(m[10]) as o:
        baca.pitch(o.leaves(grace=False), "G3")
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_g(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[10]) as o:
        baca.piecewise.hairpin(
            abjad.select.partition_by_counts(
                baca.select.pleaves(o, grace=False), [2, 1]
            ),
            "o< mp >o",
            forbid_al_niente_to_bar_line=True,
        )
        baca.piecewise.text(
            (),
            r"\harmony-g-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            pieces=[baca.select.rleak(baca.select.tleaves(o, grace=False))],
        )
    with baca.scope(m.get(11)) as o:
        baca.piecewise.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf >o",
            forbid_al_niente_to_bar_line=True,
        )
    with baca.scope(m.get(12)) as o:
        baca.piecewise.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< f >o",
            forbid_al_niente_to_bar_line=True,
        )
    with baca.scope(m.get(13)) as o:
        baca.piecewise.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf >o",
            forbid_al_niente_to_bar_line=True,
        )
    with baca.scope(m.get(11, 12)) as o:
        baca.pitch(o.leaves(grace=False), "G4")
    with baca.scope(m[14]) as o:
        baca.piecewise.hairpin(
            baca.select.lparts(o, [1, 3]),
            "o< mp >o !",
        )
    with baca.scope(m.get(13, 14)) as o:
        baca.pitch(o.leaves(grace=False), "G#4")
    with baca.scope(m[15]) as o:
        baca.pitches(o.leaves(grace=False), "A3")
        baca.pitches(
            abjad.select.leaves(o, grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[15]) as o:
        baca.dynamic(o.pleaf(0, grace=False), "p")
        baca.piecewise.text(
            (),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            pieces=[baca.select.rleak(baca.select.tleaves(o, grace=False))],
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[2]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        leaves = baca.select.rleak(baca.select.tleaves(o))
        baca.piecewise.hairpin(
            baca.select.lparts(leaves, [1, 1 + 1]),
            "o< p >o !",
        )
        baca.override.dynamic_text_x_offset(o.pleaf(1), -0.75)
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
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
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
    with baca.scope(m[8]) as o:
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
    with baca.scope(m.get(3, 8)) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(7, 8)) as o:
        baca.rspanners.metric_modulation(
            o.leaves()[2:],
            staff_padding=8,
        )
    with baca.scope(m.get(10, 14)) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(o)
        baca.stem_tremolo(abjad.select.get(o.pheads(), [0, -1]))
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(14)) as o:
        baca.spanners.hairpin(
            o.rleaves(),
            "(p) >o !",
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o.leaves(), 6)


def perc2(m):
    with baca.scope(m.get(1, 7)) as o:
        library.bass_drum_staff_position(o)
        baca.flat_glissando(o, left_broken=True)
        baca.stem_tremolo(o.phead(-1))
    with baca.scope(m.get(10, 15)) as o:
        with baca.scope(o.rleaves()) as u:
            library.bass_drum_staff_position(u, allow_hidden=True)
            baca.flat_glissando(u, right_broken=True)
        baca.stem_tremolo(o.phead(0))
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(2, 12)) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(2, 3)) as o:
        baca.pitch(o, "F#3")
        baca.flat_glissando(o, hide_middle_stems=True)
    with baca.scope(m.get(4, 11)) as o:
        baca.pitch(o, "<F#3 Gb3>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 11)) as o:
        baca.flat_glissando(o, hide_middle_stems=True)
    with baca.scope(m.get(12)) as o:
        baca.pitch(o, "F#3")
    with baca.scope(m.get(2, 12)) as o:
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m.get(4, 7)) as o:
        baca.piecewise.text(
            (),
            "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
            " -> 0 pul. / beat",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.lparts(o.rleaves(), [1, 1, 1, 2]),
        )
    with baca.scope(m.get(10, 11)) as o:
        baca.piecewise.text(
            (),
            "0 pul. / beat -> 8 pul. / beat -> 0 pul. / beat",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.lparts(o.rleaves(), [1, 2]),
        )
    with baca.scope(m.get(12)) as o:
        baca.spanners.hairpin(
            o.rleaves(),
            "(mf) >o !",
        )
    with baca.scope(m.get(2, 12)) as o:
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(4)) as o:
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-plus-lh-bow-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(12)) as o:
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-only-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 13)) as o:
        baca.override.dls_staff_padding(o.leaves(), 4)


def va(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "C4")
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A5")
        baca.rspanners.trill(
            baca.select.tleaves(o),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "alto")
    for n in [3, 8]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "C#4")
            baca.flat_glissando(o.pleaves())
            baca.spanners.hairpin(
                baca.select.tleaves(o),
                "mf >o !",
                with_next_leaf=True,
            )
            baca.piecewise.bow_speed(
                (),
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=[baca.select.rleak(baca.select.ltleaves(o))],
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.untie(o.pleaves())
        baca.override.tuplet_bracket_up(o)
        baca.repeat_tie(o.leaf(1))
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#4 D3")
        baca.staff_positions(
            o.plts()[1:-1],
            [
                0,
                2,
                -1,
                1,
                -2,
                1,
                0,
                2,
                -1,
                1,
                -2,
                1,
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
            ],
        ),
        baca.glissando(o.tleaves())
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 4]),
            "o< ff >o !",
            right_broken=True,
        )
        baca.piecewise.scp(
            (),
            "T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=True,
            pieces=baca.select.mgroups(o.leaves(), [3, 3]),
        )


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "B4")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Gqs6"),
        baca.rspanners.trill(
            baca.select.tleaves(o),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    for n in [3, 8]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "B4")
    with baca.scope(m.get(10, 15)) as o:
        baca.untie(o.pleaves())
        baca.repeat_tie(o.leaf(1))
        baca.clef(o.leaf(0), "bass")
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#3 D2")
        baca.staff_positions(
            o.plts()[1:-1],
            [
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
            ],
        ),
        baca.glissando(o.tleaves())
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 4]),
            "o< ff >o !",
        )
        baca.piecewise.scp(
            (),
            "T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=True,
            pieces=baca.select.mgroups(o.leaves(), [3, 3]),
        )


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Dqs4")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "F#5")
        baca.rspanners.trill(
            baca.select.tleaves(o),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    for n in [3, 8]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Dqs4")
            baca.markup(
                o.pleaf(0),
                r"\baca-eleven-a",
                abjad.Tweak(r"- \tweak staff-padding 1.5"),
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.untie(o.pleaves())
        baca.repeat_tie(o.leaf(1))
        baca.clef(o.leaf(0), "bass")
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#3 D2")
        baca.staff_positions(
            o.plts()[1:-1],
            [
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
            ],
        )
        baca.glissando(o.tleaves())
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 4]),
            "o< ff >o !",
            right_broken=True,
        )
        baca.piecewise.scp(
            (),
            "T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=True,
            pieces=baca.select.mgroups(o.leaves(), [3, 3]),
        )


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F3"),
    with baca.scope(m.get(2, 12)) as o:
        baca.pitch(o, "F#1")
        baca.flat_glissando(o)
        baca.dynamic(o.phead(0), "pp")
        baca.piecewise.scp(
            (),
            "T1 =| (T1) -> T2 -> T1 -> T3 -> T1 =| (T1) -> P2 -> T3 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.mgroups(o.rleaves(), [2, 1, 1, 1, 1, 2, 1, 1, 2]),
        )
    with baca.scope(m.get(12, 15)) as o:
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [1, 1, 3]),
            "(pp) >o ! o< mf >o !",
        )
    with baca.scope(m.get(13, 15)) as o:
        baca.interpolate_pitches(o, "F#2", "D2")
        baca.glissando(o.tleaves(), hide_middle_note_heads=True)
        baca.piecewise.scp(
            (),
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
            pieces=baca.select.mgroups(o.leaves(), [1, 2]),
        )


def cb2(m):
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Dqf6", do_not_transpose=True)
        baca.rspanners.trill(
            baca.select.tleaves(o),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
    for n in [3, 8]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "A1")
            baca.markup(
                o.pleaf(0),
                r"\baca-string-iii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.repeat_tie(o.leaf(1))
        baca.override.tuplet_bracket_up(o)
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#3 D2")
        baca.staff_positions(
            o.plts()[1:-1],
            [
                5,
                6,
                3,
                5,
                2,
                5,
                3,
                5,
                2,
                4,
                1,
                4,
                3,
                5,
                2,
                4,
                1,
                4,
                2,
                4,
                1,
                3,
                0,
                3,
                2,
                4,
                1,
                3,
                0,
                3,
                1,
                3,
                0,
                2,
                -1,
                2,
                1,
                3,
                0,
                2,
                -1,
                2,
            ],
        )
        baca.glissando(o.tleaves())
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 4]),
            "o< ff >o !",
            right_broken=True,
        )
        baca.piecewise.scp(
            (),
            "T4 -> P1 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=True,
            pieces=baca.select.mgroups(o.leaves(), [3, 3]),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            with baca.scope(o.leaves()[:2]) as u:
                if name in ("va", "vc1", "vc2"):
                    baca.rspanners.metric_modulation(
                        u,
                        left_broken=True,
                        staff_padding=8,
                    )
                    baca.piecewise.bow_speed(
                        (),
                        "XFB =|",
                        abjad.Tweak(r"- \tweak staff-padding 5.5"),
                        pieces=[baca.select.rleak(u)],
                    )
                elif name == "cb1":
                    baca.rspanners.metric_modulation(
                        u,
                        left_broken=True,
                        staff_padding=10.5,
                    )
                    baca.piecewise.bow_speed(
                        (),
                        "XFB =|",
                        abjad.Tweak(r"- \tweak staff-padding 8"),
                        pieces=[baca.select.rleak(u)],
                    )
            baca.spanners.hairpin(
                o.leaves()[:2],
                "mp >o !",
            )
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            leaves = baca.select.rleak(baca.select.tleaves(o))
            baca.piecewise.hairpin(
                baca.select.lparts(leaves, [1, 1 + 1]),
                "o<| mp |>o !",
            )
    for name in ["vc1", "vc2", "cb2"]:
        m = cache[name]
        for n in [3, 8]:
            with baca.scope(m[n]) as o:
                for run in abjad.select.runs(o):
                    leaf = baca.select.rleaf(run, -1)
                    baca.stop_on_string(leaf)
                baca.spanners.hairpin(
                    baca.select.tleaves(o),
                    "o<| ff",
                    with_next_leaf=True,
                )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 15)) as o:
            baca.override.dls_staff_padding(o.leaves(), 4)
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(10, 15)) as o:
            baca.override.tuplet_bracket_staff_padding(o, 2)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [6, 4, 6, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 6]
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
    GLOBALS(score["Skips"], score["Rests"], first_measure_number)
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
            baca.system(measure=10, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(
            baca.space((4, 7), (1, 20)),
            baca.space([9], (1, 288)),
        ),
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
