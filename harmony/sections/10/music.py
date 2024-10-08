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
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


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
            baca.spanners.covered(
                u,
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    with baca.scope(m.get(2, 3)) as o:
        baca.pitch(o, "E3")
        with baca.scope(o.leaves()[4:8]) as u:
            baca.spanners.covered(
                u,
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "F3")
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "E3")
    with baca.scope(m.get(7, 8)) as o:
        with baca.scope(o.leaves()[1:7]) as u:
            baca.spanners.covered(
                u,
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                rleak=True,
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
        baca.hairpin(
            abjad.select.partition_by_counts(
                baca.select.pleaves(o, grace=False), [2, 1]
            ),
            "o< mp>o",
        )
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-g-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(8),
            direction=abjad.DOWN,
            rleak=True,
        )
    with baca.scope(m.get(11)) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf>o",
        )
    with baca.scope(m.get(12)) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< f>o",
        )
    with baca.scope(m.get(13)) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf>o",
        )
    with baca.scope(m.get(11, 12)) as o:
        baca.pitch(o.leaves(grace=False), "G4")
    with baca.scope(m[14]) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 2]),
            "o< mp>o!",
            rleak=True,
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
        baca.spanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            baca.tweak.direction_down(),
            baca.tweak.staff_padding(8),
            direction=abjad.DOWN,
            rleak=True,
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[2]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1]),
            "o< p>o!",
            rleak=True,
        )
        baca.override.dynamic_text_x_offset(o.pleaf(1), -0.75)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-triangle-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[3]) as o:
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
        baca.dynamic(
            o.phead(0),
            '"f"',
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(6),
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
        baca.spanners.metric_modulation(
            o.leaves()[2:],
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m.get(10, 14)) as o:
        library.triangle_staff_position(o)
        baca.glissando(o)
        baca.stem_tremolo(abjad.select.get(o.pheads(), [0, -1]))
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-triangle-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(14)) as o:
        baca.hairpin(
            o.rleaves(),
            "(p)>o!",
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o.leaves(), 6)


def perc2(m):
    with baca.scope(m.get(1, 7)) as o:
        library.bass_drum_staff_position(o)
        baca.glissando(o, left_broken=True)
        baca.stem_tremolo(o.phead(-1))
    with baca.scope(m.get(10, 15)) as o:
        with baca.scope(o.rleaves()) as u:
            library.bass_drum_staff_position(u, allow_hidden=True)
            baca.glissando(u, right_broken=True)
        baca.stem_tremolo(o.phead(0))
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(2, 12)) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(2, 3)) as o:
        baca.glissando(o, "F#3", hide_middle_stems=True)
    with baca.scope(m.get(4, 11)) as o:
        baca.pitch(o, "F#3:Gb3")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 11)) as o:
        baca.glissando(o, hide_middle_stems=True)
    with baca.scope(m.get(12)) as o:
        baca.pitch(o, "F#3")
    with baca.scope(m.get(2, 12)) as o:
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m.get(4, 7)) as o:
        baca.spanners.text(
            baca.select.lparts(o.rleaves(), [1, 1, 1, 2]),
            "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
            " -> 0 pul. / beat",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m.get(10, 11)) as o:
        baca.spanners.text(
            baca.select.lparts(o.rleaves(), [1, 2]),
            "0 pul. / beat -> 8 pul. / beat -> 0 pul. / beat",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m.get(12)) as o:
        baca.hairpin(
            o,
            "(mf)>o!",
            rleak=True,
        )
    with baca.scope(m.get(2, 12)) as o:
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-markup",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(4)) as o:
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-plus-lh-bow-markup",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(12)) as o:
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-only-markup",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(1, 13)) as o:
        baca.override.dls_staff_padding(o.leaves(), 4)


