import abjad
import baca

from harmony import library

#########################################################################################
########################################### 06 ##########################################
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
        ("[F.1]", 1),
        ("[>G.1]", 3, "#darkgreen"),
        ("[F.2]", 4),
        ("[>G.1]", 5, "#darkgreen"),
        ("[F.3-4]", 6),
        ("[<C.4]", 8, "#darkgreen"),
        ("[F.5-6]", 10),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2=4"),
        (3 - 1, "57 3/5"),
        (3 - 1, "6:5(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "5:6(4)=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "6:5(4)=4"),
        (6 - 1, "48"),
        (6 - 1, "5:6(4)=4"),
        (8 - 1, "57 3/5"),
        (8 - 1, "6:5(4)=4"),
        (10 - 1, "48"),
        (10 - 1, "5:6(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (2 - 1, "fermata"),
        (9 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[2 - 1],
        r"\harmony-text-four",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[9 - 1],
        r"\harmony-text-five",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), T([-6, w(2, 4), h(w(2, 4))], 2)],
        time_signatures(3),
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), T([-6, w(2, 4), h(w(2, 4))], 2)],
        time_signatures(3),
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), "-"],
        time_signatures(6),
    )
    rhythm(
        voice,
        [-4, -2, T([-4, 1, -4, -1, 1, -1], -2)],
        time_signatures(7),
    )
    rhythm(
        voice,
        [-4, 1, -4, 1, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9, 15), head=True)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [16, "-", 1],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-15, 1],
        time_signatures(3),
    )
    rhythm(
        voice,
        [-3, 6, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-15, 1],
        time_signatures(5),
    )
    rhythm(
        voice,
        ["-", 1],
        time_signatures(6),
    )
    mmrests(voice, time_signatures(7))
    library.make_phjc_rhythm(
        voice,
        time_signatures(8),
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [2, "-"],
        time_signatures(10),
    )
    rhythm(
        voice,
        ["-", 3, -4],
        time_signatures(11),
    )
    mmrests(voice, time_signatures(12, 14))
    rhythm(
        voice,
        ["-", 5, -1],
        time_signatures(15),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [16, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(3),
    )
    rhythm(
        voice,
        [9, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(5),
    )
    rhythm(
        voice,
        [-19, 1, "-"],
        time_signatures(6, 7),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(8),
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [1, "-"],
        time_signatures(10),
    )
    rhythm(
        voice,
        ["-", 1, -1],
        time_signatures(11),
    )
    mmrests(voice, time_signatures(12, 13))
    rhythm(
        voice,
        ["-", 1, -2],
        time_signatures(14),
    )
    rhythm(
        voice,
        ["-", 1, -5],
        time_signatures(15),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        [-10, 6, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), "-"],
        time_signatures(3),
    )
    rhythm(
        voice,
        [8, rt(1), -2, T([-2, w(2, 4), h(w(2, 4))], -1)],
        time_signatures(4),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), "-"],
        time_signatures(5),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(6),
        [-2, 4, "-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [-6, T([-1, 9, -2], -2)],
        time_signatures(7),
    )
    rhythm(
        voice,
        [10, -2],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9), head=True)
    library.make_one_beat_tuplets(
        voice,
        time_signatures(10),
        [4, "-"],
        extra_counts=[2],
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        ["-", 4],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(12))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13),
        [4, "-"],
        extra_counts=[2],
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(14),
        ["-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        ["-", T([-2, w(2, 4), h(w(2, 4))], -1)],
        time_signatures(15),
    )
    baca.section.append_anchor_note(voice)


