import abjad
import baca

from harmony import library

#########################################################################################
######################################### 12 [L] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (4, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[L.1]", 1),
        ("[>M.1]", 2, "#darkgreen"),
        ("[L.2-3]", 3),
        ("[<J.6]", 10, "#darkgreen"),
        ("[L.4-5]", 11),
        ("[L.6-8]", 13),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "3:2(4)=4"),
        (2 - 1, "144"),
        (2 - 1, "3:2(4)=4"),
        (3 - 1, "96"),
        (3 - 1, "4.=4"),
        (10 - 1, "48"),
        (10 - 1, "2=4"),
        (11 - 1, "96"),
        (11 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    baca.open_volta(skips[11 - 1], first_measure_number)
    baca.double_volta(skips[13 - 1], first_measure_number)
    baca.close_volta(skips[15 - 1], first_measure_number)
    for index, string in ((9 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[9 - 1],
        r"\harmony-text-eleven",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(8, 9), head=voice.name)
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        measures(10),
        counts=[9],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [4, 8, 4, 12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 14),
        [6, 6, 6, 6, 6, 10],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(15),
        [6, 8, 2, 2],
        extra_counts=[0, 0, 0, 2],
        denominator=None,
        written_quarters=[-2, -1],
        invisible=[-1],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        measures(2),
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9, 10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(14))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(15),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)


