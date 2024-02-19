import abjad
import baca
from abjadext import rmakers

from harmony import library

#########################################################################################
########################################### 03 ##########################################
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
        ("[C.1]", 1),
        ("[>D.1]", 2, "#darkgreen"),
        ("[>F.3]", 4, "#darkgreen"),
        ("[C.2-4]", 6),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "57 3/5"),
        (1 - 1, "4:5(2)=4"),
        (2 - 1, "72"),
        (2 - 1, "5:4(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "4.=4"),
        (6 - 1, "57 3/5"),
        (6 - 1, "6:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (3 - 1, "fermata"),
        (5 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-two",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[5 - 1],
        r"\harmony-text-three",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[1:], weight=12),
        time_signatures(1),
    )
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 6),
        gap=True,
    )
    mmrests(voice, time_signatures(3, 5))
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[2:], weight=48),
        time_signatures(6, 8),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    library.make_phjc_rhythm(
        voice,
        time_signatures(1),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=slice(None, -1),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(2),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=~abjad.Pattern([0, 1, 2, -4, -3, -2]),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-19, 1],
        time_signatures(4),
    )
    mmrests(voice, time_signatures(5))
    library.make_phjc_rhythm(
        voice,
        time_signatures(6, 8),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=~abjad.Pattern([0, 1, -2, -1]),
    )


def PERC2(voice, time_signatures):
    library.make_phjc_rhythm(
        voice,
        time_signatures(1),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest=slice(None, -1),
        rest_pleaves=[0, 1, 2, 3],
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(2),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-19, 1],
        time_signatures(4),
    )
    mmrests(voice, time_signatures(5))
    library.make_phjc_rhythm(
        voice,
        time_signatures(6, 8),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest=~abjad.Pattern([0, 1, 4, -2, -1]),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        [10, "-"],
        time_signatures(1),
    )
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 5),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-2, 2, "-", 2],
        time_signatures(4),
    )
    mmrests(voice, time_signatures(5))
    rhythm(
        voice,
        [18, -12, 16, -2],
        time_signatures(6, 8),
    )


def VA(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1),
        library.cerulean_counts()[1:],
        extra_counts=[2],
    )
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 4),
        gap=True,
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(4),
    )
    mmrests(voice, time_signatures(5))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(6, 8),
        library.cerulean_counts()[2:],
        extra_counts=[2],
    )


