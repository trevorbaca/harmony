import abjad
import baca

from harmony import library

#########################################################################################
######################################### 07 [G] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (4, 4),
        (3, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (4, 4),
    ]
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[G.1]", 1),
        ("[>H.1]", 2, "#darkgreen"),
        ("[G.2-3]", 4),
        ("[<F.3]", 6, "#darkgreen"),
        ("[>I.1]", 7, "#darkgreen"),
        ("[G.4]", 8),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "57 3/5"),
        (1 - 1, "6:5(4)=4"),
        (2 - 1, "96"),
        (2 - 1, "5:3(4)=4"),
        (4 - 1, "57 3/5"),
        (4 - 1, "3:5(4)=4"),
        (6 - 1, "48"),
        (6 - 1, "5:6(4)=4"),
        (7 - 1, "144"),
        (7 - 1, "3:2(8)=4"),
        (8 - 1, "57 3/5"),
        (8 - 1, "4:5(2)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-six",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 5),
        [1, 1, -28, 1, 1],
        written_eighths=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        ["-", -2, 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    durations = [_.duration for _ in time_signatures(7)]
    durations = [sum(durations)]
    weights = abjad.durations([(7, 8), (5, 8)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(7),
        [-4, 8, "-", 2, 2],
        denominator=None,
        durations=durations,
        extra_counts=[0, -2],
        invisible=[-1],
        written_quarters=[-2, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [1, 1, "-"],
        written_eighths=True,
        invisible_pairs=True,
    )
    voice.extend(music)


def PERC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-15, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [1, -11],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 5),
        [1, -16, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [-19, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [1, "-"],
    )
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = baca.make_notes(time_signatures(4, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [16, "-", 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        ["+"],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [6, 6],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=[0],
        invisible=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 5),
        [2, -28, 2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    durations = [_.duration for _ in time_signatures(7)]
    durations = [sum(durations)]
    weights = abjad.durations([(1, 4), (2, 4), (1, 8), (5, 8)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(7),
        [-4, -4, 8, -2, -4, 2, 2],
        denominator=None,
        durations=durations,
        extra_counts=[0, 4, 0, -2],
        written_quarters=[-2, -1],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [1, 1, "-"],
        written_eighths=[0, 1],
        invisible=[1],
        do_not_rewrite_meter=True,
    )
    voice.extend(music)


def VA(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1),
        counts=[5, 0, 0, 0, 0],
        weights=[4, 12],
        extra_counts=[0, 8],
        prefix_counts=[0, 3],
        prefix_talea=[8, 4, 4],
        tie=[6],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3), head=voice.name)
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(4),
        counts=[4],
        fuse=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    durations = [_.duration for _ in time_signatures(5)]
    durations = [sum(durations)]
    weights = abjad.durations([(1, 4), (3, 4)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(5),
        [6, 4, 4],
        denominator=None,
        durations=durations,
        extra_counts=[0, -2],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [4, 12, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7, 8),
        [-4, "+"],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        counts=[15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[0],
        invisible_pairs=True,
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [12],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(4, 5),
        weights=[4, 4, 4, 4, 4, 4, 4, 4],
        counts=[4, 0, 0, 0, 0, 0, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    durations = [_.duration for _ in time_signatures(8)]
    durations = [sum(durations)]
    weights = abjad.durations([(1, 4), (3, 4)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(8),
        [8, 4, 4, 4, 4],
        denominator=None,
        durations=durations,
        extra_counts=[0, 8],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [12],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 5),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(time_signatures(8))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [4, 4, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [12],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        time_signatures(4, 5),
        counts=[4],
        fuse=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        time_signatures(6),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [4, 4, 4, 4],
    )
    voice.extend(music)


def CB2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 5),
        ["+"],
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        time_signatures(6),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(time_signatures(8))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Bb5"),
        baca.stem_tremolo(o.pleaves())
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                o,
                "o<| f |>o niente",
                pieces=baca.select.clparts(o, [1]),
            )
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "Bb5")
        baca.stem_tremolo(o.pleaves())
        leaves = o.leaves()[:3]
        baca.hairpin(
            leaves,
            "o<| f |>o niente",
            pieces=baca.select.clparts(leaves, [1]),
        )
        baca.dynamic_text_x_offset(o.pleaf(1), -0.75)
        leaves = baca.select.rleak(o.leaves()[-2:])
        baca.hairpin(
            leaves,
            "o<| mf |>o niente",
            pieces=baca.select.clparts(leaves, [1]),
        )
        baca.dynamic_text_x_offset(o.pleaf(3), -2)
    with baca.scope(m[6]) as o:
        baca.pitch(o, "Ab3")
        baca.dynamic(o.phead(0), "mf")
    with baca.scope(m[7]) as o:
        baca.tuplet_bracket_up(o)
        baca.pitch(o.runs()[:1], "G3")
        baca.pitch(o.runs()[1:], "Bb5")
        baca.stem_tremolo(o.pleaves()[-2:])
        leaves = o.leaves()[-2:]
        baca.hairpin(
            leaves,
            "o< f >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(leaves, [1]),
        )
    with baca.scope(m.get(6, 7)) as o:
        with baca.scope(o.leaves()[1:8]) as u:
            baca.covered_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Bb5"),
        baca.stem_tremolo(o.pleaves())
        leaves = o.leaves()[:3]
        baca.hairpin(
            leaves,
            "o< f >o niente",
            pieces=baca.select.clparts(leaves, [1]),
        )
        baca.dynamic_text_x_offset(o.pleaf(1), -0.75)
    with baca.scope(m.get(7, 8)) as o:
        baca.tuplet_bracket_staff_padding(o, 6.5)
        baca.metric_modulation_spanner(
            o.leaves()[4:9],
            abjad.Tweak(r"- \tweak staff-padding 11.5"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2),
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.hairpin(o.pleaves(), "f mp")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        baca.dynamic(
            o.phead(0),
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[8]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )


def perc2(m):
    with baca.scope(m.get(1, 2)) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(o.pleaves(), hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.stem_tremolo(o.pleaf(0))
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[6]) as o:
        baca.stem_tremolo(o.pleaf(0))
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position(u)
            baca.damp(u)
            baca.dynamic(u, "mf")
            baca.markup(
                u,
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m.get(4, 6)) as o:
        with baca.scope(o.run(0)) as u:
            library.tam_tam_staff_position(u)
            baca.flat_glissando(u, hide_middle_stems=True)
    with baca.scope(m[8]) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(
            baca.select.rleak(o.pleaves()),
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.dls_staff_padding(o, 6)
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[:2]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "<B5 C6 D6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.rleaves(),
            "o< mf >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 2]),
        )
        baca.dls_staff_padding(o, 4),
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.dynamic(o.phead(-1), "mf")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitches(o, "F#4 G#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 4)
        baca.text_spanner(
            o.rleaves(),
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=False,
        )
    with baca.scope(m[7]) as o:
        baca.pitch(o.plt(0), "<B5 C#6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[7]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.double_flageolet(u)
            baca.dynamic(u, "f")
            baca.markup(
                u,
                r"\baca-lv-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            )
            baca.dls_staff_padding(u, 4 + 2),
        with baca.scope(o.pleaf(-2)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1),
            library.whisk_staff_position(u)
            baca.markup(u, r"\baca-whisk-markup")
            baca.dynamic(u, '"f"')
            baca.dls_staff_padding(u, 6 + 2)
    with baca.scope(m[8]) as o:
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.dls_staff_padding(o, 6 + 2)
    with baca.scope(m.get(7, 8)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[5:10],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_b_flat(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
        baca.espressivo(baca.select.pheads(o, grace=False)[1:])
        baca.metric_modulation_spanner(
            o.leaves()[7:12],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[4]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(o.leaves()[1:3], "pp >o niente")
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 6)) as o:
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
        baca.espressivo(o.pheads(grace=False)[1:])
    with baca.scope(m.get(5, 6)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[2:6],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch(o, "C#4")
        baca.flat_glissando(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "mf >o niente",
        )
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o.leaves(grace=False), 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E4")
        baca.hairpin(o, "f >o niente", left_broken=True)
        baca.bow_speed_spanner(
            o.leaves(),
            "scr. =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding -1.5"),
            abjad.Tweak(r"- \tweak staff-padding 3.5"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "<C5 Db5 Eb5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 1),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 9"),
            bookend=False,
            direction=abjad.DOWN,
        ),
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
        baca.espressivo(baca.select.pheads(o, grace=False)[1:])
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E4")
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner(
                baca.select.tleaves(o, rleak=True),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "B4")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Bb4")
        baca.espressivo(o.pheads()[-4:])
        baca.dynamic(o.phead(0), "pp")
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[-4:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2"),
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<B4 C5 D5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2"),
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Eqf4"),
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.bow_speed_spanner(
                run,
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "Dqs4")
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-a",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.flat_glissando(o, "E1", left_broken=True)
        baca.hairpin(
            o.rleaves(),
            "ff >o",
            bookend=False,
            left_broken=True,
        )
        baca.scp_spanner(
            o.leaves(),
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<C5 Db5 Eb5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o.plts(grace=False), "Bb3", do_not_transpose=True)
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 2),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.flat_glissando(o, "E1")
        baca.hairpin(o, "mf > p")
        baca.scp_spanner(
            o.leaves(),
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
        )
    with baca.scope(m[7]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "E3"),
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Bb4", do_not_transpose=True)
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def cb2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "Bb2"),
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch(o, "Bb2")
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[6]) as o:
        baca.flat_glissando(o, "E1")
        baca.hairpin(o, "p < f")
        baca.scp_spanner(
            o.leaves(),
            "T1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
            pieces=baca.select.lparts(o.leaves(), [2, 3]),
        )
    with baca.scope(m[7]) as o:
        baca.pitch(o, "A1")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Bb2")
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def composites(cache):
    for name in ["vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.markup(
                o.pleaf(0),
                r"\baca-quasi-bisb-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            )
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[7]) as o:
            baca.stop_on_string(baca.select.leaf_in_each_rleak_run(o, -1))
            baca.hairpin(baca.select.rleak(o.tleaves()), "o<| ff")


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
    cb2(cache["cb2"])
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
