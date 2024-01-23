import abjad
import baca

from harmony import library

#########################################################################################
########################################### 28 ##########################################
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
        ("[BB.1-4]", 1),
        ("[<Y.2]", 5, "#darkgreen"),
        ("[BB.5-8]", 7),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2.=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "6:5(4)=4"),
        (7 - 1, "48"),
        (7 - 1, "5:6(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((6 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[6 - 1],
        r"\harmony-text-twenty-seven",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1, 4))
    library.make_warble_rhythm(
        voice,
        time_signatures(5),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest=([1, 2, 4], 5),
    )
    mmrests(voice, time_signatures(6))
    for time_signaure in time_signatures(7, 10):
        rhythm(
            voice,
            [w(4, 28), h(4), h(4), h(4), h(4), h(4), h(4)],
        )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [w(4, 8), 4, 8, 4, 4, 7, -1],
        time_signatures(1, 4),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [1, "-"],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))
    for time_signaure in time_signatures(7, 10):
        rhythm(
            voice,
            [w(4, 28), h(4), h(4), h(4), h(4), h(4), h(4)],
        )
    baca.section.append_anchor_note(voice)


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [2, "-"],
        time_signatures(1, 4),
    )
    rhythm(
        voice,
        [2, -22, -1, 2, -21],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))
    rhythm(
        voice,
        4 * [-26, 2],
        time_signatures(7, 10),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1, 4),
    )
    mmrests(voice, time_signatures(5, 6))
    rhythm(
        voice,
        ["+"],
        time_signatures(7, 10),
    )