def VC1(voice, time_signatures):
    voice.extend(r"r4 \times 4/5 { r8 c8. r16 c8. r16 }")
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 3),
        gap=True,
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(4),
    )
    mmrests(voice, time_signatures(5))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(6, 7),
        library.cerulean_counts()[2:],
        extra_counts=[1],
    )
    voice.extend(r"\times 4/5 { c16 r8. c16 } \times 4/5 { r8 c8. r16 c8. r16 }")
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [8, AG([2], 2), -2],
        time_signatures(1),
    )
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 2),
        gap=True,
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        [-1, 2, "-"],
        time_signatures(4),
    )
    mmrests(voice, time_signatures(5))
    components = rhythm(
        voice,
        [18, -12, 16, -2],
        time_signatures(6, 8),
    )
    rmakers.untie(components)
    library.after_grace_each_run(components)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[1:], weight=12),
        time_signatures(1),
    )
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 1),
    )
    mmrests(voice, time_signatures(3), head=True)
    music = baca.make_repeated_duration_notes(
        time_signatures(4),
        [(1, 4)],
    )
    voice.extend(music)
    mmrests(voice, time_signatures(5))
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[2:], weight=48),
        time_signatures(6, 8),
    )


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [8, AG([2], 2), -2],
        time_signatures(1),
    )
    library.make_tessera(
        voice,
        time_signatures(2),
        *(1, 0),
    )
    mmrests(voice, time_signatures(3), head=True)
    music = baca.make_repeated_duration_notes(
        time_signatures(4),
        [(1, 4)],
    )
    voice.extend(music)
    mmrests(voice, time_signatures(5))
    components = rhythm(
        voice,
        [18, -12, 16, -2],
        time_signatures(6, 8),
    )
    rmakers.untie(components)
    library.after_grace_each_run(components)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F3"),
        baca.dynamic(o.phead(0), "mf")
        baca.rspanners.covered(
            baca.select.ltleaves(o),
            descriptor=r"\baca-cov-markup =|",
            staff_padding=3,
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "F#3"),
    with baca.scope(m.get(6, 8)) as o:
        baca.pitch(o, "F3")
        baca.dynamic(
            o.phead(0),
            "mf-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.rspanners.covered(
            baca.select.ltleaves(o),
            staff_padding=3,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m[2]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 6),
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 8)) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.override.dls_staff_padding(o, 5.5)
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m[8]) as o:
        baca.hairpin(
            o.tleaves(),
            "p<f",
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[2]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 5.5),
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.damp(o.ptail(-1))
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 5),
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 8)) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.override.dls_staff_padding(o, 5.5),
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
    with baca.scope(m[8]) as o:
        baca.hairpin(
            o.tleaves(),
            "p<f",
        )


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "C#4")
        baca.override.dls_staff_padding(o, 5)
    with baca.scope(m[4]) as o:
        baca.pitches(o, "F#4 G#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 4),
        baca.markup(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G1"),
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.pheads(), "f")


def va(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[2]) as o:
        library.bridge_staff_position(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 6),
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb3"),
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 4),
        for run in baca.select.runs(o):
            baca.mspanners.bow_speed(
                run,
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.plts(o),
            '"ff" "f" mf mp p pp ppp ppp',
        )
        baca.override.dls_staff_padding(o, 6),


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.override.tuplet_number_text(o.leaf(1), r"\markup 5:4")
        baca.override.tuplet_bracket_up(o)
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m[2]) as o:
        baca.hairpin(
            baca.select.plts(o)[1:],
            "p mp",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "F#3")
        baca.rspanners.damp(
            baca.select.tleaves(o),
            staff_padding=5.5,
        )
        baca.rspanners.metric_modulation(
            o.leaves()[2:8],
            staff_padding=8,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "E4"),
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.mspanners.bow_speed(
                run,
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m.get(1, 4)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(6, 7)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        with baca.scope(o.rleaves(count=3)) as u:
            library.bridge_staff_position(u)
            baca.override.dls_staff_padding(u, 6),
        with baca.scope(baca.select.pheads(o.rleaves(count=3))) as u:
            baca.accent(u)
            baca.stem_tremolo(u)
        baca.dynamic(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        leaves = o.rleaves(count=3)[1:]
        baca.hairpin(
            baca.select.plts(leaves),
            '"f" mf mp p pp ppp ppp',
        )
    with baca.scope(m[8]) as o:
        baca.override.tuplet_number_text(o.leaves(), r"\markup 5:4")
        with baca.scope(o.leaf(3)) as u:
            baca.clef(u, "bass")
            baca.override.clef_extra_offset(u, (-2, 0)),
            baca.override.clef_x_extent_false(u)
        baca.staff_lines(o.leaf(3), 5)
        with baca.scope(o.leaf(2)) as u:
            baca.override.flag_extra_offset(u, (-2, 0))
            baca.override.note_head_extra_offset(u, (-2, 0))
            baca.override.script_extra_offset(u, (-2, 0))
            baca.override.stem_extra_offset(u, (-2, 0))
            baca.override.stem_tremolo_extra_offset(u, (-2, 0))
        with baca.scope(o.leaves()[-5:]) as u:
            baca.override.tuplet_bracket_up(u)
            baca.override.dls_staff_padding(u, 4.5)
        baca.pitch(o.leaves()[4:], "F#3")
        baca.accent(baca.select.pheads(o.leaves()[4:]))
        baca.dynamic(o.phead(-2), "mf")
        with baca.scope(o.leaves()[4:]) as u:
            baca.rspanners.damp(
                u,
                right_broken=True,
                staff_padding=5.5,
            )
            baca.rspanners.metric_modulation(
                u,
                staff_padding=8,
                right_broken=True,
            )


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.interpolate_pitches(o, "G2", "F2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(o.tleaves()) as u:
            baca.hairpin(
                u,
                "mf>o!",
                rleak=True,
            )
            baca.mspanners.scp(
                u,
                "P1 =|",
                staff_padding=3,
            )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "F3"),
        baca.rspanners.damp(
            baca.select.tleaves(o),
            staff_padding=5.5,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eqf4")
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.mspanners.bow_speed(
                run,
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F2"),
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
            baca.hairpin(
                run,
                "mf>o!",
                rleak=True,
            )
            baca.mspanners.scp(
                run,
                "P1 =|",
                staff_padding=3,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.override.dls_staff_padding(o, 6),
        baca.override.rest_extra_offset(o.rest(-1), (-0.75, 0))
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Aqs4", do_not_transpose=True)
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.rspanners.pizzicato(
            baca.select.ltleaves(o),
            staff_padding=5.5,
        )
        baca.markup(o.pleaf(0), r"\baca-eleven-e")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1"),
        baca.flat_glissando(o)
        baca.hairpin(
            o,
            "mf>p",
        )
        baca.mspanners.scp(
            [o],
            "P1 -> T1",
            do_not_rleak=True,
            staff_padding=3,
        )
    with baca.scope(m.get(2, 4)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.plts(o),
            '"ff" "f" mf mp p pp ppp',
        )
        baca.override.dls_staff_padding(o, 6)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.interpolate_pitches(o, "G2", "F#2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(o.tleaves()) as u:
            baca.hairpin(
                u,
                "mf>o!",
                rleak=True,
            )
            baca.mspanners.scp(
                u,
                "P1 =|",
                staff_padding=3,
            )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4", do_not_transpose=True)
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.rspanners.pizzicato(
            baca.select.ltleaves(o),
            staff_padding=5.5,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.flat_glissando(o)
        baca.hairpin(
            o,
            "p<f",
        )
        baca.mspanners.scp(
            baca.select.lparts(o, [2, 2]),
            "T1 -> P2 -> O",
            staff_padding=3,
        )
    with baca.scope(m.get(6, 8)) as o:
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F#2"),
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
            baca.hairpin(
                run,
                "mf>o!",
                rleak=True,
            )
            baca.mspanners.scp(
                run,
                "P1 =|",
                staff_padding=3,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def composites(cache):
    for name in ["bfl", "hp", "va", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.accent(o.pheads())
            baca.hairpin(
                baca.select.plts(o),
                "pp p mp mf f",
                extra_specifiers=True,
            )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(3, 4), (3, 4), (1, 4), (5, 4), (1, 4), (5, 4), (4, 4), (3, 4)]
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
    hp(cache["hp"])
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
            baca.system(measure=6, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([3, 5], (1, 288)),),
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
