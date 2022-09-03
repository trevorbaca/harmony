import abjad
import baca

from harmony import library

#########################################################################################
######################################### 13 [M] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (5, 4),
            (1, 4),
            (6, 4),
            (6, 4),
            (3, 4),
            (1, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[M.1]", 1),
        ("[M.2]", 3),
        ("[<J.6]", 4, "#darkgreen"),
        ("[<L.4]", 5, "#darkgreen"),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "2.=4"),
        (5 - 1, "96"),
        (5 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    for index, string in (
        (2 - 1, "fermata"),
        (6 - 1, "short"),
    ):
        baca.global_fermata_function(rests[index], string)
    wrappers = baca.markup_function(
        skips[2 - 1],
        r"\harmony-text-twelve",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup_function(
        skips[6 - 1],
        r"\harmony-text-thirteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4),
        counts=[9],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4, 8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        divisions=[20, 8],
        counts=[0, 3],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        divisions=[20, 8],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [20, "-", 1, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 4, 8, -4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 4),
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 12, 4],
        counts=[0, 7, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(4, 5))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [7, -1, 12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [7, -1, 12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[1]) as o:
        # TODO: promote into music = library.make_sixteenths():
        baca.repeat_tie_function(o.pleaf(-1))
        baca.pitch_function(o, "B4")
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o<| f |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        )
        baca.metric_modulation_spanner_function(
            o.leaves()[:3],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        baca.pitch_function(o, "B4")
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o<| f |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.pitches_function(o.leaves(grace=False), "A3")
        baca.pitches_function(
            o.leaves(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.dynamic_function(o.pleaf(0, grace=False), "p")
        baca.text_spanner_function(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[5]) as o:
        baca.pitch_function(o, "Dtqf5")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.breathe_function(o.pleaf(1))
        baca.hairpin_function(
            o.rleaves(),
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        for clpart in baca.select.clparts(o, [2]):
            clpart = baca.select.rleaves(clpart)
            baca.text_spanner_function(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        baca.staff_position_function(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_position_function(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic_function(o.rest(0), "p")
        baca.dynamic_function(o.rest(1), "f")
        baca.markup_function(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic_function(o.rest(-1), "p")
        baca.staff_position_function(o, 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.triangle_staff_position_function(o)
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        library.bass_drum_staff_position_function(o)
        for run in baca.select.runs(o):
            baca.hairpin_function(run, "o<| f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding_function(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        baca.staff_position_function(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_position_function(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic_function(o.rest(0), "p")
        baca.dynamic_function(o.rest(1), "f")
        baca.markup_function(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic_function(o.rest(-1), "p")
        baca.staff_position_function(o, 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        baca.dynamic_function(
            o.pleaf(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        with baca.scope(o.plt(0)) as u:
            library.bass_drum_staff_position_function(u)
            baca.flat_glissando_function(u)
        baca.stem_tremolo_function(baca.select.plt(o, 0))
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position_function(u)
            baca.dynamic_function(u, "f")
            baca.markup_function(
                u,
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 0.5"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m[5]) as o:
        library.brake_drum_staff_position_function(o)
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding_function(o, 6)
        baca.metric_modulation_spanner_function(
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
            baca.dots_extra_offset_function(rests, (1, 0))
            baca.dots_x_extent_false_function(rests)
            baca.rest_x_extent_zero_function(rests)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "<B2 C3 Db3>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitches_function(o.plts()[:-1], "Bb5 A5 G#5")
        baca.flageolet_function(o.pheads())
        baca.laissez_vibrer_function(o.ptails()[:-1])
        baca.dynamic_function(o.phead(0), "f")
        with baca.scope(o.phead(-1)) as u:
            baca.pitch_function(u, "E4")
            baca.dynamic_function(u, "f-ancora")
            baca.snap_pizzicato_function(u)
    with baca.scope(m.get(3, 4)) as o:
        baca.metric_modulation_spanner_function(
            baca.select.rleak(baca.select.leaves(o)[1:8]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch_function(o, "E4")
        baca.snap_pizzicato_function(o.pheads())
    with baca.scope(m.get(4, 5)) as o:
        baca.metric_modulation_spanner_function(
            baca.select.rleak(baca.select.leaves(o)[6:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding_function(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie_function(o.pleaf(0))
        baca.stem_tremolo_function(o.pleaf(0))
        baca.hairpin_function(
            o.leaves()[:2],
            "mp >o niente",
            left_broken=True,
        )
        baca.hairpin_function(
            o.leaves(grace=False)[2:],
            "mf >o niente",
        )
    with baca.scope(m[3]) as o:
        baca.dynamic_function(o.phead(0), "mp")
        baca.markup_function(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch_function(o.plts()[:1], "Bb3")
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.note_head_style_harmonic_black_function(u)
            baca.pitch_function(u, "Db3")
        with baca.scope(o.plts(grace=True)) as u:
            baca.note_head_style_harmonic_black_function(u)
            baca.pitches_function(
                u,
                library.appoggiato_pitches_d_flat_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch_function(o, "D3")
        baca.hairpin_function(o.rleaves(), "(mp) >o niente")
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie_function(o.pleaf(0))
        baca.stem_tremolo_function(o.pleaf(0))
        baca.hairpin_function(o.leaves()[:2], "mp >o niente", left_broken=True)
        baca.hairpin_function(o.leaves(grace=False)[2:], "mf >o niente")
    with baca.scope(m[3]) as o:
        baca.dynamic_function(o.phead(0), "mp")
        baca.markup_function(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch_function(o.plts()[:1], "Aqf3")
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.note_head_style_harmonic_black_function(u)
            baca.pitch_function(u, "C3")
        with baca.scope(o.plts(grace=True)) as u:
            baca.note_head_style_harmonic_black_function(u)
            baca.pitches_function(
                u,
                library.appoggiato_pitches_c_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.pitch_function(u, "D2")
            baca.hairpin_function(u, "(mp) >o niente")
        baca.scp_spanner_function(
            o.leaves(),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch_function(baca.select.lleak(o.leaves()), "Aqf3")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie_function(o.phead(0))
        with baca.scope(o.plts()[:1]) as u:
            baca.pitch_function(u, "F3"),
            baca.stem_tremolo_function(u)
        baca.pitch_function(o.plts()[1:], "C3")
        baca.hairpin_function(
            baca.select.rleak(o.plts()[:1]),
            "mp >o niente",
            left_broken=True,
        )
        baca.dynamic_function(o.pleaf(-1), "mp")
        baca.damp_spanner_function(
            baca.select.rleak(o.plts()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic_function(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[4]) as o:
        baca.repeat_tie_function(o.leaf(0))
        baca.hairpin_function(
            o.leaves()[:-1],
            "(mp) >o niente",
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.pitch_function(o.plts()[:1], "C3")
        baca.pitch_function(o.plts()[1:], "F3")
        baca.damp_spanner_function(
            baca.select.rleak(o.plts()[:1]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie_function(o.pleaf(0))
        baca.stem_tremolo_function(o.pleaf(0))
        baca.hairpin_function(
            o.leaves()[:2],
            "mp >o niente",
            left_broken=True,
        )
        baca.hairpin_function(o.leaves(grace=False)[2:], "mf >o niente")
    with baca.scope(m[3]) as o:
        baca.dynamic_function(o.phead(0), "mp")
        baca.markup_function(
            o.pleaf(0),
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch_function(o.plts()[:1], "Dtqf3", allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 3)) as o:
        with baca.scope(o.plts(grace=False)[1:]) as u:
            baca.note_head_style_harmonic_black_function(u)
            baca.pitch_function(u, "B2")
        with baca.scope(o.plts(grace=True)) as u:
            baca.note_head_style_harmonic_black_function(u)
            baca.pitches_function(
                u,
                library.appoggiato_pitches_b_2(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.pitch_function(u, "D2", allow_obgc_mutation=True)
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[4]) as o:
        with baca.scope(o.plt(0)) as u:
            baca.hairpin_function(u, "(mp) >o niente")
        baca.scp_spanner_function(
            o.leaves(),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch_function(baca.select.lleak(o.leaves()), "Dtqf2")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.repeat_tie_function(o.phead(0))
        with baca.scope(o.plts()[:1]) as u:
            baca.pitch_function(u, "Eb2")
            baca.stem_tremolo_function(u)
        baca.pitch_function(o.plts()[1:], "B2")
        baca.hairpin_function(
            baca.select.rleak(o.plts()[:1]),
            "mp >o niente",
            left_broken=True,
        )
        baca.dynamic_function(o.pleaf(-1), "mp")
        baca.damp_spanner_function(
            baca.select.rleak(o.plts()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic_function(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[4]) as o:
        baca.repeat_tie_function(o.leaf(0))
        baca.hairpin_function(
            o.leaves()[:-1],
            "(mp) >o niente",
        )
    with baca.scope(m.get(3, 5)) as o:
        baca.pitch_function(o.plts()[:1], "B2")
        baca.pitch_function(o.plts()[1:], "Eb2")
        baca.damp_spanner_function(
            baca.select.rleak(o.plts()[:1]),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            with baca.scope(o.phead(-1)) as u:
                baca.accent_function(u)
                baca.stem_tremolo_function(u)
                baca.dynamic_function(u, "p"),
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            baca.stem_tremolo_function(o.pleaves())
            baca.accent_function(o.pheads())
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 5)) as o:
            baca.metric_modulation_spanner_function(
                baca.select.rleak(o.leaves()[-4:]),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
            baca.dls_staff_padding_function(o, 4)


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
    return score, accumulator


def main():
    previous_metadata = baca.previous_metadata(__file__)
    first_measure_number = previous_metadata["final_measure_number"] + 1
    previous_persist = baca.previous_persist(__file__)
    score, accumulator = make_score(
        first_measure_number, previous_persist["persistent_indicators"]
    )
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
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
        first_measure_number=first_measure_number,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)


if __name__ == "__main__":
    main()
