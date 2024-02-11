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
        baca.rspanners.covered(
            baca.select.ltleaves(o),
            staff_padding=3,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#3"),
        baca.piecewise.hairpin(
            baca.select.plts(o),
            "pp p",
            bookend=False,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F3")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.dynamic(o.phead(0), "ff")
        baca.markup(
            o.pleaf(0),
            r"\baca-jet-whistle-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E3"),
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "ff-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-jet-whistle-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
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
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, -2, 0, 0])
        baca.spanners.hairpin(
            o.tleaves(),
            "p < f",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.spanners.hairpin(
            o.tleaves(),
            "f > p",
        )
    with baca.scope(m.get(2, 3)) as o:
        baca.override.dls_staff_padding(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[5]) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(
            baca.select.rleak(o.pleaves()[1:]),
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-small-beater-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
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
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 7"),
            )
        baca.rspanners.metric_modulation(
            baca.select.runs(o)[:1],
            staff_padding=5.5,
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, 0, -2, 0])
        baca.spanners.hairpin(
            o.tleaves(),
            "p < f",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.spanners.hairpin(
            o.tleaves(),
            "f > p",
        )
    with baca.scope(m.get(2, 3)) as o:
        baca.override.dls_staff_padding(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(
            baca.select.rleak(o.pleaves()[1:]),
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
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
            abjad.Tweak(r"- \tweak staff-padding 4"),
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
        baca.piecewise.hairpin(
            baca.select.plts(o),
            "pp p",
            bookend=False,
        )
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[4]) as o:
        baca.pitches(o, "F4 D4 A4 G3 B3 E3")
        baca.glissando(o.tleaves())
        baca.spanners.hairpin(
            o.rleaves(),
            '"f" >o !',
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-tuning-key-glissando-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
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
            baca.mspanners.bow_speed(
                baca.select.rleak(run),
                "scr. =|",
                staff_padding=3,
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
            baca.rspanners.metric_modulation(
                u,
                staff_padding=8,
            )
            baca.rspanners.xfb(
                u,
                staff_padding=5.5,
            )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.mspanners.bow_speed(
                baca.select.rleak(run),
                "scr. =|",
                staff_padding=3,
            )
        baca.rspanners.metric_modulation(
            o,
            staff_padding=5.5,
            right_broken=True,
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
            baca.mspanners.bow_speed(
                baca.select.rleak(run),
                "scr. =|",
                staff_padding=3,
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
        baca.piecewise.hairpin(
            baca.select.plts(o)[1:],
            "p mp",
            bookend=False,
        )
    with baca.scope(m.get(2, 3)) as o:
        with baca.scope(o.pheads()[2:]) as u:
            baca.pitch(u, "F#3")
            baca.accent(u)
        baca.dynamic(o.pleaf(2), "mf")
        baca.override.tuplet_bracket_up(o.leaves()[3:])
        baca.rspanners.metric_modulation(
            o.leaves()[4:10],
            staff_padding=5.5,
        )
        baca.rspanners.damp(
            abjad.select.leaves(o)[4:],
            staff_padding=8,
        )
        baca.override.dls_staff_padding(o.leaves()[4:-1], 4)
    with baca.scope(m.get(4, 5)) as o:
        # TODO: promote into rhythm
        baca.untie(o.pleaves())
        baca.staff_positions(
            o,
            [2, 3, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 8],
        )
        baca.glissando(o.tleaves(), allow_repeats=True)
        baca.override.dls_staff_padding(baca.select.lleak(o.leaves()), 5.5)


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eqf4"),
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.mspanners.bow_speed(
                baca.select.rleak(run),
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F2"),
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.spanners.hairpin(
                u,
                "mf >o !",
            )
            baca.mspanners.scp(
                (),
                "P1 =|",
                pieces=[u],
                staff_padding=3,
            )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F3"),
        baca.accent(o.phead(0))
        baca.dynamic(o.phead(0), "pp")
        baca.rspanners.damp(
            baca.select.tleaves(o),
            staff_padding=3,
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(4, 5)) as o:
        # TODO: promote into rhythm
        baca.untie(o.pleaves())
        baca.staff_positions(
            o,
            [2, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 3, 8],
        )
        baca.glissando(o.tleaves(), allow_repeats=True)
        baca.override.dls_staff_padding(o, 5.5)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1"),
        baca.flat_glissando(o)
        baca.spanners.hairpin(
            o,
            "mf > p",
        )
        baca.mspanners.scp(
            (),
            "P1 -> T1",
            bookend=True,
            pieces=[o.tleaves()],
            staff_padding=3,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.piecewise.hairpin(
            baca.select.plts(o),
            "pp ppp",
            bookend=False,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Aqs4", do_not_transpose=True)
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.accent(o.pheads())
        baca.piecewise.hairpin(
            baca.select.plts(o),
            "pp p mp",
            bookend=False,
        )
        baca.override.dls_staff_padding(o.plts()[:-1], 4)
        baca.rspanners.pizzicato(
            baca.select.ltleaves(o),
            staff_padding=5.5,
        )
        baca.markup(o.pleaf(0), r"\baca-eleven-e")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak X-offset 2.5"),
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        # TODO: promote into rhythm
        baca.untie(o.pleaves())
        baca.staff_positions(
            o,
            [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
        )
        baca.glissando(o.tleaves(), allow_repeats=True)
        baca.override.dls_staff_padding(baca.select.lleak(o.leaves()), 5.5)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.flat_glissando(o, "E1", left_broken=True)
        baca.piecewise.hairpin(
            [o],
            "o< f",
            left_broken=True,
        )
        baca.mspanners.scp(
            (),
            "(T1) -> P2 -> O",
            bookend=True,
            pieces=baca.select.lparts(o.leaves(), [2, 3]),
            staff_padding=5.5,
        )
    with baca.scope(m[2]) as o:
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F#2"),
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.spanners.hairpin(
                u,
                "mf >o !",
            )
            baca.mspanners.scp(
                (),
                "P1 =|",
                pieces=[u],
                staff_padding=5.5,
            )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4", do_not_transpose=True)
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.accent(o.pheads())
        baca.piecewise.hairpin(
            baca.select.plts(o),
            "pp p",
            bookend=False,
        )
        baca.rspanners.pizzicato(
            baca.select.ltleaves(o),
            staff_padding=5.5,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        # TODO: promote into rhythm
        baca.untie(o.pleaves())
        baca.staff_positions(
            o,
            [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
        )
        baca.glissando(o.tleaves(), allow_repeats=True)
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def strings(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.spanners.hairpin(
                o,
                'o< "f"',
            )
        with baca.scope(m[5]) as o:
            baca.spanners.hairpin(
                o.rleaves(),
                '"f" >o !',
            )
        with baca.scope(m.get(4, 5)) as o:
            pheads = baca.select.pheads(o)
            pheads = [
                _ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ]
            baca.alternate_bow_strokes(
                pheads,
                abjad.Tweak(r"- \tweak staff-padding 4"),
                full=True,
            )
            baca.rspanners.half_clt(
                baca.select.ltleaves(o),
                staff_padding=8,
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
        spacing=(1, 40),
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
