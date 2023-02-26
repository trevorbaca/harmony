import abjad
import baca

from harmony import library

#########################################################################################
######################################### 13 [M] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (3, 4),
        (1, 4),
    ]
    time_signatures = baca.section.time_signatures(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[M.1]", 1),
        ("[M.2]", 3),
        ("[<J.6]", 4, "#darkgreen"),
        ("[<L.4]", 5, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "2.=4"),
        (5 - 1, "96"),
        (5 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in (
        (2 - 1, "fermata"),
        (6 - 1, "short"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[2 - 1],
        r"\harmony-text-twelve",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[6 - 1],
        r"\harmony-text-thirteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(4),
        counts=[9],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [4, 8],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def PERC1(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1),
        weights=[6, 14],
        counts=[5, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(3),
        weights=[20, 8],
        counts=[0, 3],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(4))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6))
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1),
        weights=[6, 14],
        counts=[4, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(3),
        weights=[20, 8],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [20, "-", 1, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 4, 8, -4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 4),
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def VA(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1),
        weights=[4, 12, 4],
        counts=[0, 7, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    music = baca.make_repeat_tied_notes(time_signatures(4, 5))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def VC1(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1),
        weights=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def VC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [7, -1, 12],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def CB1(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1),
        weights=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def CB2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [7, -1, 12],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(6), head=voice.name)
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[1]) as o:
        # TODO: promote into music = library.make_sixteenths():
        baca.repeat_tie(o.pleaf(-1))
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        leaves = baca.select.tleaves(o, rleak=True)
        baca.hairpin(
            leaves,
            "o<| f |>o niente",
            pieces=baca.select.lparts(leaves, [1, 2 + 1]),
        )
        baca.metric_modulation_spanner(
            o.leaves()[:3],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        leaves = baca.select.tleaves(o, rleak=True)
        baca.hairpin(
            leaves,
            "o<| f |>o niente",
            pieces=baca.select.lparts(leaves, [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.pitches(o.leaves(grace=False), "A3")
        baca.pitches(
            o.leaves(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.dynamic(o.pleaf(0, grace=False), "p")
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "Dtqf5")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.breathe(o.pleaf(1))
        baca.hairpin(
            o.rleaves(),
            'o< "f" >o niente',
            pieces=baca.select.lparts(o.rleaves(), [1, 2]),
        )
        for clpart in baca.select.clparts(o, [2]):
            clpart = baca.select.rleaves(clpart)
            baca.text_spanner(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=baca.select.lparts(clpart, [1, 1 + 1]),
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(-1), "p")
        baca.staff_position(o, 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            baca.hairpin(run, "o<| f")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(-1), "p")
        baca.staff_position(o, 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.dynamic(
            o.pleaf(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        with baca.scope(o.plt(0)) as u:
            library.bass_drum_staff_position(u)
            baca.flat_glissando(u)
        baca.stem_tremolo(baca.select.plt(o, 0))
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position(u)
            baca.dynamic(u, "f")
            baca.markup(
                u,
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 0.5"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m[5]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding(o, 6)
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.leaves(o)[3:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            rests = abjad.select.rests(o)
            rests = [
                _ for _ in rests if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ]
            baca.dots_extra_offset(rests, (1, 0))
            baca.dots_x_extent_false(rests)
            baca.rest_x_extent_zero(rests)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "<B2 C3 Db3>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.stem_tremolo(o.pleaves())
        leaves = baca.select.tleaves(o, rleak=True)
        baca.hairpin(
            leaves,
            "o< mf >o niente",
            pieces=baca.select.lparts(leaves, [1, 1 + 1]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitches(o.plts()[:-1], "Bb5 A5 G#5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.ptails()[:-1])
        baca.dynamic(o.phead(0), "f")
        with baca.scope(o.phead(-1)) as u:
            baca.pitch(u, "E4")
            baca.dynamic(u, "f-ancora")
            baca.snap_pizzicato(u)
    with baca.scope(m.get(3, 4)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.leaves(o)[1:8]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E4")
        baca.snap_pizzicato(o.pheads())
    with baca.scope(m.get(4, 5)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.leaves(o)[6:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.pleaf(0))
        baca.stem_tremolo(o.pleaf(0))
        baca.hairpin(
            o.leaves()[:2],
            "mp >o niente",
            left_broken=True,
        )
        baca.hairpin(
            o.leaves(grace=False)[2:],
            "mf >o niente",
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o.plts()[:1], "Bb3")
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitch(u, "Db3")
        with baca.scope(o.plts(grace=True)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_d_flat_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "D3")
        baca.hairpin(o.rleaves(), "(mp) >o niente")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.pleaf(0))
        baca.stem_tremolo(o.pleaf(0))
        baca.hairpin(o.leaves()[:2], "mp >o niente", left_broken=True)
        baca.hairpin(o.leaves(grace=False)[2:], "mf >o niente")
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o.plts()[:1], "Aqf3")
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitch(u, "C3")
        with baca.scope(o.plts(grace=True)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_c_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.pitch(u, "D2")
            baca.hairpin(u, "(mp) >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(baca.select.lleak(o.leaves()), "Aqf3")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.phead(0))
        with baca.scope(o.plts()[:1]) as u:
            baca.pitch(u, "F3"),
            baca.stem_tremolo(u)
        baca.pitch(o.plts()[1:], "C3")
        baca.hairpin(
            baca.select.rleak(o.plts()[:1]),
            "mp >o niente",
            left_broken=True,
        )
        baca.dynamic(o.pleaf(-1), "mp")
        baca.damp_spanner(
            baca.select.rleak(o.plts()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[4]) as o:
        baca.repeat_tie(o.leaf(0))
        baca.hairpin(
            o.leaves()[:-1],
            "(mp) >o niente",
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.pitch(o.plts()[:1], "C3")
        baca.pitch(o.plts()[1:], "F3")
        baca.damp_spanner(
            baca.select.rleak(o.plts()[:1]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.pleaf(0))
        baca.stem_tremolo(o.pleaf(0))
        baca.hairpin(
            o.leaves()[:2],
            "mp >o niente",
            left_broken=True,
        )
        baca.hairpin(o.leaves(grace=False)[2:], "mf >o niente")
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o.plts()[:1], "Dtqf3", allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 3)) as o:
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitch(u, "B2")
        with baca.scope(o.plts(grace=True)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_b_2(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.pitch(u, "D2", allow_obgc_mutation=True)
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.hairpin(u, "(mp) >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(baca.select.lleak(o.leaves()), "Dtqf2")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie(o.phead(0))
        with baca.scope(o.plts()[:1]) as u:
            baca.pitch(u, "Eb2")
            baca.stem_tremolo(u)
        baca.pitch(o.plts()[1:], "B2")
        baca.hairpin(
            baca.select.rleak(o.plts()[:1]),
            "mp >o niente",
            left_broken=True,
        )
        baca.dynamic(o.pleaf(-1), "mp")
        baca.damp_spanner(
            baca.select.rleak(o.plts()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[4]) as o:
        baca.repeat_tie(o.leaf(0))
        baca.hairpin(
            o.leaves()[:-1],
            "(mp) >o niente",
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.pitch(o.plts()[:1], "B2")
        baca.pitch(o.plts()[1:], "Eb2")
        baca.damp_spanner(
            baca.select.rleak(o.plts()[:1]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            with baca.scope(o.phead(-1)) as u:
                baca.accent(u)
                baca.stem_tremolo(u)
                baca.dynamic(u, "p"),
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 5)) as o:
            baca.metric_modulation_spanner(
                baca.select.rleak(o.leaves()[-4:]),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, time_signatures = make_empty_score()
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
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
    baca.section.reapply(
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
    perc1(cache)
    perc2(cache)
    perc1_perc2(cache)
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    composites(cache)
    return score


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        always_make_global_rests=True,
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


if __name__ == "__main__":
    main()
