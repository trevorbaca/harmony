import abjad
import baca

from harmony import library

#########################################################################################
########################################### 27 ##########################################
#########################################################################################

T = library.T
h = library.h
mmrests = library.mmrests
rhythm = library.rhythm
rt = library.rt
w = library.w


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[AA.1]", 1),
        ("[<X.6]", 3, "#darkgreen"),
        ("[AA.2-3]", 4),
        ("[<Y.2]", 6, "#darkgreen"),
        ("[>BB.5]", 7, "#darkgreen"),
        ("[AA.4]", 9),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(4)=4"),
        (3 - 1, "48"),
        (3 - 1, "2.=4"),
        (4 - 1, "144"),
        (4 - 1, "3:2(8)=4"),
        (6 - 1, "57 3/5"),
        (6 - 1, "4:5(2)=4"),
        (7 - 1, "48"),
        (7 - 1, "5:6(4)=4"),
        (9 - 1, "144"),
        (9 - 1, "3:2(8)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    wrappers = baca.markup(
        skips[4 - 1],
        r"\harmony-repeat-three-markup",
        abjad.Tweak(r"- \tweak extra-offset #'(0 . 17)"),
        abjad.Tweak(r"- \tweak font-size 10"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[4 - 1],
        r"\harmony-repeat-three-markup",
        abjad.Tweak(r"- \tweak extra-offset #'(0 . 9)"),
        abjad.Tweak(r"- \tweak font-size 4"),
    )
    baca.tags.wrappers(wrappers, baca.tags.ONLY_PARTS)
    baca.text_script_extra_offset(skips[:-1], (1.5, 12))
    baca.open_volta(skips[4 - 1], first_measure_number)
    baca.close_volta(skips[6 - 1], first_measure_number)
    for index, string in (
        (2 - 1, "fermata"),
        (8 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[2 - 1],
        r"\harmony-text-twenty-five",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[8 - 1],
        r"\harmony-text-twenty-six",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    rhythm(
        voice,
        4 * [-2, 2, 2],
        time_signatures(3),
    )
    music = library.make_appoggiato_rhythm(
        time_signatures(4, 5),
        weights=[28, 24],
        counts=[9, 6],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        time_signatures(6),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    rhythm(voice, [w(4, 8), h(w(4, 8))], time_signatures(7))
    mmrests(voice, time_signatures(8), head=True)
    rhythm(
        voice,
        [4, "-"],
        time_signatures(9),
    )


def PERC1(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    rhythm(
        voice,
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
        time_signatures(3),
    )
    music = baca.make_repeat_tied_notes(time_signatures(4, 5))
    voice.extend(music)
    rhythm(
        voice,
        [-12, T([-2, 1, -7], 2)],
        time_signatures(6),
    )
    rhythm(
        voice,
        [1, -23],
        time_signatures(7),
    )
    mmrests(voice, time_signatures(8))
    music = baca.make_repeat_tied_notes(time_signatures(9))
    voice.extend(music)


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, -20, 4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(3),
    )
    rhythm(
        voice,
        [2, "-"],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-12, T([-2, 1, -7], 2)],
        time_signatures(6),
    )
    rhythm(
        voice,
        [1, -23],
        time_signatures(7),
    )
    mmrests(voice, time_signatures(8, 9))


def HP(voice, time_signatures):
    rhythm(
        voice,
        [-24, 4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
        time_signatures(3),
    )
    rhythm(
        voice,
        [4, "-"],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-12, T([-2, 1, -7], 2)],
        time_signatures(6),
    )
    rhythm(
        voice,
        [1, -23],
        time_signatures(7),
    )
    mmrests(voice, time_signatures(8, 9))


def VA(voice, time_signatures):
    music = baca.make_notes(time_signatures(1))
    voice.extend(music)
    mmrests(voice, time_signatures(2), head=True)
    rhythm(
        voice,
        [6, 3, 11],
        time_signatures(3),
    )
    music = baca.make_notes(time_signatures(4))
    voice.extend(music)
    rhythm(
        voice,
        [rt(14), T([8], 2)],
        time_signatures(5),
    )
    music = library.make_tessera_4(
        time_signatures(6),
        4,
    )
    voice.extend(music)
    mmrests(voice, time_signatures(7, 8))
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


_sixteenths = [6, -2, 4, -2, 4, -2, 2, -2]


def VC1(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    rhythm(
        voice,
        [4, 2, 7, 7],
        time_signatures(3),
    )
    rhythm(
        voice,
        _sixteenths[:4] + ["-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        _sixteenths,
        time_signatures(5),
    )
    music = library.make_tessera_4(
        time_signatures(6),
        3,
    )
    voice.extend(music)
    rhythm(voice, 2 * [w(2, 4), h(w(2, 4))], time_signatures(7))
    mmrests(voice, time_signatures(8), head=True)
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    rhythm(
        voice,
        [9, 11],
        time_signatures(3),
    )
    rhythm(
        voice,
        abjad.sequence.rotate(_sixteenths, -2)[:4] + ["-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        abjad.sequence.rotate(_sixteenths, -2),
        time_signatures(5),
    )
    music = library.make_tessera_4(
        time_signatures(6),
        2,
    )
    voice.extend(music)
    rhythm(voice, 2 * [w(2, 4), h(w(2, 4))], time_signatures(7))
    mmrests(voice, time_signatures(8), head=True)
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    rhythm(
        voice,
        [4, 9, 7],
        time_signatures(3),
    )
    rhythm(
        voice,
        abjad.sequence.rotate(_sixteenths, -4)[:4] + ["-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        abjad.sequence.rotate(_sixteenths, -4),
        time_signatures(5),
    )
    music = library.make_tessera_4(
        time_signatures(6),
        1,
    )
    voice.extend(music)
    rhythm(voice, 2 * [w(2, 4), h(w(2, 4))], time_signatures(7))
    mmrests(voice, time_signatures(8), head=True)
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    music = library.make_talea(
        time_signatures(3),
        [9, 7, 1, -1, 1, -1, 1, -1],
        extra_counts=[0, 0, 0, 0, 2],
        tuplet_ratio_denominator=None,
    )
    voice.extend(music)
    rhythm(
        voice,
        [2, -2, 6, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        abjad.sequence.rotate(_sixteenths, -6),
        time_signatures(5),
    )
    music = library.make_tessera_4(
        time_signatures(6),
        0,
    )
    voice.extend(music)
    rhythm(voice, [w(4, 8), h(w(4, 8))], time_signatures(7))
    mmrests(voice, time_signatures(8), head=True)
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "niente o< p >o",
                forbid_al_niente_to_bar_line=True,
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                run,
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 10"),
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_a_flat(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.dynamic(o.pleaf(0, grace=False), "pp-ppp")
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
            lilypond_id=2,
        )
        baca.text_spanner(
            o.rleaves(),
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            bookend=False,
        )
    with baca.scope(m[5]) as o:
        baca.dynamic(o.pleaf(0, grace=False), "pp-ppp")
    with baca.scope(m[6]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -10),
        )
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=abjad.select.partition_by_ratio(
                    abjad.select.leaves(run), (4, 5)
                ),
            )
            baca.trill_spanner(
                baca.select.rleak(run),
                abjad.Tweak(
                    r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"
                ),
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "Bb4")
        baca.hairpin(
            o.rleaves(),
            "pp < p >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        )
    with baca.scope(m[9]) as o:
        baca.pitch(o, "G3")
        baca.note_head_style_harmonic(o.pleaves())
        baca.dynamic(o.phead(0), "ff")
        baca.markup(o.pleaf(0), r"\baca-jet-whistle-markup")
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[3]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        library.brake_drum_staff_position(o)
        baca.flat_glissando(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[6]) as o:
        baca.tuplet_bracket_up(o)
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.brake_drum_staff_position(o)
        baca.damp(o.phead(0))
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m.get(6, 7)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(o.tleaves(), count=2),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m[9]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_position(o, 2)
        baca.metric_modulation_spanner(
            o.leaves()[:2],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.tam_tam_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.dynamic(o.phead(0), "ff")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.tuplet_bracket_up(o)
        library.slate_staff_position(o.pleaf(0))
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaf(0))
        for run in baca.select.runs(o)[:1]:
            run = baca.select.rleak(run)
            baca.hairpin(run, "f >o niente")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(o.tleaves(), count=2),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Ab4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f-ancora")
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-pince-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Ab4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-pince-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[6]) as o:
        baca.tuplet_bracket_up(o)
        baca.dynamic(o.phead(0), "f-ancora")
    with baca.scope(m[7]) as o:
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m.get(6, 7)) as o:
        baca.pitch(o, "Bb4")
        baca.snap_pizzicato(o.pheads())
        baca.metric_modulation_spanner(
            baca.select.rleak(o.tleaves(), count=2),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(4, 9)) as o:
        baca.dls_staff_padding(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Ab4")
        baca.dynamic(o.phead(0), "mp")
        baca.bow_speed_spanner(
            baca.select.rleak(o.ltleaves()),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#3")
        baca.scp_spanner(
            o,
            "P2 -> P1 -> P3 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o),
        )
    with baca.scope(m[5]) as o:
        baca.tuplet_bracket_up(o)
        baca.markup(o.phead(-1), r"\baca-quasi-bisb-markup")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o.plts()[:-1], "Ab4")
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            o.leaves(),
            "XFB =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o.plts(), "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 6)) as o:
        with baca.scope(o.plts()) as u:
            baca.note_head_style_harmonic_black(u)
            baca.stem_tremolo(u)
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m[9]) as o:
        baca.pitch(o.rleaves(), "Gqf3", allow_hidden=True)
        baca.flat_glissando(
            o.rleaves(),
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-a",
            direction=abjad.DOWN,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            o.leaves(),
            "P2 -> O -> P2 -> P1 -> P3",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o,
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=baca.select.plts(o),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.note_head_transparent(o.pleaves()[1:-1])
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[7]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#6")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="E6",
        )
    with baca.scope(m[9]) as o:
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for item in [(4, 5), 9]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "G3")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            o.leaves(),
            "O -> P2 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o,
            "pp -- ! < mp -- ! >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=baca.select.lparts(o, [1, 2, 3, 2]),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[6]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m[7]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "A5")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="C#6",
        )
    with baca.scope(m[9]) as o:
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for item in [(4, 5), 9]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "G3")


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            o.leaves(),
            "P1 -> P2 -> O -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o,
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=baca.select.lparts(o, [2, 3, 2]),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[6]) as o:
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m[7]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#4", do_not_transpose=True)
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for item in [(4, 5), 9]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Gb2")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[3]) as o:
        baca.tuplet_bracket_down(o)
        baca.pitch(o.leaves()[:4], "F#1")
        baca.pitch(o.plts()[-3:], "Gb2")
        baca.scp_spanner(
            o.leaves()[:3],
            "P1 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
        )
        baca.accent(o.pheads()[1:3])
        baca.stem_tremolo(o.plts()[:2])
        baca.dynamic(o.phead(0), "f")
        baca.dynamic(o.phead(2), "pp")
    with baca.scope(m.get(3, 4)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[4:13],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.damp_spanner(
            baca.select.rleak(baca.select.leaves(o)[4:]),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o,
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=baca.select.lparts(o, [2, 1, 1]),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[6]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5", do_not_transpose=True)
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A1")
        baca.hairpin(
            o.rleaves(),
            "o< mp >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 2]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[9]) as o:
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for item in [(4, 5), 9]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Gb2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads()[1:])
            baca.dynamic(o.phead(0), "f")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[6]) as o:
            baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[7]) as o:
            baca.hairpin(
                o.rleaves(),
                "niente o< mp >o niente o< mp >o niente",
                pieces=baca.select.lparts(o.rleaves(), [1, 1, 1, 2]),
            )
        with baca.scope(m.get(4, 5)) as o:
            baca.dynamic(o.phead(0), "pp")
            baca.damp_spanner(
                baca.select.rleak(baca.select.ltleaves(o)),
                abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 9)) as o:
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [7, 1, 5, 7, 6, 6, 2, 1, 7]
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
    hp(cache["hp"])
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
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
        transpose_score=True,
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
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
        overrides=(baca.space([2, 8], (1, 288)),),
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