def VA(voice, time_signatures):
    music = baca.make_notes(time_signatures(1, 4))
    voice.extend(music)
    library.make_tessera(
        voice,
        time_signatures(5),
        *(4, 4),
    )
    mmrests(voice, time_signatures(6))
    music = baca.make_notes(time_signatures(7, 10))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        2 * [10, 6],
        time_signatures(1, 4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(4, 3),
    )
    mmrests(voice, time_signatures(6), head=True)
    rhythm(
        voice,
        28 * [w(2, 4), h(w(2, 4))],
        time_signatures(7, 10),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        2 * [10, 6],
        time_signatures(1, 4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(4, 2),
    )
    mmrests(voice, time_signatures(6), head=True)
    rhythm(
        voice,
        28 * [w(2, 4), h(w(2, 4))],
        time_signatures(7, 10),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, 4, -8],
        time_signatures(1, 4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(4, 1),
    )
    mmrests(voice, time_signatures(6), head=True)
    rhythm(
        voice,
        28 * [w(2, 4), h(w(2, 4))],
        time_signatures(7, 10),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(voice, [8, 8, 8, w(6, 8), h(2)])
    library.make_tessera(
        voice,
        time_signatures(5),
        *(4, 0),
    )
    mmrests(voice, time_signatures(6), head=True)
    rhythm(
        voice,
        28 * [4],
        time_signatures(7, 10),
    )
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[5]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -11),
        ),
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                (),
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
    with baca.scope(m.get(7, 10)) as o:
        baca.pitch(o, "A4")
        leaves = o.leaves()[:-6]
        baca.flat_glissando(
            leaves,
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-1],
        )
        baca.hairpin(
            (),
            "p < mp >",
            pieces=baca.select.clparts(o, [1]),
        )
        baca.dynamic(o.rleaf(-1), "p")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 4)) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(o.pleaves(), hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.hairpin(
            (),
            "p < mp > p p < mp > p",
            pieces=baca.select.clparts(o.tleaves(), [1]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(7, 10)) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(
            o.leaves()[:-6],
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-1],
        )
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -7]))
        baca.hairpin(
            (),
            "p < mp >",
            pieces=baca.select.clparts(o, [1]),
        )
        baca.dynamic(o.rleaf(-1), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 4)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "C#5")
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 4)
        baca.laissez_vibrer(o.ptails())
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                (),
                "f >o niente",
                pieces=[run],
            )
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(7, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "A4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "mp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        )
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A1")
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.laissez_vibrer(o.ptails())
    with baca.scope(m.get(7, 10)) as o:
        baca.pitch(o, "<E3 Fb3>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(7, 10)) as o:
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.dynamic(
            o.phead(0),
            "mp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.override.dls_staff_padding(o, 4)
        baca.text_spanner(
            (),
            "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
            " -> 0 pul. / beat",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.lparts(o.rleaves(), [1, 1, 1, 2]),
        )
        baca.markup(
            o.pleaf(0),
            r"\harmony-rh-bow-plus-lh-bow-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.pitch(o, "Gqf3")
        baca.flat_glissando(
            o,
            hide_middle_stems=True,
            left_broken=True,
        )
        baca.bow_speed_spanner(
            (),
            "poc. scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            left_broken=True,
            pieces=[baca.select.rleak(baca.select.ltleaves(o))],
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(7, 10)) as o:
        baca.pitch(o, "E3")
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.bow_speed_spanner(
            (),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=[baca.select.rleak(baca.select.ltleaves(o))],
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.pitches(o, "E6 C#6")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.glissando(o.tleaves())
        baca.hairpin(
            (),
            "o< mp >o",
            bookend=False,
            pieces=baca.select.cmgroups(o.rleaves(), [2, 3]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            (),
            "pp -- ! < mp >o niente",
            pieces=baca.select.lparts(o.rleaves(), [2, 3, 1 + 1]),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.override.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#6")
        baca.hairpin(
            (),
            "niente o< pp >o ! o< pp >o ! o< p >o ! o< pp >o !"
            " o< p >o ! o< pp >o ! o< p >o !"
            " o< p >o ! o< mp >o ! o< mf >o ! o< mp >o !"
            " o< mp >o ! o< mf >o ! o< mf >o !"
            " o< mf >o ! o< f >o ! o< f >o ! o< mf >o !"
            " o< f >o ! o< mf >o ! o< mf >o !"
            " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
            " o< p >o ! o< pp >o ! o< pp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(o, [1]),
        )
        baca.dynamic(o.rleaf(-1), "niente")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="E6",
            harmonic=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitches(o, "A5 C#6")
        baca.glissando(o.tleaves())
        baca.hairpin(
            (),
            "o< mp >o",
            bookend=False,
            pieces=baca.select.cmgroups(o.rleaves(), [2, 3]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            (),
            "pp -- ! < mp -- ! >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 2, 3, 2 + 1]),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.override.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.pitch(o, "A5")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.hairpin(
            (),
            "niente o< pp >o ! o< p >o ! o< p >o ! o< pp >o !"
            " o< pp >o ! o< p >o ! o< pp >o !"
            " o< p >o ! o< mp >o ! o< mp >o ! o< mf >o !"
            " o< mf >o ! o< mp >o ! o< mf >o !"
            " o< mp >o ! o< mf >o ! o< f >o ! o< f >o !"
            " o< mf >o ! o< f >o ! o< mf >o !"
            " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
            " o< pp >o ! o< p >o ! o< pp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(o, [1]),
        )
        baca.dynamic(o.rleaf(-1), "niente")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="C#6",
            harmonic=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#4", do_not_transpose=True)
        for run in baca.select.runs(o):
            rrun = baca.select.rleak(run)
            baca.hairpin(
                (),
                "niente o< mp >o niente",
                pieces=baca.select.lparts(rrun, [1, 1 + 1]),
            )
            baca.trill_spanner(
                rrun,
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            (),
            "pp -- ! < mp >o niente",
            pieces=baca.select.lparts(o.rleaves(), [2, 3, 2 + 1]),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.override.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#4", do_not_transpose=True)
        baca.hairpin(
            (),
            "niente o< pp >o ! o< pp >o ! o< p >o ! o< p >o !"
            " o< pp >o ! o< pp >o ! o< p >o !"
            " o< mp >o ! o< mp >o ! o< p >o ! o< mp >o !"
            " o< mf >o ! o< mf >o ! o< f >o !"
            " o< f >o ! o< f >o ! o< mf >o ! o< f >o !"
            " o< f >o ! o< mf >o ! o< mf >o !"
            " o< mp >o ! o< mp >o ! o< p >o ! o< pp >o !"
            " o< p >o ! o< p >o ! o< pp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(o, [1]),
        )
        baca.dynamic(o.rleaf(-1), "niente")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.pitch(o, "A1")
        baca.flat_glissando(
            o.leaves()[:-1],
            hide_middle_stems=True,
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-2],
        )
        baca.hairpin(
            (),
            "o< ff >o",
            bookend=False,
            pieces=baca.select.mgroups(o.rleaves(), [3, 2]),
        )
        baca.scp_spanner(
            (),
            "T4 -> P1 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
            pieces=baca.select.lparts(o.leaves(), [2, 3]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            (),
            "pp -- ! < mp >o niente",
            pieces=baca.select.lparts(o.rleaves(), [2, 1, 1 + 1]),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.pitch(
            o.pleaves()[1:-1],
            "C5",
            do_not_transpose=True,
        )
        baca.override.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.flat_glissando(
            o.rleaves(),
            "A1",
            allow_hidden=True,
            right_broken=True,
        )
        baca.hairpin(
            (),
            "o< ff (ff) >o niente",
            pieces=baca.select.mgroups(o.rleaves(), [2, 1, 2]),
            right_broken=True,
        )
        baca.scp_spanner(
            (),
            "T4+ -> O -> T2 -> P1 -> T1 -> P3 -> O -> P1 -> O -> P1 -> T4+",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
            pieces=baca.select.lparts(o.rleaves(), [3, 2, 2, 3, 2, 2, 3, 2, 2, 8]),
            right_broken=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
        with baca.scope(m.get(1, 10)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [2, 2, 2, 2, 6, 1, 7, 7, 7, 7]
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
    hp(cache)
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
            baca.system(measure=7, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([6], (1, 288)),),
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