def va(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "C4")
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A5")
        baca.spanners.trill(
            baca.select.tleaves(o),
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            baca.tweak.padding(1),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "alto")
    for n in [3, 8]:
        with baca.scope(m[n]) as o:
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
    with baca.scope(m.get(10, 15)) as o:
        baca.untie(o.pleaves())
        baca.override.tuplet_bracket_direction_up(o)
        baca.repeat_tie(o.leaf(1))
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#4 D3")
        baca.staff_positions(
            o.plts()[1:-1],
            [0, 2, -1, 1, -2, 1, 0, 2, -1, 1, -2, 1, -1, 1, -2, 0, -3, 0, -1, 1, -2]
            + [0, -3, 0, -2, 0, -3, -1, -4, -1, -2, 0, -3, -1, -4, -1, -3, -1, -4, -2]
            + [-5, -2, -3, -1, -4, -2, -5, -2],
        )
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 3, 1]),
            "o< ff>o !",
            right_broken=True,
        )
        baca.spanners.scp(
            baca.select.mgroups(o, [3, 2]),
            "T1 -> P1 -> T1",
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "B4")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Gqs6"),
        baca.spanners.trill(
            baca.select.tleaves(o),
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            baca.tweak.padding(1),
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
            [-1, 1, -2, 0, -3, 0, -1, 1, -2, 0, -3, 0, -2, 0, -3, -1, -4, -1, -2]
            + [0, -3, -1, -4, -1, -3, -1, -4, -2, -5, -2, -3, -1, -4, -2, -5, -2]
            + [-4, -2, -5, -3, -6, -3, -4, -2, -5, -3, -6, -3],
        ),
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 4]),
            "o< ff>o!",
        )
        baca.spanners.scp(
            baca.select.mgroups(o, [3, 2]),
            "T1 -> P1 -> T1",
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Dqs4")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "F#5")
        baca.spanners.trill(
            baca.select.tleaves(o),
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            baca.tweak.padding(1),
            direction=abjad.DOWN,
        )
    for n in [3, 8]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Dqs4")
            baca.markup(
                o.pleaf(0),
                r"\baca-eleven-a",
                baca.tweak.staff_padding(1.5),
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.untie(o.pleaves())
        baca.repeat_tie(o.leaf(1))
        baca.clef(o.leaf(0), "bass")
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#3 D2")
        baca.staff_positions(
            o.plts()[1:-1],
            [-1, 1, -2, 0, -3, 0, -2, 0, -3, -1, -4, -1, -2, 0, -3, -1, -4, -1, -3]
            + [-1, -4, -2, -5, -2, -3, -1, -4, -2, -5, -2, -4, -2, -5, -3, -6, -3]
            + [-4, -2, -5, -3, -6, -3],
        )
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 3, 1]),
            "o< ff>o !",
            right_broken=True,
        )
        baca.spanners.scp(
            baca.select.mgroups(o, [3, 2]),
            "T1 -> P1 -> T1",
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F3"),
    with baca.scope(m.get(2, 12)) as o:
        baca.glissando(o, "F#1")
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.scp(
            baca.select.mgroups(o, [2, 1, 1, 1, 1, 2, 1, 1, 1]),
            "T1 =| (T1) -> T2 -> T1 -> T3 -> T1 =| (T1) -> P2 -> T3 =|",
            baca.tweak.staff_padding(3),
            do_not_bookend=True,
            rleak=True,
        )
    with baca.scope(m.get(12, 15)) as o:
        baca.hairpin(
            baca.select.mgroups(o, [1, 1, 2]),
            "(pp)>o !o< mf>o!",
            rleak=True,
        )
    with baca.scope(m.get(13, 15)) as o:
        baca.glissando(o.tleaves(), "F#2 D2")
        baca.spanners.scp(
            baca.select.mgroups(o, [1, 1]),
            "T4 -> O -> T4",
            baca.tweak.staff_padding(3),
            rleak=True,
        )


def cb2(m):
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Dqf6", do_not_transpose=True)
        baca.spanners.trill(
            baca.select.tleaves(o),
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            baca.tweak.padding(1),
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
                baca.tweak.padding(1),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.repeat_tie(o.leaf(1))
        baca.override.tuplet_bracket_direction_up(o)
        baca.pitches(abjad.select.get(o.plts(), [0, -1]), "F#3 D2")
        baca.staff_positions(
            o.plts()[1:-1],
            [5, 6, 3, 5, 2, 5, 3, 5, 2, 4, 1, 4, 3, 5, 2, 4, 1, 4, 2, 4, 1, 3, 0, 3]
            + [2, 4, 1, 3, 0, 3, 1, 3, 0, 2, -1, 2, 1, 3, 0, 2, -1, 2],
        )
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            baca.select.mgroups(o.rleaves(), [3, 3, 1]),
            "o< ff>o !",
            right_broken=True,
        )
        baca.spanners.scp(
            baca.select.mgroups(o, [3, 2]),
            "T4 -> P1 -> T4",
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            with baca.scope(o.leaves()[:2]) as u:
                if name in ("va", "vc1", "vc2"):
                    baca.spanners.metric_modulation(
                        u,
                        baca.tweak.staff_padding(8),
                        left_broken=True,
                        rleak=True,
                    )
                    baca.spanners.xfb(
                        u,
                        baca.tweak.staff_padding(5.5),
                        rleak=True,
                    )
                elif name == "cb1":
                    baca.spanners.metric_modulation(
                        u,
                        baca.tweak.staff_padding(10.5),
                        left_broken=True,
                        rleak=True,
                    )
                    baca.spanners.xfb(
                        u,
                        baca.tweak.staff_padding(8),
                        rleak=True,
                    )
            baca.hairpin(
                o[:1],
                "mp>o!",
                rleak=True,
            )
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [1, 1]),
                "o<| mp|>o!",
                rleak=True,
            )
    for name in ["vc1", "vc2", "cb2"]:
        m = cache[name]
        for n in [3, 8]:
            with baca.scope(m[n]) as o:
                for run in abjad.select.runs(o):
                    leaf = baca.select.rleaf(run, -1)
                    baca.stop_on_string(leaf)
                baca.hairpin(
                    o.tleaves(),
                    "o<|ff",
                    rleak=True,
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
            baca.layout.System(10, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        strict_overrides=(
            baca.layout.Override((4, 7), (1, 20)),
            baca.layout.Override([9], (1, 288)),
        ),
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
