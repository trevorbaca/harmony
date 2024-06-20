import abjad
import baca

from harmony import library

#########################################################################################
########################################### 05 ##########################################
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


def GLOBALS(skips):
    stage_markup = (
        ("[>F.3]", 1, "#darkgreen"),
        ("[<C.4]", 2, "#darkgreen"),
        ("[<D.1]", 3, "#darkgreen"),
        ("[E.1-2]", 4),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "4.=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "6:5(4)=4"),
        (3 - 1, "72"),
        (3 - 1, "5:4(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "4:3(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1), head=True)
    rhythm(
        voice,
        [-4, 1, -4, 1, "-"],
        time_signatures(2),
    )
    library.make_tessera(
        voice,
        time_signatures(3),
        *(1, 6),
        gap=True,
    )
    rhythm(
        voice,
        [1, 1, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-3, 1, 1, "-"],
        time_signatures(5),
    )


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [-19, 1],
        time_signatures(1),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(2),
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(3),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=~abjad.Pattern([0, 1, 2, -4, -3, -2]),
    )
    mmrests(voice, time_signatures(4), head=True)
    rhythm(
        voice,
        [-3, "+"],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, 4, "-", 1],
        time_signatures(1),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(2),
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(3),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    )
    mmrests(voice, time_signatures(4), head=True)
    rhythm(
        voice,
        [-3, "+"],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    rhythm(
        voice,
        [-2, 2, "-", 2],
        time_signatures(1),
    )
    rhythm(
        voice,
        [10, -2],
        time_signatures(2),
    )
    library.make_tessera(
        voice,
        time_signatures(3),
        *(1, 5),
    )
    rhythm(
        voice,
        [4, 4, 8, 4, AG([2], 4)],
        time_signatures(4),
    )
    rhythm(
        voice,
        ["-", 12, -8],
        time_signatures(5),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2), head=True)
    rhythm(
        voice,
        T([-4, 3, -1, 3, -1, 3, -1], -4),
        time_signatures(3),
    )
    rhythm(
        voice,
        [3, -1, 3, -1, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [6, -2, -8, 6, -2],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [T([1, -3, 1], -1), T([-2, 3, -1, 3, -1], -2)],
        time_signatures(2),
    )
    library.make_tessera(
        voice,
        time_signatures(3),
        *(1, 3),
        gap=True,
    )
    rhythm(
        voice,
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
        time_signatures(4, 5),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [8, AG([2], 2), -2],
        time_signatures(2),
    )
    library.make_tessera(
        voice,
        time_signatures(3),
        *(1, 2),
        gap=True,
    )
    rhythm(
        voice,
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
        time_signatures(4, 5),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    music = baca.make_repeated_duration_notes(
        time_signatures(1),
        [(1, 4)],
    )
    voice.extend(music)
    rhythm(
        voice,
        [-4, 1, -4, 1, "-"],
        time_signatures(2),
    )
    library.make_tessera(
        voice,
        time_signatures(3),
        *(1, 1),
    )
    rhythm(
        voice,
        [15, 1, 1, 1, 6, 1, 1, 1, 12, 1, 1, 1, "+"],
        time_signatures(4, 5),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    music = baca.make_repeated_duration_notes(
        time_signatures(1),
        [(1, 4)],
    )
    voice.extend(music)
    rhythm(
        voice,
        [8, AG([2], 2), -2],
        time_signatures(2),
    )
    library.make_tessera(
        voice,
        time_signatures(3),
        *(1, 0),
    )
    rhythm(
        voice,
        [11, 1, 1, 1, 11, 1, 1, 1, 7, 1, 1, 1, "+"],
        time_signatures(4, 5),
    )
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[2]) as o:
        baca.pitch(o, "F3"),
        baca.dynamic(o.phead(0), "mf")
        baca.spanners.covered(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#3"),
        baca.hairpin(
            baca.select.plts(o),
            "pp p",
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F3")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.dynamic(o.phead(0), "ff")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-jet-whistle-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E3"),
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "ff-ancora",
            baca.tweak.self_alignment_x(-0.75),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-jet-whistle-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m.get(2, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 6 + 1)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-superball-markup",
            baca.tweak.self_alignment_x(1),
            baca.tweak.staff_padding(7),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, -2, 0, 0])
        baca.hairpin(
            o.tleaves(),
            "p<f",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[3]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m.get(2, 3)) as o:
        baca.override.dls_staff_padding(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[5]) as o:
        library.triangle_staff_position(o)
        baca.glissando(
            baca.select.rleak(o.pleaves()[1:]),
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-triangle-small-beater-markup",
            baca.tweak.staff_padding(8),
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(2), 1)
        library.purpleheart_staff_positions(o.leaves()[:2], [0])
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position(u)
            baca.accent(u)
            baca.damp(u)
            baca.dynamic(u, "mf")
            baca.override.dls_staff_padding(u, 6 + 1),
            baca.markup(
                u,
                r"\baca-boxed-brake-drum-markup",
                baca.tweak.self_alignment_x(1),
                baca.tweak.staff_padding(7),
            )
        baca.spanners.metric_modulation(
            baca.select.runs(o)[:1],
            baca.tweak.staff_padding(5.5),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, 0, -2, 0])
        baca.hairpin(
            o.tleaves(),
            "p<f",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[3]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m.get(2, 3)) as o:
        baca.override.dls_staff_padding(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position(o)
        baca.glissando(
            baca.select.rleak(o.pleaves()[1:]),
            "C4",
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitches(o, "F#4 G#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.override.clef_whiteout(o.leaf(0), 2)
        baca.pitch(o, "G1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "C#4")
        baca.accent(o.pheads())
        baca.hairpin(
            baca.select.plts(o),
            "pp p",
        )
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[4]) as o:
        baca.glissando(
            o.tleaves(),
            "F4 D4 A4 G3 B3 E3",
        )
        baca.hairpin(
            o,
            '"f">o!',
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-tuning-key-glissando-markup",
            baca.tweak.staff_padding(4),
        )
        baca.override.dls_staff_padding(o, 6.5)
    with baca.scope(m[5]) as o:
        baca.pitch(o, "Eb4")
        baca.damp(o.rest(-1))
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4)


def va(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb3"),
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.spanners.bow_speed(
                run,
                "scr. =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[2]) as o:
        baca.clef(abjad.select.leaf(o, 0), "percussion")
        baca.staff_lines(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m.get(3, 4)) as o:
        baca.pitch(o, "F3")
        with baca.scope(o.leaves()[1:10]) as u:
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                rleak=True,
            )
            baca.spanners.xfb(
                u,
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.spanners.bow_speed(
                run,
                "scr. =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
        baca.spanners.metric_modulation(
            o,
            baca.tweak.staff_padding(5.5),
            right_broken=True,
            rleak=True,
        )
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "E4"),
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4)
        for run in baca.select.runs(o):
            baca.spanners.bow_speed(
                run,
                "scr. =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        with baca.scope(o.pleaves()[:2]) as u:
            library.bridge_staff_position(u)
            baca.accent(u)
            baca.stem_tremolo(u)
        baca.dynamic(o.phead(0), "ppp")
        baca.override.dls_staff_padding(o.leaves()[:3], 6)
        with baca.scope(o.leaf(2)) as u:
            baca.override.flag_extra_offset(u, (-2, 0))
            baca.override.note_head_extra_offset(u, (-2, 0))
            baca.override.script_extra_offset(u, (-2, 0))
            baca.override.stem_extra_offset(u, (-2, 0))
            baca.override.stem_tremolo_extra_offset(u, (-2, 0))
        with baca.scope(o.leaf(3)) as u:
            baca.clef(u, "bass")
            baca.override.clef_extra_offset(u, (-2, 0))
            baca.override.clef_x_extent_false(u)
            baca.staff_lines(u, 5)
    with baca.scope(m[3]) as o:
        baca.hairpin(
            baca.select.plts(o)[1:],
            "p mp",
        )
    with baca.scope(m.get(2, 3)) as o:
        with baca.scope(o.pheads()[2:]) as u:
            baca.pitch(u, "F#3")
            baca.accent(u)
        baca.dynamic(o.pleaf(2), "mf")
        baca.override.tuplet_bracket_direction_up(o.leaves()[3:])
        baca.spanners.metric_modulation(
            o.leaves()[4:10],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
        baca.spanners.damp(
            abjad.select.leaves(o)[4:],
            baca.tweak.staff_padding(8),
            rleak=True,
        )
        baca.override.dls_staff_padding(o.leaves()[4:-1], 4)
    with baca.scope(m.get(4, 5)) as o:
        baca.glissando(
            o,
            "2 3 -3 0 -2 4 -2 1 -1 5 -1 2 0 6 0 4 2 8",
            staff_position=True,
        )
        baca.override.dls_staff_padding(baca.select.lleak(o.leaves()), 5.5)


def vc2(m):
    with baca.scope(m[1]) as o:
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
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                "G2 F2",
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(o.tleaves()) as u:
            baca.hairpin(
                u,
                "mf>o!",
                rleak=True,
            )
            baca.spanners.scp(
                u,
                "P1 =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F3"),
        baca.accent(o.phead(0))
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(4, 5)) as o:
        baca.glissando(
            o,
            "2 -3 0 -2 4 -2 1 -1 5 -1 2 0 6 0 4 2 3 8",
            staff_position=True,
        )
        baca.override.dls_staff_padding(o, 5.5)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.glissando(o, "E1")
        baca.hairpin(
            o,
            "mf>p",
        )
        baca.spanners.scp(
            [o.tleaves()],
            "P1 -> T1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.plts(o),
            "pp ppp",
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Aqs4", do_not_transpose=True)
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            baca.select.plts(o),
            "pp p mp",
        )
        baca.override.dls_staff_padding(o.plts()[:-1], 4)
        baca.spanners.pizzicato(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
        baca.markup(o.pleaf(0), r"\baca-eleven-e")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.x_offset(2.5),
            baca.tweak.padding(1),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.glissando(
            o.tleaves(),
            "9 3 6 0 2 1 4 -2 0 -1 2 -4 -2 -3 0 -5 -4 -6",
            staff_position=True,
        )
        baca.override.dls_staff_padding(baca.select.lleak(o.leaves()), 5.5)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.glissando(o, "E1", left_broken=True)
        baca.hairpin(
            [o],
            "o<f",
            left_broken=True,
        )
        baca.spanners.scp(
            baca.select.lparts(o, [2, 2]),
            "(T1) -> P2 -> O",
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                "G2 F#2",
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(o.tleaves()) as u:
            baca.hairpin(
                u,
                "mf>o!",
                rleak=True,
            )
            baca.spanners.scp(
                u,
                "P1 =|",
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4", do_not_transpose=True)
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            baca.select.plts(o),
            "pp p",
        )
        baca.spanners.pizzicato(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.padding(1),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.glissando(
            o,
            "9 3 6 0 2 1 4 -2 0 -1 2 -4 -2 -3 0 -5 -4 -6",
            staff_position=True,
        )
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def strings(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.hairpin(
                o,
                'o<"f"',
            )
        with baca.scope(m[5]) as o:
            baca.hairpin(
                o,
                '"f">o!',
                rleak=True,
            )
        with baca.scope(m.get(4, 5)) as o:
            pheads = baca.select.pheads(o)
            pheads = [
                _ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ]
            baca.alternate_bow_strokes(
                pheads,
                baca.tweak.staff_padding(4),
                full=True,
            )
            baca.spanners.half_clt(
                baca.select.ltleaves(o),
                baca.tweak.staff_padding(8),
                rleak=True,
            )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(5, 4), (3, 4), (3, 4), (6, 4), (6, 4)]
    time_signatures = baca.section.wrap(time_signatures)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        score_persistent_indicators=previous_persistent_indicators["Score"],
    )
    GLOBALS(score["Skips"])
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
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
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
        default=(1, 40),
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
