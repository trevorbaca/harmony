import abjad
import baca

from harmony import library

#########################################################################################
########################################### 19 ##########################################
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
        ("[S.1]", 1),
        ("[<R.1]", 2, "#darkgreen"),
        ("[S.2-3]", 4),
        ("[>T.1]", 11, "#darkgreen"),
        ("[S.4]", 12),
        ("[>T.1]", 13, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "4:3(4)=4"),
        (2 - 1, "72"),
        (2 - 1, "3:4(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "4:3(4)=4"),
        (11 - 1, "144"),
        (11 - 1, "3:2(4)=4"),
        (12 - 1, "96"),
        (12 - 1, "4.=4"),
        (13 - 1, "144"),
        (13 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.open_volta(skips[1 - 1], first_measure_number)
    baca.close_volta(skips[2 - 1], first_measure_number)
    for index, string in (
        (3 - 1, "fermata"),
        (10 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-eighteen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[10 - 1],
        r"\harmony-text-nineteen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    library.make_warble_rhythm(
        voice,
        time_signatures(1),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[1],
    )
    mmrests(voice, time_signatures(2, 8))
    rhythm(
        voice,
        [T([4, 4, 4], -4), T([-4, 4, 4], -4)],
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10), head=True)
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    library.make_warble_rhythm(
        voice,
        time_signatures(12),
        extra_counts=[2],
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [-4, -1, OBGC(5 * [2], [-3, -8])],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [4, 2, "-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-1, OBGC(5 * [2], [-3, -16])],
        time_signatures(4),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(6 * [2], [-15])],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(7 * [2], [-3, -16])],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(8 * [2], [-15])],
        time_signatures(7),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(9 * [2], [-3, -16])],
        time_signatures(8),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        OBGC(19 * [2], [-16]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
    )
    rhythm(
        voice,
        OBGC(25 * [2], [-16, -4]),
        time_signatures(12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, -1, OBGC(4 * [2], [-3, -8])],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [4, 2, "-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-1, OBGC(4 * [2], [-3, -16])],
        time_signatures(4),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(5 * [2], [-15])],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(6 * [2], [-3, -16])],
        time_signatures(6),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(7 * [2], [-15])],
        time_signatures(7),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(8 * [2], [-3, -16])],
        time_signatures(8),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        OBGC(18 * [2], [-16]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    rhythm(
        voice,
        OBGC(24 * [2], [-16, -4]),
        time_signatures(12),
    )
    rhythm(
        voice,
        [-6, T([8], 2)],
        time_signatures(13),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    rhythm(
        voice,
        [-4, 2, "-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [2, -20, 2, -24],
        time_signatures(11),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(12),
    )
    rhythm(
        voice,
        [2, -20, 2, -24],
        time_signatures(13),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + [-4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, T([-4] + 3 * [w(2, 4), h(w(2, 4))], -4)],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    mmrests(voice, time_signatures(10))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
    )


def VC1(voice, time_signatures):
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + [-4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    mmrests(voice, time_signatures(10))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(12),
    )
    music = baca.make_notes(time_signatures(9))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + [-4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    mmrests(voice, time_signatures(10))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(11),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(12),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(13),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + [-4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, 6, 2, -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [3, -7, 3, -7, 3, -7, 3, -14],
        time_signatures(11),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(12),
    )
    rhythm(
        voice,
        [3, -7, 3, -7, 3, -7, 3, -14],
        time_signatures(13),
    )


def CB2(voice, time_signatures):
    rhythm(
        voice,
        T([-4, w(2, 4), h(w(2, 4)), w(2, 4), h(w(2, 4))], 4),
        time_signatures(1),
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 4, 2, 2, -4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(4),
    )
    music = baca.make_notes(time_signatures(5))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    music = baca.make_notes(time_signatures(9))
    voice.extend(music)
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [3, -5, 3, -5, 3, -5, 3, -23],
        time_signatures(11),
    )
    rhythm(
        voice,
        [T([3, -1, -8], -4), -4, T([3, -1, -8], -4)],
        time_signatures(12),
    )
    rhythm(
        voice,
        [3, -5, 3, -5, 3, -5, 3, -23],
        time_signatures(13),
    )
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -5),
        )
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
    with baca.scope(m[9]) as o:
        baca.pitch(o, "F3")
        baca.dynamic(o.phead(0), "mf")
        baca.spanners.covered(
            o,
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[12]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -5),
        )
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
            baca.hairpin(
                abjad.select.partition_by_ratio(u, (3, 4)),
                "o< mf>o!",
            )
            baca.spanners.trill(
                u,
                baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Eb3")
            baca.dynamic(o.phead(0), "pp")
            for run in baca.select.runs(o):
                run = baca.select.rleak(run)
                baca.spanners.covered(
                    run,
                    baca.tweak.staff_padding(5.5),
                    rleak=True,
                )
    with baca.scope(m.get(1, 13)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.override.dls_staff_padding(o.leaves(grace=False), 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.accent(o.phead(0))
        baca.laissez_vibrer(o.phead(1))
        baca.dynamic(o.phead(0), "mp")
        baca.hairpin(
            o.pleaves()[1:],
            "o<mf",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-then-superball-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 8)) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.dynamic(
            o.rest(1),
            "ff-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(1, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m.get(4, 9)) as o:
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.dynamic(o.rest(0), "ff")
        baca.override.dls_staff_padding(o.leaves(grace=False), 5)
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.staff_lines(o.leaf(0), 1)
            library.slate_staff_position(o)
            baca.dynamic(o.phead(0), "pp")
            baca.override.dls_staff_padding(o, 6)
            baca.markup(
                o.pleaf(0),
                r"\baca-boxed-slate-scrape-markup",
                baca.tweak.staff_padding(6),
            )


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions(o.pleaves()[:1], [0])
        library.purpleheart_staff_positions(
            o.pleaves()[1:], [2], allow_obgc_mutation=True
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(o.rest(1), "ff-ancora")
        baca.override.dls_staff_padding(o, 5)
        baca.spanners.metric_modulation(
            o.leaves()[:1],
            baca.tweak.staff_padding(10.5),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.damp(o.phead(0))
        baca.dynamic(o.phead(0), "p")
        baca.dynamic(o.phead(1), "f")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 8)) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.markup(
            o.leaf(1, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m.get(4, 9)) as o:
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 9)) as o:
        baca.dynamic(
            o.rest(1),
            "ff-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 5)
    with baca.scope(m[11]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[12]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.dynamic(o.rest(0), "ff")
        baca.override.dls_staff_padding(o.leaves(grace=False), 5)
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[13]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.override.tuplet_bracket_direction_up(o)
        library.bass_drum_staff_position(o)
        baca.accent(o.phead(0))
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-markup",
            baca.tweak.staff_padding(6),
        )
        baca.spanners.metric_modulation(
            o.leaves()[-1:],
            baca.tweak.staff_padding(10.5),
            right_broken=True,
            rleak=True,
        )


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        for item in [1, (4, 9), 12]:
            with baca.scope(m.get(item)) as o:
                rests = [
                    _
                    for _ in abjad.select.rests(o)
                    if abjad.get.duration(_) >= abjad.Duration((1, 2))
                ]
                for rest in rests:
                    baca.override.dots_extra_offset(rest, (1, 0))
                    baca.override.dots_x_extent_false(rest)
                    baca.override.rest_x_extent_zero(rest)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m[2]) as o:
        baca.pitch(o, "G4"),
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(4, 9)) as o:
        baca.pitch(o, "G6:A6:Bb6")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 9)) as o:
        baca.spanners.ottava(o.tleaves(), rleak=True)
        baca.override.ottava_bracket_staff_padding(o, 5.5)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.x_offset(3),
        )
    with baca.scope(m[12]) as o:
        baca.pitch(o, "G6:A6:Bb6")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.spanners.ottava(o.tleaves(), rleak=True)
        baca.override.ottava_bracket_staff_padding(o, 5.5)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.x_offset(4),
            baca.tweak.staff_padding(4),
        )
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "F#4")
            baca.laissez_vibrer(o.ptails())
            baca.dynamic(o.phead(0), "p")
            baca.override.dls_staff_padding(o, 4)
            baca.markup(
                o.pleaf(0),
                r"\baca-sons-xylophoniques-markup",
                baca.tweak.staff_padding(4),
            )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.tuplet_bracket_direction_up(o)
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.clparts(o.tleaves(), [1]),
            "o<| mp|>o !o<| mp|>o !o<| mp|>o!",
            rleak=True,
        )
    for item in [(1, 2), (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "G#5:A5:Bb5")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.markup(
                o.pleaf(0),
                r"\baca-string-i-markup",
                baca.tweak.padding(1),
            )
    with baca.scope(m[12]) as o:
        baca.clef(o.leaf(0), "treble")


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "D5")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.padding(1),
        )
    for item in [1, (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "G#5:A5:Bb5")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.markup(
                o.pleaf(0),
                r"\baca-string-i-markup",
                baca.tweak.padding(1),
            )
    with baca.scope(m[12]) as o:
        baca.clef(o.leaf(0), "treble")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    for item in [1, (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "A5:Bb5:Cb6")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.markup(
                o.pleaf(0),
                r"\baca-string-i-markup",
                baca.tweak.padding(1),
            )
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "Btqf4")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            baca.tweak.padding(1),
        )
    with baca.scope(m[12]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m[11]) as o:
        baca.override.rest_extra_offset(o.rest(-1), (-1.5, 0))
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.override.tuplet_bracket_staff_padding(o, 3)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    for item in [1, (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "B5:C6:Db6", do_not_transpose=True)
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
            baca.markup(
                o.pleaf(0),
                r"\baca-string-iii-markup",
                baca.tweak.padding(1),
            )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G3"),
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.padding(1),
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m[12]) as o:
        baca.clef(o.leaf(0), "treble")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_direction_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "E5", do_not_transpose=True)
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1, 1, 1, 1, 1, 2, 1]),
            "o<| mp|>o !o<| mp|>o !o<| mp|>o !o<| mp|>o!",
            rleak=True,
        )
        # TODO: text spanner currently must precede pitched trill spanner; fix
        baca.spanners.metric_modulation(
            o.leaves()[1:7],
            baca.tweak.staff_padding(8),
            rleak=True,
        )
        baca.spanners.trill(
            baca.select.tleaves(o),
            alteration="Fqs5",
            rleak=True,
        )
    with baca.scope(m.get(4, 9)) as o:
        baca.pitch(o, "A#5:B5:C6", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 9)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.padding(1),
        )
    with baca.scope(m.get(11, 13)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m.get(12, 13)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[4:],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [1, 1, 2, 1, 1]),
                "o<| mp|> pp pp<| mp|>o!",
                rleak=True,
            )
            baca.override.dynamic_text_x_offset(o.pleaf(1), -3)
            baca.override.dynamic_text_x_offset(o.pleaf(-1), -0.25)
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.glissando(o.pleaves())
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [2, 1]),
                "o< mp>o!",
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
        with baca.scope(m.get(1, 2)) as o:
            baca.override.dls_staff_padding(o, 4)
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 9)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.hairpin(
                o,
                "o<fff-scratch",
            )
            baca.override.dls_staff_padding(o, 4 + 2)
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[12]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.dynamic(
                o.phead(0),
                "fff-scratch",
                baca.tweak.self_alignment_x(-0.9),
            )
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[12]) as o:
            baca.staff_lines(o.leaf(0), 5)
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[11]) as o:
            baca.clef(o.leaf(0), "percussion")
            baca.staff_lines(o.leaf(0), 1)
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "pp")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[13]) as o:
            baca.clef(o.leaf(0), "percussion")
            baca.staff_lines(o.leaf(0), 1)
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "pp")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(11, 13)) as o:
            baca.override.dls_staff_padding(o, 6)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 4, 1, 5, 4, 5, 4, 5, 4, 1, 4, 5, 4]
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
    bfl(cache["bfl"])
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
        strict_overrides=(
            baca.layout.Override((4, 9), (1, 20)),
            baca.layout.Override([3, 10], (1, 288)),
        ),
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