def PERC2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        measures(2),
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9))
    voice.extend(music)
    music = baca.make_notes(measures(10, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [6, -6, 6, -6, 6, -10],
    )
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9, 10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [6, -6, 6, -6, 6, -10],
    )
    voice.extend(music)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        measures(2, 4),
        divisions=[4, 48],
        counts=[7],
        rest_to=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_rimbalzandi_rhythm(
        measures(5, 8),
        rest_except=[1, 3, 6, 8, 11, 13, 14, 15],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [8, 3, 6],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        measures(2),
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_rimbalzandi_rhythm(
        measures(3, 8),
        extra_counts=[1],
        rest_except=[6, 7, 11, 14, 15, 19, 21, 22, 24, 25, 26],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [14, 8, 8],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-8, 12],
    )
    voice.extend(music)
    music = library.make_rimbalzandi_rhythm(
        measures(3, 8),
        extra_counts=[2],
        rest_except=[0, 6, 10, 11, 14, 16, 19, 21, 22, 23, 25, 27, 28, 29],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [8, 8, 14],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        measures(2),
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_rimbalzandi_rhythm(
        measures(3, 8),
        rest_except=[1, 6, 9, 11, 14, 16, 19, 21, 22, 24, 25, 26, 28, 30, 31, 32],
        extra_counts=[3],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [12, 7, 8],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-8, 12],
    )
    voice.extend(music)
    music = library.make_rimbalzandi_rhythm(
        measures(3, 8),
        rest_except=[1, 9, 16, 22, 27, 29, 31, 33, 34, 35],
        extra_counts=[4],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(10))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(11, 12),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(13, 15),
        [8, 7, 12],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    for n in [1, 3, 5, 7]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "<Eb3 Eb4 Bb4>")
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[1]) as o:
        baca.hairpin(
            o.rleaves(),
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        baca.metric_modulation_spanner(
            o.rleaves(),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        baca.hairpin(
            o.rleaves(),
            "o< mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            o.rleaves(),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
    with baca.scope(m[7]) as o:
        baca.hairpin(
            o.rleaves(),
            "o< pp >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
    with baca.scope(m[2]) as o:
        # TOOD: promote into music = library.make_sixteenths():
        baca.repeat_tie(o.pleaf(-1))
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o<| f |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        )
    with baca.scope(m[10]) as o:
        baca.pitches(o.leaves(grace=False), "A3")
        baca.pitches(
            o.leaves(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[10]) as o:
        baca.dynamic(o.pleaf(0, grace=False), "p")
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(11, 12)) as o:
        baca.breathe(abjad.select.get(o.pleaves(), [1, 3]))
        for clpart in baca.select.clparts(o, [2]):
            clpart = baca.select.rleak(clpart)
            baca.text_spanner(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )

    def selector(argument):
        result = baca.select.cmgroups(argument, [1])
        return [baca.select.pleaf(_, -1) for _ in result]

    with baca.scope(m.get(13, 14)) as o:
        baca.breathe(selector(o))
        for clpart in baca.select.clparts(o, [4]):
            clpart = baca.select.rleak(clpart)
            baca.text_spanner(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
            )
    with baca.scope(m[15]) as o:
        baca.stem_tremolo(o.pleaves()[-2:])
        baca.dynamic_text_x_offset(o.pleaf(-1), -0.75)
        baca.text_spanner(
            o.leaves()[:-1],
            "T -> A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [2, 4]),
        )
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[-2:]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            right_broken=True,
        )
    with baca.scope(m.get(11, 15)) as o:
        # baca.pitch(o.leaves()[-2:], "Dtqf5")
        baca.pitch(o.leaves()[:-2], "Dtqf5")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.pitch(o.leaves()[-2:], "B4")
        baca.hairpin(
            o.rleaves(),
            'o< "f" >o niente o< p >o niente'
            ' o< "f" >o niente o< p >o niente'
            ' o< "f" >o niente o< f >o niente',
            pieces=lambda _: baca.select.lparts(
                _, [1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 1, 2]
            ),
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.dynamic(o.pheads(), "mp")
    with baca.scope(m.get(5, 6)) as o:
        baca.dynamic(o.pheads(), "p")
    with baca.scope(m.get(7, 8)) as o:
        baca.dynamic(o.pheads(), "pp")
    with baca.scope(m.get(3, 8)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m.get(11, 12)) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[13]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    for n in [13, 15]:
        with baca.scope(m[n]) as o:
            library.bass_drum_staff_position(o)
            for run in baca.select.runs(o):
                baca.hairpin(run, "o<| f")
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "pp")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(3, 8)) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.tuplet_bracket_up(o)
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(10, 12)) as o:
        library.bass_drum_staff_position(o)
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pheads(), [0, -1]))
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(13, 15)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(3, 15)) as o:
        baca.dls_staff_padding(o, 6)


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
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
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(2, 4)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "<B2 C3 Db3>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 4)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o< mf >o",
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 4]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(5, 8)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[5]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[6]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[7]) as o:
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m[8]) as o:
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(11, 12)) as o:
        baca.pitch(o, "E4")
        baca.snap_pizzicato(o.pheads())
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m.get(1, 12)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(13, 15)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "A5"),
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(2, 4)) as o:
        baca.clef(o.leaf(0), "alto")
        baca.note_head_style_harmonic_black(o.leaves(grace=False))
        baca.pitch(o.leaves(grace=False), "Db3")
        baca.note_head_style_harmonic_black(o.leaves(grace=True))
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_d_flat_3(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 4)) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False, rleak=True),
            "mf >o niente",
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m.get(5, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "f >o niente",
        )
        baca.scp_spanner(
            o.tleaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D3")
        baca.hairpin(o, "p >o")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    for item in [(5, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Bb3")
    with baca.scope(m.get(5, 15)) as o:
        baca.dls_staff_padding(o, 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Gqs6")
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.note_head_style_harmonic_black(o.leaves(grace=False))
        baca.pitch(o.leaves(grace=False), "C3")
        baca.note_head_style_harmonic_black(o.leaves(grace=True))
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_c_3(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False, rleak=True),
            "mf >o niente",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "f >o niente",
        )
        baca.dls_staff_padding(o, 4 + 2)
        baca.scp_spanner(
            o.tleaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
        )
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(o, "p >o")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 4)
    for item in [(3, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Aqf3")
    with baca.scope(m.get(3, 8)) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-e-flat",
            abjad.Tweak(r"- \tweak extra-offset #'(-2 . 0)"),
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
        )
    with baca.scope(m.get(11, 15)) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-e-flat",
            abjad.Tweak(r"- \tweak X-offset 3"),
            abjad.Tweak(r"- \tweak padding 1"),
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F#5")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "C3")
        baca.clef(o.leaf(0), "bass")
        baca.dynamic(o.phead(0), "mp")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "f >o niente",
        )
        baca.scp_spanner(
            o.tleaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(o, "p >o")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    for item in [(3, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "F3")
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 4)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "C#6", do_not_transpose=True)
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.note_head_style_harmonic_black(o.leaves(grace=False))
        baca.pitch(o.leaves(grace=False), "B2")
        baca.note_head_style_harmonic_black(o.leaves(grace=True)),
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_b_2(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False, rleak=True),
            "mf >o niente",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "f >o niente",
        )
        baca.scp_spanner(
            o.tleaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(o, "p >o")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 4)
    for item in [(3, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Dtqf3")
    with baca.scope(m.get(3, 8)) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak extra-offset #'(-2 . 0)"),
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
        )
    with baca.scope(m.get(11, 15)) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak X-offset 3"),
            abjad.Tweak(r"- \tweak padding 1"),
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Cqf6", do_not_transpose=True)
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "mp")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "f >o niente",
        )
        baca.scp_spanner(
            o.tleaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(o, "p >o")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 4)
    for item in [(3, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Eb2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.note_head_style_harmonic(o.pleaves())
            baca.flat_glissando(o, left_broken=True)
            baca.hairpin(
                o.rleaves(),
                "mp >o niente",
                left_broken=True,
            )
            baca.trill_spanner(
                o.rleaves(),
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                left_broken=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(3, 8)) as o:
            baca.triple_staccato(o.pheads())
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(11, 12)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "p")
            if name in ("va", "vc1", "vc2"):
                baca.scp_spanner(
                    baca.select.rleak(baca.select.ltleaves(o)),
                    "T4 -> O",
                    abjad.Tweak(r"- \tweak staff-padding 5.5"),
                    autodetect_right_padding=False,
                    bookend=True,
                )
            elif name in ("cb1", "cb2"):
                baca.scp_spanner(
                    baca.select.rleak(baca.select.ltleaves(o)),
                    "(T4) -> O",
                    abjad.Tweak(r"- \tweak staff-padding 5.5"),
                    autodetect_right_padding=False,
                    bookend=True,
                )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(13, 15)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.pheads()[1:-1], "sffp")
            baca.hairpin(
                baca.select.rleak(o.plts()[-1:]),
                "sffp >o niente",
                right_broken=True,
            )
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(13, 15)) as o:
            baca.tuplet_bracket_up(o)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, measures = make_empty_score()
    baca.section.set_up_score(
        score,
        measures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"], first_measure_number)
    BFL(voices("bfl"), measures)
    PERC1(voices("perc1"), measures)
    PERC2(voices("perc2"), measures)
    HP(voices("hp"), measures)
    VA(voices("va"), measures)
    VC1(voices("vc1"), measures)
    VC2(voices("vc2"), measures)
    CB1(voices("cb1"), measures)
    CB2(voices("cb2"), measures)
    baca.section.reapply(
        voices,
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.section.cache_leaves(
        score,
        len(measures()),
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
        **baca.section.section_defaults(),
        always_make_global_rests=True,
        empty_fermata_measures=True,
        environment=environment,
        global_rests_in_topmost_staff=True,
        manifests=library.manifests,
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
