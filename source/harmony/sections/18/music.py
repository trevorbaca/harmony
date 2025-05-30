import abjad
import baca
import rmakers

from harmony import library

#########################################################################################
########################################### 18 ##########################################
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
        ("[R.1-2]", 1),
        ("[>S.1]", 3, "#darkgreen"),
        ("[<P.7-8]", 4, "#darkgreen"),
        ("[<Q.1]", 6, "#darkgreen"),
        ("[R.3]", 8),
        ("[R.4-6]", 9),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "3:2(4)=4"),
        (3 - 1, "96"),
        (3 - 1, "4:3(4)=4"),
        (6 - 1, "48"),
        (6 - 1, "2=4"),
        (8 - 1, "72"),
        (8 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((7 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[7 - 1],
        r"\harmony-text-seventeen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1, 2))
    library.make_warble_rhythm(
        voice,
        time_signatures(3),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[1],
    )
    rhythm(
        voice,
        [3, -1, 8, -8, 3, -1],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-4, 8],
        time_signatures(5),
    )
    rhythm(
        voice,
        [4, 4, "-"],
        time_signatures(6),
    )
    mmrests(voice, time_signatures(7, 11))


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [4, 2, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [2, 2, "-"],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, -1, OBGC(5 * [2], [-3, -8])],
        time_signatures(3),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [21, "-"],
        time_signatures(4, 5),
    )
    music = baca.make_notes(time_signatures(6))
    voice.extend(music)
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [2, "-"],
        time_signatures(8),
    )
    rhythm(
        voice,
        [2, "-"],
        time_signatures(9),
    )
    rhythm(
        voice,
        T([2, -2, -16], -4),
        time_signatures(10),
    )
    rhythm(
        voice,
        [2, "-"],
        time_signatures(11),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, 2, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [2, 2, "-"],
        time_signatures(2),
    )
    rhythm(
        voice,
        [-4, -1, OBGC(4 * [2], [-3, -8])],
        time_signatures(3),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [21, "-"],
        time_signatures(4, 5),
    )
    music = baca.make_notes(time_signatures(6))
    voice.extend(music)
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [2, "-"],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9, 10))
    rhythm(
        voice,
        T([-8, 4, 4], -4),
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    rhythm(
        voice,
        [-4, 2, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-2, 2, "-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [21, "-"],
        time_signatures(4, 5),
    )
    music = baca.make_notes(time_signatures(6))
    voice.extend(music)
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [2, "-"],
        time_signatures(8),
    )
    rhythm(
        voice,
        [3, 3, "-"],
        time_signatures(9),
    )
    rhythm(
        voice,
        [3, 3, "-"],
        time_signatures(10),
    )
    rhythm(
        voice,
        [3, 3, "-"],
        time_signatures(11),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-2, "+", -1],
        time_signatures(2),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(3),
    )
    rhythm(
        voice,
        library.glissando_counts_curtailed(),
        time_signatures(4, 5),
    )
    music = baca.make_notes(time_signatures(6))
    voice.extend(music)
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        [8, 4, -4],
        time_signatures(8),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))],
        time_signatures(9),
    )
    rhythm(
        voice,
        T(5 * [w(2, 4), h(w(2, 4))], -4),
        time_signatures(10),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-2, "+", -1],
        time_signatures(2),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(3),
    )
    rhythm(
        voice,
        library.damp_counts_curtailed(),
        time_signatures(4, 5),
    )
    library.make_tessera(
        voice,
        time_signatures(6),
        *(2, 3),
        rest_plt=0,
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [8, 4, -4],
        time_signatures(8),
    )
    rhythm(
        voice,
        4 * [3, -7],
        time_signatures(9, 11),
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-2, "+", -1],
        time_signatures(2),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(3),
    )
    rhythm(
        voice,
        library.damp_counts_curtailed(),
        time_signatures(4, 5),
    )
    library.make_tessera(
        voice,
        time_signatures(6),
        *(2, 2),
        rest_plt=0,
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [8, 4, -4],
        time_signatures(8),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))],
        time_signatures(9),
    )
    rhythm(
        voice,
        T(5 * [w(2, 4), h(w(2, 4))], -4),
        time_signatures(10),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(1),
    )
    components = rhythm(
        voice,
        [-2, "+", -1],
        time_signatures(2),
    )
    rmakers.untie(components)
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(3),
    )
    rhythm(
        voice,
        library.glissando_counts_curtailed(),
        time_signatures(4, 5),
    )
    library.make_tessera(
        voice,
        time_signatures(6),
        *(2, 1),
        rest_plt=0,
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [8, 4, -4],
        time_signatures(8),
    )
    rhythm(
        voice,
        [1, 4, 1, "-"],
        time_signatures(9),
    )
    rhythm(
        voice,
        [2, 3, 1, "-"],
        time_signatures(10),
    )
    rhythm(
        voice,
        [1, 3, 2, "-"],
        time_signatures(11),
    )


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(1),
    )
    rhythm(
        voice,
        T([-8] + 2 * [w(2, 4), h(w(2, 4))], -4),
        time_signatures(2),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(3),
    )
    rhythm(
        voice,
        library.glissando_counts_curtailed(),
        time_signatures(4, 5),
    )
    library.make_tessera(
        voice,
        time_signatures(6),
        *(2, 0),
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [8, 4, -4],
        time_signatures(8),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))],
        time_signatures(9),
    )
    rhythm(
        voice,
        T(5 * [w(2, 4), h(w(2, 4))], -4),
        time_signatures(10),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[3]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -4),
        ),
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
            baca.hairpin(
                abjad.select.partition_by_ratio(u, (3, 4)),
                "o< mp>o!",
            )
            baca.spanners.trill(
                u,
                baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "D4")
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        for run in baca.select.runs(o):
            baca.spanners.text(
                run,
                "A =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o, "D4")
        for run in baca.select.runs(o):
            baca.spanners.text(
                run,
                "A =|",
                baca.tweak.staff_padding(3),
                rleak=True,
            )
        baca.spanners.metric_modulation(
            o.run(0),
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m.get(1, 6)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.phead(1))
        baca.dynamic(o.phead(0), "mp")
        baca.hairpin(
            baca.select.rleak(o.pleaves()[1:]),
            "o<mf",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-then-superball-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mp")
        baca.laissez_vibrer(o.phead(1))
        baca.hairpin(
            o.pleaves()[1:],
            "o<mf",
            rleak=True,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.glissando(o.pleaves(), hide_middle_stems=True)
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-paper-towel-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(
            o.pleaves(),
            "o<mf",
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-superball-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[9]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(
            o.pleaves(),
            "o<mp",
            rleak=True,
        )
    with baca.scope(m[10]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(
            o.pleaves(),
            "o<mp",
            rleak=True,
        )
    with baca.scope(m[11]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(
            o.pleaves(),
            "o<mp",
            rleak=True,
        )
    with baca.scope(m.get(8, 11)) as o:
        baca.override.tuplet_bracket_direction_up(o)
        baca.override.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.brake_drum_staff_position(o)
        baca.damp(o.phead(0))
        baca.dynamic(o.phead(0), "p")
        baca.dynamic(o.phead(1), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[2]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "p")
        baca.damp(o.phead(0))
        with baca.scope(o.phead(1)) as u:
            baca.laissez_vibrer(u)
            baca.dynamic(u, "f")
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[6]) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[8]) as o:
        library.brake_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 10)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[11]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.override.tuplet_bracket_direction_up(o)
        library.purpleheart_staff_positions(o, [0])
        baca.dynamic(o.phead(0), "ff")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(6),
        )
        baca.spanners.metric_modulation(
            o.runs()[-1:],
            baca.tweak.staff_padding(10.5),
            right_broken=True,
            rleak=True,
        )


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            rests = [
                x
                for x in abjad.select.rests(o)
                if abjad.get.duration(x) >= abjad.Duration((1, 2))
            ]
            baca.override.dots_extra_offset(rests, (2, 0))
            baca.override.dots_x_extent_false(rests)
            baca.override.rest_x_extent_zero(rests)


def hp(m):
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 7)
    with baca.scope(m[6]) as o:
        baca.pitch(o, "Db1")
        baca.spanners.ottava(o.tleaves(), -1, rleak=True)
        baca.laissez_vibrer(o.ptails())
        baca.override.ottava_bracket_staff_padding(o, 8)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5)
    for item in [(1, 2), 8]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "G4")
            baca.laissez_vibrer(o.ptails())
            baca.dynamic(o.phead(0), "mf")
            baca.override.dls_staff_padding(o, 4)
            baca.markup(
                o.pleaf(0),
                r"\baca-pdlt-markup",
                baca.tweak.staff_padding(4),
            )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m[9]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            baca.tweak.staff_padding(6),
        )
    for n in [9, 10, 11]:
        with baca.scope(m[n]) as o:
            library.whisk_staff_position(o)
            baca.glissando(o.pleaves(), "C4")
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [1, 2]),
                'o< "mf">o!',
                rleak=True,
            )
    with baca.scope(m.get(9, 11)) as o:
        baca.override.dls_staff_padding(o, 6)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "C3")
        baca.override.rest_extra_offset(o.rest(-1), (-1.5, 0))
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "G#5:A5:Bb5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.pitches(o, "D4 Eb4")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            baca.tweak.staff_padding(1.5),
            full=True,
        )
        baca.spanners.half_clt(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "D4"),
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.bow_speed(
            o,
            "poco scr. =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "C3")
    with baca.scope(m.get(9, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.glissando(o.leaves()[:-1], "G4")
        baca.pitch(o[-1], "G4")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "D5")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "G#5:A5:Bb5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E3")
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "D5")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(9, 11)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D3")
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "mp--!",
                rleak=True,
            )
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "Btqf4")
        baca.markup(o.pleaf(0), r"\baca-seven-c")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "A5:Bb5:Cb6")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "D3")
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(9, 11)) as o:
        baca.glissando(o.leaves()[:-1])
    for item in [8, (9, 11)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Btqf4")
            baca.override.note_head_style_harmonic(o.pleaves())


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        for run in baca.select.runs(o):
            # NOTE: currently glissando must lexically precede trill spanner
            baca.glissando(run, "E5", do_not_transpose=True)
            baca.spanners.trill(
                run,
                alteration="Fqs5",
                rleak=True,
            )
        baca.markup(o.pleaf(0), r"\baca-eleven-c")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "B5:C6:Db6", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "B5:C6:Db6", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
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
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E3")
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        for run in baca.select.runs(o):
            # NOTE: currently glissando must lexically precede trill spanner
            baca.glissando(run, "E5", do_not_transpose=True)
            baca.spanners.trill(
                run,
                alteration="Fqs5",
                rleak=True,
            )
        baca.markup(o.pleaf(0), r"\baca-eleven-c")
    with baca.scope(m[9]) as o:
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [2, 2]),
            "o< p>o!",
            rleak=True,
        )
        baca.spanners.scp(
            [o.tleaves()],
            "O -> P4",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[10]) as o:
        baca.hairpin(
            baca.select.clparts(o.tleaves(), [2]),
            "o< p>o!",
            rleak=True,
        )
        baca.spanners.scp(
            [o.tleaves()],
            "O -> P4",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[11]) as o:
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [2, 1]),
            "o< p>o!",
            rleak=True,
        )
        baca.spanners.scp(
            [o.tleaves()],
            "O -> P4",
            baca.tweak.staff_padding(3),
        ),
    with baca.scope(m.get(9, 11)) as o:
        baca.pitch(o, "E5", do_not_transpose=True)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "G3")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[2]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.clparts(o.tleaves(), [1]),
            "o<| mp|>o !o<| mp|>o",
        )
        baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    with baca.scope(m.get(2, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A#5:B5:C6", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 3)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
        baca.spanners.metric_modulation(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
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
    with baca.scope(m[6]) as o:
        baca.pitch(o, "D3")
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G3")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(9, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        # NOTE: currently glissando must lexically precede trill spanner
        baca.glissando(o.leaves()[:-1], "E5", do_not_transpose=True)
        baca.pitch(o[-1:], "E5", do_not_transpose=True)
        baca.spanners.trill(
            baca.select.tleaves(o),
            # large right padding because open-volta follows in next section
            baca.tweak.bound_details_right_padding(6),
            baca.tweak.staff_padding(3),
            alteration="Fqs5",
            rleak=True,
        )
        baca.markup(o.pleaf(0), r"\baca-eleven-c")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            # excluded cb1 because of current gliss / pitch trill order contention
            baca.glissando(o.pleaves())
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [2, 1]),
                "o< mp>o!",
                rleak=True,
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.spanners.trill(
                baca.select.tleaves(o),
                rleak=True,
            )
    for name in ["va", "vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            # excluded cb1 because of gliss / pitch trill order contention
            baca.glissando(o.pleaves())
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [2, 1]),
                "o< f>o!",
                rleak=True,
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.spanners.trill(
                baca.select.tleaves(o),
                rleak=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [1, 1, 2, 1, 1]),
                "o<| mp|> pp pp<| mp|>o!",
                rleak=True,
            )
            baca.override.dynamic_text_x_offset(o.pleaf(1), -3)
            baca.override.dynamic_text_x_offset(o.pleaf(-1), -0.25)
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            # excluded cb1 because of current gliss / trill order contention
            baca.glissando(o.pleaves())
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [1, 1]),
                "o< mp>o!",
                rleak=True,
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            # excluded cb1 because of current gliss / trill order contention
            baca.spanners.trill(
                baca.select.tleaves(o),
                rleak=True,
            )
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[6]) as o:
            baca.triple_staccato(o.pheads())
            baca.hairpin(
                o.tleaves(),
                "p<f",
            )
    for name in ["va", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(9, 11)) as o:
            baca.hairpins.cyclic(
                baca.select.clparts(o.tleaves(), [1]),
                # TODO: set to-barline ##t on final diminuendo:
                "o< p >o",
                do_not_bookend=True,
            )
            baca.hairpin([o.rleaf(-1)], "!")
    for name in ["va", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(9, 11)) as o:
            # excluded cb2 because of gliss / trill order contention
            baca.spanners.trill(
                baca.select.tleaves(o),
                # large right padding because open-volta follows in next section
                baca.tweak.bound_details_right_padding(6),
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 11)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 3, 4, 3, 3, 6, 1, 4, 3, 4, 3]
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
    perc1(cache)
    perc2(cache)
    perc1_perc2(cache)
    hp(cache["hp"])
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
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
            baca.layout.System(8, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        strict_overrides=(baca.layout.Override([7], (1, 288)),),
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
