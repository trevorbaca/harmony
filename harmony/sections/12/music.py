import abjad
import baca
from abjadext import rmakers

from harmony import library

#########################################################################################
########################################### 12 ##########################################
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
        baca.metronome_mark(skip, item, manifests=library.manifests)
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
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [w(6, 12), h(w(6, 12))],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), rt(4), -12],
        time_signatures(2),
    )
    rhythm(
        voice,
        [w(6, 12), h(w(6, 12))],
        time_signatures(3),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(4), head=True)
    rhythm(
        voice,
        [w(6, 12), h(w(6, 12))],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(6), head=True)
    rhythm(
        voice,
        [w(6, 12), h(w(6, 12))],
        time_signatures(7),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(8, 9), head=True)
    rhythm(
        voice,
        [-1, OBGC(9 * [2], [23])],
        time_signatures(10),
    )
    rhythm(
        voice,
        [4, 8, 4, 12],
        time_signatures(11, 12),
    )
    rhythm(
        voice,
        [6, 6, 6, 6, 6, 10],
        time_signatures(13, 14),
    )
    rhythm(
        voice,
        [4, rt(2), 2, rt(4), T([rt(2), w(2, 4), h(w(2, 4))], -2)],
        time_signatures(15),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [OBGC(5 * [2], [-6]), OBGC(4 * [2], [-14])],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(3),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(5),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(7),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9, 10))
    rhythm(
        voice,
        7 * [2, -2],
        time_signatures(11, 12),
    )
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), "-"],
        time_signatures(13),
    )
    mmrests(voice, time_signatures(14))
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), "-"],
        time_signatures(15),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [OBGC(4 * [2], [-6]), OBGC(5 * [2], [-14])],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(3),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(5),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(7),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    music = baca.make_notes(time_signatures(10, 12))
    voice.extend(music)
    rhythm(
        voice,
        [6, -6, 6, -6, 6, -10],
        time_signatures(13, 15),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, 4, "+"],
        time_signatures(2),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(3),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(5),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    rhythm(
        voice,
        ["+"],
        time_signatures(7),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9, 10))
    rhythm(
        voice,
        7 * [2, -2],
        time_signatures(11, 12),
    )
    rhythm(
        voice,
        [6, -6, 6, -6, 6, -10],
        time_signatures(13, 15),
    )


def rimbalzandi(voice, time_signatures, rest_except, *, extra_counts=()):
    tag = abjad.Tag("rimbalzandi()")
    durations = [_.duration for _ in time_signatures]
    lists = abjad.sequence.partition_by_counts(
        durations, [2], cyclic=True, overhang=True
    )
    durations = [sum(_) for _ in lists]
    tuplets = rmakers.even_division(durations, [4], extra_counts=extra_counts, tag=tag)
    voice_ = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
    rmakers.trivialize(voice_)
    rmakers.rewrite_dots(voice_, tag=tag)
    if rest_except is not None:
        leaves = abjad.select.leaves(voice_)
        leaves = abjad.select.exclude(leaves, rest_except)
        rmakers.force_rest(leaves, tag=tag)
    rmakers.force_diminution(voice_)
    rmakers.force_fraction(voice_)
    rmakers.extract_trivial(voice_)
    music = abjad.mutate.eject_contents(voice_)
    voice.extend(music)
    return music