def VA(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        OBGC(9 * [2], [16]),
        time_signatures(3),
    )
    rhythm(
        voice,
        [rt(8), "-", 2, -3],
        time_signatures(4),
    )
    rhythm(
        voice,
        OBGC(9 * [2], [16]),
        time_signatures(5),
    )
    rhythm(
        voice,
        [-1, 2, "-", 3, -2],
        time_signatures(6, 7),
    )
    mmrests(voice, time_signatures(8, 9))
    rhythm(
        voice,
        [-5, 2, -5, 3, -10, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
        time_signatures(10, 15),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        OBGC(7 * [2], [16]),
        time_signatures(3),
    )
    rhythm(
        voice,
        [rt(8), "-", 2, -3],
        time_signatures(4),
    )
    rhythm(
        voice,
        OBGC(7 * [2], [16]),
        time_signatures(5),
    )
    rhythm(
        voice,
        [-1, 2, "-", 3, -2],
        time_signatures(6, 7),
    )
    rhythm(
        voice,
        [T([1, -3, 1], -1), "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
        time_signatures(10, 15),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [3, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(3),
    )
    rhythm(
        voice,
        [rt(8), "-", 2, -3],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(5),
    )
    rhythm(
        voice,
        [-1, 2, "-", 3, -2],
        time_signatures(6, 7),
    )
    rhythm(
        voice,
        [8, AG([2], 2), -2],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    rhythm(
        voice,
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
        time_signatures(10, 15),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    music = baca.make_repeated_duration_notes(
        time_signatures(1),
        [(1, 4)],
    )
    voice.extend(music)
    mmrests(voice, time_signatures(2), head=True)
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(3),
    )
    rhythm(
        voice,
        [rt(8), "-", 5],
        time_signatures(4),
    )
    music = baca.make_repeated_duration_notes(
        time_signatures(5, 7),
        [(1, 4)],
    )
    voice.extend(music)
    rhythm(
        voice,
        [-4, 1, -4, 1, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    music = baca.make_repeated_duration_notes(
        time_signatures(10, 15),
        [(1, 4)],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    music = baca.make_repeated_duration_notes(
        time_signatures(1),
        [(1, 4)],
    )
    voice.extend(music)
    mmrests(voice, time_signatures(2), head=True)
    rhythm(
        voice,
        ["-", 4, 4, 4],
        time_signatures(3),
    )
    music = baca.make_repeated_duration_notes(
        time_signatures(4, 7),
        [(1, 4)],
    )
    voice.extend(music)
    rhythm(
        voice,
        [8, AG([2], 2), -2],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    music = baca.make_repeated_duration_notes(
        time_signatures(10, 15),
        [(1, 4)],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[3]) as o:
        baca.pitch(o.runs()[:1], "Bb5")
        baca.pitch(o.runs()[1:], "E5")
        baca.stem_tremolo(o.pleaves())
        leaves = o.leaves()[:3]
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            "o<| f |>o !",
        )
        leaves = baca.select.rleak(o.leaves()[-2:])
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            "o<| f |>o !",
            forbid_al_niente_to_bar_line=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "E5"),
        baca.stem_tremolo(o.pleaves())
        leaves = o.leaves()[:3]
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            "o<| f |>o !",
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.rspanners.metric_modulation(
            abjad.select.leaves(o)[3:7],
            staff_padding=8,
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o.runs()[:1], "Bb5")
        baca.pitch(o.runs()[1:], "E5")
        baca.stem_tremolo(o.pleaves())
        leaves = o.leaves()[:3]
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            "o<| f |>o !",
        )
        leaves = baca.select.rleak(abjad.select.leaves(o)[-2:])
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            "o<| f |>o !",
            forbid_al_niente_to_bar_line=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E5"),
        baca.stem_tremolo(o.pleaves())
        leaves = o.leaves()[:3]
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            "o<| f |>o !",
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.rspanners.metric_modulation(
            o.leaves()[3:7],
            staff_padding=8,
        )
    with baca.scope(m.get(3, 6)) as o:
        baca.override.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch(o, "F3"),
        baca.dynamic(o.phead(0), "mf")
        baca.rspanners.covered(
            baca.select.ltleaves(o),
            staff_padding=5.5,
        )


def perc1(m):
    with baca.scope(m[1]) as o:
        with baca.scope(o.pleaves()[:1]) as u:
            library.triangle_staff_position(u)
            baca.flat_glissando(u, left_broken=True)
            baca.stem_tremolo(u)
        baca.damp(o.rest(0))
        with baca.scope(o.pleaf(-1)) as u:
            library.bass_drum_staff_position(u)
            baca.damp(u)
            baca.dynamic(u, "mp")
            baca.override.dls_staff_padding(u, 6)
            baca.markup(
                u,
                r"\baca-bd-struck-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2),
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5),
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[8]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, -2, 0, 0])
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[10]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.spanners.hairpin(
            baca.select.rleak(o.tleaves()),
            "o< mf",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[11]) as o:
        library.bass_drum_staff_position(o)
        baca.spanners.hairpin(
            baca.select.rleak(o.tleaves()),
            "o< f",
        )
    with baca.scope(m[15]) as o:
        library.bass_drum_staff_position(o)
        baca.spanners.hairpin(
            baca.select.rleak(o.tleaves()),
            "o< ff",
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        with baca.scope(o.pleaves()) as u:
            library.tam_tam_staff_position(u)
            baca.flat_glissando(u, left_broken=True)
            baca.stem_tremolo(u)
        baca.damp(o.rest(0))
    with baca.scope(m[3]) as o:
        library.tam_tam_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[4]) as o:
        library.damp_rest_after_each_ptail(o)
        library.tam_tam_staff_position(o)
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(6, 7)) as o:
        library.brake_drum_staff_position(o)
        baca.damp(o.ptail(-1))
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 7)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[8]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, 0, -2, 0])
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[10]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[11]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m[14]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m[15]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        library.damp_rest_after_each_ptail(o)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        for clpart in baca.select.clparts(o, [3]):
            baca.piecewise.hairpin(
                baca.select.clparts(clpart, [1]),
                'o< "f" >o !',
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plt(0), "E1")
        baca.damp(o.rest(0))
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o.plt(0), 7)
        with baca.scope(o.rest(-1)) as u:
            baca.clef(u, "percussion"),
            baca.staff_lines(u, 1),
        library.whisk_staff_position(o.pleaves()[-2:])
        leaves = o.pleaves()[-2:]
        baca.piecewise.hairpin(
            baca.select.clparts(leaves, [1]),
            'o< "f" >o',
            forbid_al_niente_to_bar_line=True,
        )
        baca.markup(
            o.pleaf(-2),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[5]) as o:
        library.whisk_staff_position(o)
        for clpart in baca.select.clparts(o, [3]):
            baca.piecewise.hairpin(
                baca.select.clparts(clpart, [1]),
                'o< "f" >o !',
            )
        baca.override.dls_staff_padding(o.lleaves(count=2), 6)
    with baca.scope(m.get(4, 5)) as o:
        baca.override.tuplet_bracket_up(o)
        baca.rspanners.metric_modulation(
            o.leaves()[4:8],
            staff_padding=5.5,
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitches(o, "F#4 G#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.piecewise.text(
            (),
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=False,
            pieces=[o.rleaves()],
        )
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch(o, "G1")
    with baca.scope(m[7]) as o:
        baca.damp(
            o.rest(-1),
            abjad.Tweak(r"- \tweak direction #down"),
        )
    with baca.scope(m[8]) as o:
        baca.damp(o.rest(-1))
    with baca.scope(m.get(7, 8)) as o:
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 6),
        baca.rspanners.metric_modulation(
            baca.select.rleak(baca.select.tleaves(o), count=1),
            staff_padding=5.5,
        )
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m.get(10, 11)) as o:
        baca.pitches(o, "F#4 G#4")
    with baca.scope(m.get(10, 14)) as o:
        baca.laissez_vibrer(o.ptails())
        baca.piecewise.text(
            (),
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=False,
            pieces=[o.rleaves()],
        )
    with baca.scope(m.get(13, 14)) as o:
        baca.pitches(o, "F#4 G#4")
    with baca.scope(m.get(10, 14)) as o:
        baca.piecewise.hairpin(
            baca.select.plts(o, exclude=baca.enums.HIDDEN),
            "mf f ff fff",
            bookend=False,
        )
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[15]) as o:
        baca.override.tuplet_bracket_up(o)
        with baca.scope(o.rest(-1)) as u:
            baca.clef(u, "percussion"),
            baca.staff_lines(u, 1),
        library.whisk_staff_position(o.pleaves()[-2:])
        baca.dynamic(o.phead(0), '"f"')
        baca.override.dls_staff_padding(o.leaves()[-3:], 6)
        baca.markup(
            o.pleaf(-2),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.rspanners.metric_modulation(
            baca.select.pleaves(o),
            right_broken=True,
            staff_padding=5.5,
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.tleaves())],
            "scr. =|",
            staff_padding=3,
        )
        baca.rspanners.metric_modulation(
            o.leaves()[:2],
            left_broken=True,
            staff_padding=5.5,
        )
    with baca.scope(m[3]) as o:
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_b_flat(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.piecewise.text(
            (),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            pieces=[baca.select.rleak(o.tleaves(grace=False), count=2)],
        )
    with baca.scope(m[4]) as o:
        with baca.scope(baca.select.rleak(baca.select.runs(o)[-1:])) as u:
            baca.pitch(u, "Eb3")
            baca.piecewise.bow_speed(
                [u],
                "scr. =|",
                staff_padding=3,
            )
        baca.dynamic(o.phead(-1), "f")
    with baca.scope(m[5]) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.piecewise.text(
            (),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            pieces=[baca.select.rleak(baca.select.tleaves(o, grace=False))],
        )
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
    with baca.scope(m.get(6, 7)) as o:
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.piecewise.bow_speed(
                [baca.select.rleak(run)],
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(10, 15)) as o:
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.spanners.hairpin(
            baca.select.rleak(o.plts()[-1:]),
            "f >o !",
        )
        for run in baca.select.runs(o)[:-1]:
            run = baca.select.rleak(run)
            baca.piecewise.bow_speed(
                [run],
                "scr. =|",
                staff_padding=3,
            )
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.runs()[-1:])],
            "scr. =|",
            staff_padding=3,
        )
    for item in [1, (6, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Eb3")
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.dynamic(o.phead(0), "f")
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.tleaves())],
            "scr. =|",
            staff_padding=3,
        )
    with baca.scope(m[3]) as o:
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.piecewise.text(
            (),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            pieces=[baca.select.rleak(o.tleaves(grace=False), count=2)],
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o.plt(-1), "E4")
        baca.dynamic(o.phead(-1), "f")
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.runs()[-1:])],
            "scr. =|",
            staff_padding=3,
        )
    with baca.scope(m[5]) as o:
        for run in abjad.select.runs(o, grace=True):
            baca.override.note_head_style_harmonic(run)
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            baca.select.plts(o, grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1 - 7),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.piecewise.text(
            (),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            pieces=[baca.select.rleak(baca.select.tleaves(o, grace=False))],
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.piecewise.bow_speed(
                [baca.select.rleak(run)],
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m.get(1, 7)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "ppp")
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(10, 15)) as o:
        for run in baca.select.runs(o)[:-1]:
            baca.piecewise.bow_speed(
                [baca.select.rleak(run)],
                "scr. =|",
                staff_padding=3,
            )
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.runs()[-1:])],
            "scr. =|",
            right_broken=True,
            staff_padding=3,
        )
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.piecewise.hairpin(
            [baca.select.rleak(o.plts()[-1:])],
            "f >o !",
            right_broken=True,
        )
        baca.override.dls_staff_padding(o, 4)
    for item in [1, (6, 7), (10, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "E4")


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.dynamic(o.phead(0), "f")
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.tleaves())],
            "scr. =|",
            staff_padding=3,
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.clef(o.phead(-1), "treble")
        baca.pitch(o.plt(-1), "Eqf4")
        baca.dynamic(o.phead(-1), "f")
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.runs()[-1:])],
            "scr. =|",
            staff_padding=3,
        )
    with baca.scope(m.get(3, 4)) as o:
        with baca.scope(o.runs()[:1]) as u:
            baca.pitch(u, "B2"),
            baca.rspanners.damp(
                u,
                staff_padding=3,
            )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "p")
        baca.rspanners.damp(
            o.tleaves(),
            staff_padding=3,
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.piecewise.bow_speed(
                [baca.select.rleak(run)],
                "scr. =|",
                staff_padding=3,
            )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F2")
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.spanners.hairpin(
            baca.select.rleak(o.tleaves()),
            "mf >o !",
        )
        baca.piecewise.scp(
            (),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=[baca.select.rleak(o.tleaves())],
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.clef(o.leaf(0), "treble")
        for run in baca.select.runs(o)[:-1]:
            run = baca.select.rleak(run)
            baca.piecewise.bow_speed(
                [run],
                "scr. =|",
                staff_padding=3,
            )
        baca.piecewise.bow_speed(
            [baca.select.rleak(o.runs()[-1:])],
            "scr. =|",
            right_broken=True,
            staff_padding=3,
        )
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.spanners.hairpin(
            baca.select.rleak(o.plts()[-1:]),
            "f >o !",
        )
    for item in [1, (6, 7), (10, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Eqf4")
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E1")
        baca.flat_glissando(o)
        baca.piecewise.hairpin(
            baca.select.lparts(o.rleaves(), [2, 4]),
            "o< p >o !",
        )
        baca.piecewise.scp(
            (),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=[baca.select.rleak(baca.select.ltleaves(o))],
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.override.note_head_style_harmonic(o.pleaf(0))
    with baca.scope(m.get(3, 4)) as o:
        with baca.scope(o.runs()[:1]) as u:
            baca.pitch(u, "Bb2")
            baca.rspanners.damp(
                u,
                staff_padding=3,
            )
    with baca.scope(m.get(4, 7)) as o:
        baca.flat_glissando(o.run(-1), "E1")
        with baca.scope(baca.select.rleak(o.runs()[-1:])) as u:
            baca.piecewise.hairpin(
                baca.select.lparts(u, [6, 5, 3, 2]),
                "o< mf > p < f",
            )
            baca.piecewise.scp(
                (),
                "T1 -> P1 -> T1 -> P1",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=baca.select.lparts(u, [6, 5, 3, 2]),
            )
    with baca.scope(m.get(1, 7)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[8]) as o:
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
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(10, 15)) as o:
        baca.flat_glissando(
            o.rleaves(),
            "E1",
            allow_hidden=True,
            right_broken=True,
        )
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [1, 1, 1, 1, 1, 2]),
            "o< mf > p < f > p < ff >o !",
            right_broken=True,
        )
        baca.piecewise.scp(
            (),
            "T1 -> O -> T1 -> P2 -> T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.cmgroups(o.rleaves(), [1]),
            right_broken=True,
        )
        baca.override.dls_staff_padding(o, 4)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E1")
        baca.flat_glissando(o.pleaves())
        baca.piecewise.hairpin(
            baca.select.lparts(o.rleaves(), [3, 3]),
            "o< p >o !",
        )
        baca.piecewise.scp(
            (),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=[baca.select.rleak(baca.select.ltleaves(o))],
        )
    with baca.scope(m.get(3, 7)) as o:
        baca.flat_glissando(o.pleaves(), "E1")
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.piecewise.hairpin(
                baca.select.mgroups(u, [2, 1, 1, 2]),
                "o< mp > p < f",
                bookend=False,
            )
            baca.piecewise.scp(
                (),
                "T1 -> P1 -> O -> T1 -> P2 -> O",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=baca.select.lparts(u, [3, 4, 4, 2, 3, 5]),
            )
    with baca.scope(m[8]) as o:
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F#2")
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
            baca.piecewise.scp(
                (),
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=[u],
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.flat_glissando(o.pleaves(), "E1")
        baca.piecewise.hairpin(
            baca.select.mgroups(o.rleaves(), [2, 1, 1, 3]),
            "o< f > p < ff >o !",
        )
        baca.piecewise.scp(
            (),
            "T1 -> P2 -> T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
            pieces=baca.select.mgroups(o.leaves(), [2, 1, 1, 2]),
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [5, 1, 4, 4, 4, 5, 4, 3, 1, 5, 4, 5, 4, 5, 4]
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
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache)
    vc1(cache)
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
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
        baca.page(
            3,
            baca.system(measure=12, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([2, 9], (1, 288)),),
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
