import abjad
import baca

from harmony import library

#########################################################################################
######################################## 28 [BB] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (2, 4),
            (2, 4),
            (2, 4),
            (2, 4),
            (6, 4),
            (1, 4),
            (7, 4),
            (7, 4),
            (7, 4),
            (7, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[BB.1-4]", 1),
        ("[<Y.2]", 5, "#darkgreen"),
        ("[BB.5-8]", 7),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2.=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "6:5(4)=4"),
        (7 - 1, "48"),
        (7 - 1, "5:6(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in ((6 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[6 - 1],
        r"\harmony-text-twenty-seven",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 4))
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(5),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [1, -23, -1, 1, -22],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, -22, -1, 2, -21],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [-26, 2],
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        ["+"],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = baca.make_notes(accumulator.get(1, 4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7, 10))
    voice.extend(music)
    baca.append_anchor_note(voice)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [10, 6],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        3,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [10, 6],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        2,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [4, 4, -8],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        1,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [8, 8, 8, 6, 2],
        fuse=True,
        do_not_rewrite_meter=True,
        written_halves=[-2],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [4],
    )
    voice.extend(music)
    baca.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[5]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -11),
        ),
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=lambda _: abjad.select.partition_by_ratio(
                    abjad.select.leaves(_), (4, 5)
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
        baca.flat_glissando(
            o.leaves()[:-6],
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-1],
        )
        baca.hairpin(
            o,
            "p < mp >",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.dynamic(o.rleaf(-1), "p")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 4)) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(o.pleaves(), hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.hairpin(
            o.tleaves(),
            "p < mp > p p < mp > p",
            pieces=lambda _: baca.select.clparts(_, [1]),
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
            o,
            "p < mp >",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.dynamic(o.rleaf(-1), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 4)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "C#5")
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 4)
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
            baca.hairpin(run, "f >o niente")
        baca.dls_staff_padding(o, 5)
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
        baca.dls_staff_padding(o, 4)
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
        baca.dls_staff_padding(o, 4 + 2)
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
        baca.dls_staff_padding(o, 4)
        baca.text_spanner(
            o.rleaves(),
            "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
            " -> 0 pul. / beat",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 2]),
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
            baca.select.rleak(baca.select.ltleaves(o)),
            "poc. scr. =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
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
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.pitches(o, "E6 C#6")
        baca.note_head_style_harmonic(o.pleaves())
        baca.glissando(o.tleaves())
        baca.hairpin(
            o.rleaves(),
            "o< mp >o",
            bookend=False,
            pieces=lambda _: baca.select.cmgroups(_, [2, 3]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 3, 1 + 1]),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#6")
        baca.hairpin(
            o,
            "niente o< pp >o ! o< pp >o ! o< p >o ! o< pp >o !"
            " o< p >o ! o< pp >o ! o< p >o !"
            " o< p >o ! o< mp >o ! o< mf >o ! o< mp >o !"
            " o< mp >o ! o< mf >o ! o< mf >o !"
            " o< mf >o ! o< f >o ! o< f >o ! o< mf >o !"
            " o< f >o ! o< mf >o ! o< mf >o !"
            " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
            " o< p >o ! o< pp >o ! o< pp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
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
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitches(o, "A5 C#6")
        baca.glissando(o.tleaves())
        baca.hairpin(
            o.rleaves(),
            "o< mp >o",
            bookend=False,
            pieces=lambda _: baca.select.cmgroups(_, [2, 3]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp -- ! >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2 + 1]),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.pitch(o, "A5")
        baca.note_head_style_harmonic(o.pleaves())
        baca.hairpin(
            o,
            "niente o< pp >o ! o< p >o ! o< p >o ! o< pp >o !"
            " o< pp >o ! o< p >o ! o< pp >o !"
            " o< p >o ! o< mp >o ! o< mp >o ! o< mf >o !"
            " o< mf >o ! o< mp >o ! o< mf >o !"
            " o< mp >o ! o< mf >o ! o< f >o ! o< f >o !"
            " o< mf >o ! o< f >o ! o< mf >o !"
            " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
            " o< pp >o ! o< p >o ! o< pp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
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
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#4", do_not_transpose=True)
        for run in baca.select.runs(o):
            rrun = baca.select.rleak(run)
            baca.hairpin(
                rrun,
                "niente o< mp >o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
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
            o.rleaves(),
            "pp -- ! < mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 3, 2 + 1]),
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
    with baca.scope(m[5]) as o:
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "C#4", do_not_transpose=True)
        baca.hairpin(
            o,
            "niente o< pp >o ! o< pp >o ! o< p >o ! o< p >o !"
            " o< pp >o ! o< pp >o ! o< p >o !"
            " o< mp >o ! o< mp >o ! o< p >o ! o< mp >o !"
            " o< mf >o ! o< mf >o ! o< f >o !"
            " o< f >o ! o< f >o ! o< mf >o ! o< f >o !"
            " o< f >o ! o< mf >o ! o< mf >o !"
            " o< mp >o ! o< mp >o ! o< p >o ! o< pp >o !"
            " o< p >o ! o< p >o ! o< pp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
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
            o.rleaves(),
            "o< ff >o",
            bookend=False,
            pieces=lambda _: baca.select.mgroups(_, [3, 2]),
        )
        baca.scp_spanner(
            o.leaves(),
            "T4 -> P1 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [2, 3]),
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
            o.rleaves(),
            "pp -- ! < mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1, 1 + 1]),
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
    with baca.scope(m[5]) as o:
        baca.pitch(
            o.pleaves()[1:-1],
            "C5",
            do_not_transpose=True,
        )
        baca.note_head_transparent(o.pleaves()[1:-1])
    with baca.scope(m.get(7, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.flat_glissando(
            o.rleaves(),
            "A1",
            allow_hidden=True,
            right_broken=True,
        )
        baca.hairpin(
            o.rleaves(),
            "o< ff (ff) >o niente",
            pieces=lambda _: baca.select.mgroups(_, [2, 1, 2]),
            right_broken=True,
        )
        baca.scp_spanner(
            o.rleaves(),
            "T4+ -> O -> T2 -> P1 -> T1 -> P3 -> O -> P1 -> O -> P1 -> T4+",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [3, 2, 2, 3, 2, 2, 3, 2, 2, 8]),
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
            baca.dls_staff_padding(o, 4)


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
    baca.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
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
    return score, accumulator


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    previous_metadata = baca.path.previous_metadata(__file__)
    first_measure_number = previous_metadata["final_measure_number"] + 1
    previous_persist = baca.path.previous_persist(__file__)
    score, accumulator = make_score(
        first_measure_number, previous_persist["persistent_indicators"]
    )
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
        environment,
        **baca.interpret.section_defaults(),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(
        lilypond_file,
        environment.metadata,
        environment.persist,
        timing,
        environment.arguments,
    )


if __name__ == "__main__":
    main()
