import abjad
import baca
import rmakers

from harmony import library

#########################################################################################
########################################### 14 ##########################################
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
        ("[N.1-2]", 1),
        ("[>O.1]", 4, "#darkgreen"),
        ("[<M.1]", 5, "#darkgreen"),
        ("[N.3-6]", 6),
        ("[>P.1]", 11, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "57 3/5"),
        (1 - 1, "3:5(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "5:3(4)=4"),
        (5 - 1, "144"),
        (5 - 1, "3:2(4)=4"),
        (6 - 1, "57 3/5"),
        (6 - 1, "4:5(2)=4"),
        (11 - 1, "96"),
        (11 - 1, "5:3(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (3 - 1, "fermata"),
        (10 - 1, "short"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-fourteen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[10 - 1],
        r"\harmony-text-fifteen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


cerulean_counts = [1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"]


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    library.make_warble_rhythm(
        voice,
        time_signatures(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[0],
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        [-1, 3, 4, -4, 4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), rt(4), -12],
        time_signatures(5),
    )
    library.make_warble_rhythm(
        voice,
        time_signatures(6),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[1],
    )
    mmrests(voice, time_signatures(7, 8))
    library.make_warble_rhythm(
        voice,
        time_signatures(9),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[0],
    )
    mmrests(voice, time_signatures(10), head=True)
    rhythm(
        voice,
        [3, -1, 8],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [2, "-", 2],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-1, 3, 4, -4, 4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [OBGC(5 * [2], [-6]), OBGC(4 * [2], [-14])],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [2, "-"],
        time_signatures(6),
    )
    mmrests(voice, time_signatures(7, 8))
    rhythm(
        voice,
        ["-", 2],
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [41, -7, "+"],
        time_signatures(11),
    )


def PERC2(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1, 2),
        [-22, 1, -3, 1, "-"],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(3, 4))
    rhythm(
        voice,
        [OBGC(4 * [2], [-6]), OBGC(5 * [2], [-14])],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(6, 9),
        cerulean_counts,
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [21, -14, 18, "-"],
        time_signatures(11),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        [22, "-"],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(4),
        ["-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [-4, 4, 8, -4],
        time_signatures(5),
    )
    rhythm(
        voice,
        [54, "-"],
        time_signatures(6, 9),
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [21, -14, 18, "-"],
        time_signatures(11),
    )


def VA(voice, time_signatures):
    components = rhythm(
        voice,
        [-8, AG([2], 4), "-"],
        time_signatures(1, 2),
    )
    rmakers.untie(components)
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-8, T([-4, 4, 4], -4)],
        time_signatures(4),
    )
    rhythm(
        voice,
        [4, OBGC(6 * [2], [12]), -4],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    components = rhythm(
        voice,
        [AG([2], 16), -12, AG([2], 4), -16, AG([2], 4), -8, AG([2], 4)],
        time_signatures(6, 9),
    )
    rmakers.untie(components)
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [2, 1, -1, 4, 2, 1, -1],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1, 2),
        [-16, 1, -16, 1, -6],
        extra_counts=[1],
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [3, -1, -4, 7, -1],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-4, OBGC(6 * [2], [12]), -4],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(6, 8),
        cerulean_counts,
        extra_counts=[1],
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(9),
        [-4, 3, -1, 3, -1, -8, 3, -1],
        extra_counts=[0, 8],
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [3, -1, 7, -1],
        time_signatures(11),
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [-9, 1, -11, 1, -3, 1, "-"],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [3, -1, -4, 7, -1],
        time_signatures(4),
    )
    rhythm(
        voice,
        T([-8, 2, -6], 4),
        time_signatures(5),
    )
    rhythm(
        voice,
        abjad.sequence.truncate(cerulean_counts, weight=64),
        time_signatures(6, 9),
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [3, -1, 7, -1],
        time_signatures(11),
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [-8, AG([2], 4), "-"],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [3, -1, -4, 7, -1],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-4, OBGC(6 * [2], [12]), -4],
        time_signatures(5),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [AG([2], 16), -8, AG([2], 4), -16, AG([2], 4), -12, AG([2], 4)],
        time_signatures(6, 9),
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [2, 1, -1, 4, 2, 1, -1],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [-8, AG([2], 4), "-"],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [3, -1, -4, 7, -1],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-8, 12],
        time_signatures(5),
    )
    rhythm(
        voice,
        [AG([2], 16), -12, AG([2], 4), -8, AG([2], 4), -16, AG([2], 4)],
        time_signatures(6, 9),
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [2, 1, -1, 4, 2, 1, -1],
        time_signatures(11),
    )
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitches(o, library.warble_pitches())
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3),
            baca.override.accidental_font_size(u, -3),
            baca.override.accidental_x_offset(u, 0),
            baca.override.accidental_y_offset(u, -2),
        baca.hairpin(
            abjad.select.partition_by_ratio(o.tleaves(), (3, 4)),
            "o< mp>o!",
        )
        baca.spanners.trill(
            o.tleaves(),
            baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "E3")
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "mf")
        baca.spanners.covered(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 2]),
            "o<| f|>o!",
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -1),
        )
        baca.hairpin(
            abjad.select.partition_by_ratio(abjad.select.leaves(o.tleaves()), (3, 4)),
            "o< mp>o!",
        )
        baca.spanners.trill(
            o.tleaves(),
            baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
            rleak=True,
        )
    with baca.scope(m[9]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -2),
        )
        baca.hairpin(
            abjad.select.partition_by_ratio(o.tleaves(), (3, 4)),
            "o< mp>o!",
        )
        baca.spanners.trill(
            o.tleaves(),
            baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
            rleak=True,
        )
    with baca.scope(m.get(6, 9)) as o:
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
    with baca.scope(m[11]) as o:
        baca.pitch(o, "D5")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            baca.spanners.text(
                run,
                "A =|",
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[4]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(1, 4)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[9]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m[11]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-paper-towel-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(6, 11)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.pheads(), '"ff"')
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.self_alignment_x(0.75),
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(1, 4)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(
            o.phead(0),
            '"ff"',
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.hairpin(
            baca.select.plts(o)[1:],
            '"ff" "ff" "f" "f" mf mp p pp',
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[11]) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(6, 11)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            rests = abjad.select.rests(o)
            rests = [
                _ for _ in rests if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ]
            baca.override.dots_extra_offset(rests, (2, 0))
            baca.override.dots_x_extent_false(rests)
            baca.override.rest_x_extent_zero(rests)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 7)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "B4:C5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f-ancora")
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2:C3:Db3")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o.tleaves(), [1, 1]),
            "o< mf>o!",
            rleak=True,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(6, 9)) as o:
        baca.pitch(o, "E1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m[11]) as o:
        baca.pitch(o, "F1")
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(6, 11)) as o:
        baca.override.dls_staff_padding(o, 7)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.glissando(
            o.tleaves(),
            "D#3 E3",
        )
        baca.stem_tremolo(baca.select.pleaves(o, grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        with baca.scope(o.leaves(grace=False)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitch(u, "Db3")
        baca.accent(o.pheads()[:3])
        with baca.scope(o.leaves(grace=True)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_d_flat_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False),
            "f>o!",
            rleak=True,
        )
        baca.spanners.metric_modulation(
            baca.select.pleaves(o, grace=False)[:3],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                "D#3 E3",
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.pitches(o, "D4 Eb4")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            o.plts(),
            '"ff" "ff"',
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[5]) as o:
        with baca.scope(o.leaves(grace=False)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitch(u, "C3")
        with baca.scope(o.leaves(grace=True)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_c_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[5]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False),
            "mf>o!",
            rleak=True,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.override.dls_staff_padding(o, 4),
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        baca.override.tuplet_bracket_staff_padding(o, 3)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.plts(o),
            '"ff" "ff" "f" "f" mf mp p',
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[11]) as o:
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
    for n in [9, 11]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "D#3")
    with baca.scope(m.get(9, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpins.cyclic(
            baca.select.plts(o),
            '"ff"',
            do_not_bookend=True,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[5]) as o:
        baca.override.tuplet_bracket_direction_up(o)
        with baca.scope(o.leaf(1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            library.bridge_staff_position(u)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), '"ff"')
    with baca.scope(m.get(6, 9)) as o:
        library.bridge_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            baca.select.plts(o),
            '"ff" "ff" "f" mf mp p pp',
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[1:-4],
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "C#3")
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 4)
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.glissando(
            o.tleaves(),
            "F2 E2",
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[5]) as o:
        with baca.scope(o.leaves(grace=False)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitch(u, "B2")
        with baca.scope(o.leaves(grace=True)) as u:
            baca.override.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_b_2(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[5]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False),
            "mf>o!",
            rleak=True,
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                "F2 E2",
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.glissando(
            o.tleaves(),
            "D#2 E2",
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "mp")
        baca.spanners.damp(
            baca.select.tleaves(o),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                "D#2 E2",
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def composites(cache):
    for name in ["va", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(
                o.tleaves(),
                "o<mp",
            )
            baca.spanners.scp(
                [o.tleaves()],
                "T1 -> P1",
                baca.tweak.staff_padding(3),
            )
        with baca.scope(m.get(6, 9)) as o:
            baca.hairpin(
                o.run(0),
                "o<mp",
            )
            baca.hairpin(
                o.run(1),
                "o<mf",
            )
            baca.hairpin(
                o.run(2),
                "o<f",
            )
            baca.hairpin(
                o.run(3),
                "o<ff",
            )
            for run in baca.select.runs(o):
                baca.spanners.scp(
                    [run],
                    "T1 -> P1",
                    baca.tweak.staff_padding(3),
                )
        with baca.scope(m[11]) as o:
            pheads = baca.select.pheads(o)
            pheads = [
                _ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ]
            baca.alternate_bow_strokes(
                pheads,
                baca.tweak.staff_padding(4),
                full=True,
            ),
            baca.dynamic(
                o.phead(0),
                "ppp",
                baca.tweak.self_alignment_x(-0.9),
            )
            baca.spanners.half_clt(
                baca.select.ltleaves(o),
                baca.tweak.staff_padding(8),
                rleak=True,
            )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 4, 1, 4, 5, 4, 4, 4, 4, 1, 3]
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
            baca.layout.System(6, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        strict_overrides=(baca.layout.Override([3, 10], (1, 288)),),
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