def VA(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, OBGC(7 * [2], [16]), rt(32)],
        time_signatures(2, 4),
    )
    rimbalzandi(
        voice,
        time_signatures(5, 8),
        [1, 3, 6, 8, 11, 13, 14, 15],
    )
    mmrests(voice, time_signatures(9), head=True)
    music = baca.make_notes(time_signatures(10))
    voice.extend(music)
    rhythm(
        voice,
        7 * [4],
        time_signatures(11, 12),
    )
    rhythm(
        voice,
        abjad.sequence.repeat_to_weight([8, 3, 6], 40),
        time_signatures(13, 15),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, OBGC(6 * [2], [12]), -4],
        time_signatures(2),
    )
    rimbalzandi(
        voice,
        time_signatures(3, 8),
        [6, 7, 11, 14, 15, 19, 21, 22, 24, 25, 26],
        extra_counts=[1],
    )
    mmrests(voice, time_signatures(9), head=True)
    music = baca.make_notes(time_signatures(10))
    voice.extend(music)
    rhythm(
        voice,
        7 * [4],
        time_signatures(11, 12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13, 15),
        [14, 8, 8],
        extra_counts=[2],
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, 12],
        time_signatures(2),
    )
    rimbalzandi(
        voice,
        time_signatures(3, 8),
        [0, 6, 10, 11, 14, 16, 19, 21, 22, 23, 25, 27, 28, 29],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(9), head=True)
    music = baca.make_notes(time_signatures(10))
    voice.extend(music)
    rhythm(
        voice,
        7 * [4],
        time_signatures(11, 12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13, 15),
        [8, 8, 14],
        extra_counts=[2],
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, OBGC(6 * [2], [12]), -4],
        time_signatures(2),
    )
    rimbalzandi(
        voice,
        time_signatures(3, 8),
        [1, 6, 9, 11, 14, 16, 19, 21, 22, 24, 25, 26, 28, 30, 31, 32],
        extra_counts=[3],
    )
    mmrests(voice, time_signatures(9), head=True)
    music = baca.make_notes(time_signatures(10))
    voice.extend(music)
    rhythm(
        voice,
        7 * [4],
        time_signatures(11, 12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13, 15),
        [12, 7, 8],
        extra_counts=[1],
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        ["+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, 12],
        time_signatures(2),
    )
    rimbalzandi(
        voice,
        time_signatures(3, 8),
        [1, 9, 16, 22, 27, 29, 31, 33, 34, 35],
        extra_counts=[4],
    )
    mmrests(voice, time_signatures(9), head=True)
    music = baca.make_notes(time_signatures(10))
    voice.extend(music)
    rhythm(
        voice,
        7 * [4],
        time_signatures(11, 12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13, 15),
        [8, 7, 12],
        extra_counts=[1],
    )
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    for n in [1, 3, 5, 7]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Eb3:Eb4:Bb4")
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[1]) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mf>o!",
            rleak=True,
        )
        baca.rspanners.metric_modulation(
            o,
            left_broken=True,
            staff_padding=8,
        )
    with baca.scope(m[3]) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mp>o!",
            rleak=True,
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< p>o!",
            rleak=True,
        )
    with baca.scope(m[7]) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< pp>o!",
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 2]),
            "o<| f|>o!",
            rleak=True,
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
        baca.mspanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak direction #down"),
            direction=abjad.DOWN,
            staff_padding=8,
        )
    with baca.scope(m.get(11, 12)) as o:
        baca.breathe(abjad.select.get(o.pleaves(), [1, 3]))
        for clpart in baca.select.clparts(o, [2]):
            baca.mspanners.text(
                baca.select.lparts(clpart, [1, 1]),
                "T -> A =|",
                do_not_bookend=True,
                staff_padding=5.5,
            )
    with baca.scope(m.get(13, 14)) as o:
        cmgroups = baca.select.cmgroups(o, [1])
        pleaves = [baca.select.pleaf(_, -1) for _ in cmgroups]
        baca.breathe(pleaves)
        for clpart in baca.select.clparts(o, [4]):
            baca.mspanners.text(
                baca.select.lparts(clpart, [2, 2]),
                "T -> A =|",
                do_not_bookend=True,
                staff_padding=5.5,
            )
    with baca.scope(m[15]) as o:
        baca.stem_tremolo(o.pleaves()[-2:])
        baca.override.dynamic_text_x_offset(o.pleaf(-1), -0.75)
        baca.mspanners.text(
            baca.select.lparts(o[:-1], [2, 3]),
            "T -> A =|",
            do_not_bookend=True,
            staff_padding=5.5,
        )
        baca.rspanners.metric_modulation(
            o.leaves()[-2:],
            right_broken=True,
            staff_padding=8,
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
            baca.select.lparts(o, [1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 1, 1]),
            'o< "f">o !o< p>o !o< "f">o !o< p>o !o< "f">o !o< f>o!',
            rleak=True,
        )
    with baca.scope(m.get(1, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
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
            r"\baca-boxed-purpleheart-markup",
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
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
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
            r"\baca-boxed-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[13]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    for n in [13, 15]:
        with baca.scope(m[n]) as o:
            library.bass_drum_staff_position(o)
            for run in baca.select.runs(o):
                baca.hairpin(
                    run,
                    "o<|f",
                )
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "pp")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
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
            r"\baca-boxed-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(3, 8)) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.override.tuplet_bracket_direction_up(o)
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(10, 12)) as o:
        library.bass_drum_staff_position(o)
        baca.glissando(o, hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pheads(), [0, -1]))
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(13, 15)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(3, 15)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            rests = abjad.select.rests(o)
            rests = [
                _ for _ in rests if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ]
            baca.override.dots_extra_offset(rests, (1, 0))
            baca.override.dots_x_extent_false(rests)
            baca.override.rest_x_extent_zero(rests)


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
        baca.pitch(o, "B2:C3:Db3")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 4)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 3]),
            "o< mf>o",
            rleak=True,
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
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(13, 15)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.dynamic(o.phead(0), '"f"')
        baca.override.dls_staff_padding(o, 6)
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
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(2, 4)) as o:
        baca.clef(o.leaf(0), "alto")
        baca.override.note_head_style_harmonic_black(o.leaves(grace=False))
        baca.pitch(o.leaves(grace=False), "Db3")
        baca.override.note_head_style_harmonic_black(o.leaves(grace=True))
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_d_flat_3(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 4)) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False),
            "mf>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m.get(5, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o),
            "f>o!",
            rleak=True,
        )
        baca.mspanners.scp(
            [o.tleaves()],
            "P4 -> T4",
            do_not_rleak=True,
            staff_padding=3,
        )
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D3")
        baca.hairpin(
            o,
            "p>o",
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T1 =|",
            staff_padding=5.5,
        )
    for item in [(5, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Bb3")
    with baca.scope(m.get(5, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Gqs6")
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.override.note_head_style_harmonic_black(o.leaves(grace=False))
        baca.pitch(o.leaves(grace=False), "C3")
        baca.override.note_head_style_harmonic_black(o.leaves(grace=True))
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_c_3(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False),
            "mf>o!",
            rleak=True,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            baca.select.tleaves(o),
            "f>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.mspanners.scp(
            [o.tleaves()],
            "P4 -> T4",
            do_not_rleak=True,
            staff_padding=5.5,
        )
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(
            o,
            "p>o",
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T1 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 4)
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
        baca.spanners.damp(
            baca.select.tleaves(o),
            rleak=True,
            staff_padding=3,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            o.tleaves(),
            "f>o!",
            rleak=True,
        )
        baca.mspanners.scp(
            [o.tleaves()],
            "P4 -> T4",
            do_not_rleak=True,
            staff_padding=3,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(
            o,
            "p>o",
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T1 =|",
            staff_padding=5.5,
        )
    for item in [(3, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "F3")
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 4)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "C#6", do_not_transpose=True)
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.override.note_head_style_harmonic_black(o.leaves(grace=False))
        baca.pitch(o.leaves(grace=False), "B2")
        baca.override.note_head_style_harmonic_black(o.leaves(grace=True)),
        baca.pitches(
            o.leaves(grace=True),
            library.appoggiato_pitches_b_2(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False),
            "mf>o!",
            rleak=True,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            o.tleaves(),
            "f>o!",
            rleak=True,
        )
        baca.mspanners.scp(
            [o.tleaves()],
            "P4 -> T4",
            do_not_rleak=True,
            staff_padding=5.5,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(
            o,
            "p>o",
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T4 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 4)
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
        baca.spanners.damp(
            baca.select.tleaves(o),
            rleak=True,
            staff_padding=3,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.hairpin(
            o.tleaves(),
            "f>o!",
            rleak=True,
        )
        baca.mspanners.scp(
            [o.tleaves()],
            "P4 -> T4",
            do_not_rleak=True,
            staff_padding=3,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "D2")
        baca.hairpin(
            o,
            "p>o",
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T4 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.override.dls_staff_padding(o, 4)
    for item in [(3, 8), (11, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Eb2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.glissando(o, left_broken=True)
            baca.hairpin(
                o,
                ">o!",
                left_broken=True,
                rleak=True,
            )
            baca.spanners.trill(
                o,
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                left_broken=True,
                rleak=True,
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
                baca.mspanners.scp(
                    [baca.select.ltleaves(o)],
                    "T4 -> O",
                    staff_padding=5.5,
                )
            elif name in ("cb1", "cb2"):
                baca.mspanners.scp(
                    [baca.select.ltleaves(o)],
                    "(T4) -> O",
                    staff_padding=5.5,
                )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(13, 15)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.pheads()[1:-1], "sffp")
            baca.hairpin(
                o.plts()[-1:],
                "sffp>o!",
                right_broken=True,
                rleak=True,
            )
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(13, 15)) as o:
            baca.override.tuplet_bracket_direction_up(o)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [3, 5, 3, 5, 3, 5, 3, 5, 1, 6, 3, 4, 3, 3, 4]
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


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
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
            baca.system(measure=10, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([9], (1, 288)),),
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
