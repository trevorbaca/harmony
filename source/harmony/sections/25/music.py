import abjad
import baca

from harmony import library

#########################################################################################
########################################### 25 ##########################################
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
        ("[>AA.1]", 1, "#darkgreen"),
        ("[Y.1]", 2),
        ("[<X.8]", 3, "#darkgreen"),
        ("[Y.2]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(8)=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "4:5(2)=4"),
        (3 - 1, "48"),
        (3 - 1, "5:6(4)=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "6:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (4 - 1, "fermata"),
        (11 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[4 - 1],
        r"\harmony-text-twenty-two",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[11 - 1],
        r"\harmony-text-twenty-three",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    library.make_warble_rhythm(
        voice,
        time_signatures(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[0, 1],
    )
    rhythm(
        voice,
        4 * [-2, 2, 2],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    library.make_warble_rhythm(
        voice,
        time_signatures(5, 10),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest=([1, 2, 4], 5),
    )
    mmrests(voice, time_signatures(11))


def PERC1(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    rhythm(
        voice,
        T([-8, -2, 3, -3, 3, -1], 4),
        time_signatures(2),
    )
    rhythm(
        voice,
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    rhythm(
        voice,
        3 * [1, -23, -1, 1, -22],
        time_signatures(5, 9),
    )
    rhythm(
        voice,
        [-1, 1, -2, -8, T([-12, 4, 4], -8)],
        time_signatures(10),
    )
    mmrests(voice, time_signatures(11))


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, -20, 4],
        time_signatures(1),
    )
    rhythm(
        voice,
        T([-8, -2, 8, 2], 4),
        time_signatures(2),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    rhythm(
        voice,
        3 * [2, -22, -1, 2, -21],
        time_signatures(5, 9),
    )
    rhythm(
        voice,
        [-1, 1, 1, -1, -8, T([-12, 4, 4], -8)],
        time_signatures(10),
    )
    mmrests(voice, time_signatures(11))


def HP(voice, time_signatures):
    rhythm(
        voice,
        [-24, 4],
        time_signatures(1),
    )
    rhythm(
        voice,
        T([-8, -2, 3, -3, 3, -1], 4),
        time_signatures(2),
    )
    rhythm(
        voice,
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    rhythm(
        voice,
        3 * [-24, -1, 3, -20],
        time_signatures(5, 10),
    )
    mmrests(voice, time_signatures(11))


def VA(voice, time_signatures):
    music = baca.make_notes(time_signatures(1, 2))
    voice.extend(music)
    rhythm(
        voice,
        [6, 3, 11],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    library.make_tessera(
        voice,
        time_signatures(5, 10),
        *(4, 4),
    )
    mmrests(voice, time_signatures(11), head=True)


def VC1(voice, time_signatures):
    voice.extend(r"r1 r8 \times 5/4 { c2 }")
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    rhythm(
        voice,
        [4, 2, 7, 7],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    library.make_tessera(
        voice,
        time_signatures(5, 10),
        *(4, 3),
    )
    mmrests(voice, time_signatures(11), head=True)


def VC2(voice, time_signatures):
    voice.extend(r"r1 r8 \times 5/4 { c2 }")
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    rhythm(
        voice,
        [9, 11],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    library.make_tessera(
        voice,
        time_signatures(5, 10),
        *(4, 2),
    )
    mmrests(voice, time_signatures(11), head=True)


def CB1(voice, time_signatures):
    voice.extend(r"r1 r8 \times 5/4 { c2 }")
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    rhythm(
        voice,
        [4, 9, 7],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    library.make_tessera(
        voice,
        time_signatures(5, 10),
        *(4, 1),
    )
    mmrests(voice, time_signatures(11), head=True)


def CB2(voice, time_signatures):
    voice.extend(r"r1 r8 \times 5/4 { c2 }")
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    rhythm(
        voice,
        [9, 11],
        time_signatures(3),
    )
    mmrests(voice, time_signatures(4))
    library.make_tessera(
        voice,
        time_signatures(5, 10),
        *(4, 0),
    )
    mmrests(voice, time_signatures(11), head=True)


def bfl(m):
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -7),
        )
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                abjad.select.partition_by_ratio(run, (4, 5)),
                "o< mp>o!",
            )
            baca.spanners.trill(
                run,
                baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
                rleak=True,
            )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            baca.hairpin(
                baca.select.lparts(run, [1, 1]),
                "o< p>o!",
                rleak=True,
            )
            baca.spanners.trill(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
            baca.spanners.text(
                baca.select.lparts(run, [1, 1]),
                "A -> T -> A",
                baca.tweak.staff_padding(10),
                rleak=True,
            )
    with baca.scope(m.get(5, 10)) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -8),
        )
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                abjad.select.partition_by_ratio(run, (4, 5)),
                "o< mp>o!",
            )
            baca.spanners.trill(
                run,
                baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
                rleak=True,
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[2]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[3]) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(2, 3)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[1:7],
            baca.tweak.staff_padding(10.5),
            rleak=True,
        )
    with baca.scope(m.get(5, 9)) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[10]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_position(o, 2)
        baca.spanners.metric_modulation(
            o.leaves()[:1],
            baca.tweak.staff_padding(8),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m.get(2, 3)) as o:
        library.tam_tam_staff_position(o)
        baca.glissando(o.pleaves(), "C4")
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(5, 9)) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "f>o!",
                rleak=True,
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[10]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads()[:2])
        baca.stem_tremolo(o.pleaves()[:2])
        for run in baca.select.runs(o)[:1]:
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "f>o!",
            )
        baca.markup(
            o.pleaf(2),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.self_alignment_x(0),
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Ab4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-pince-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[2]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            baca.dynamic(u, "p")
            baca.override.dls_staff_padding(u, 6)
            baca.markup(
                u,
                r"\baca-whisk-markup",
                baca.tweak.staff_padding(8),
            )
    with baca.scope(m.get(2, 3)) as o:
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.spanners.metric_modulation(
            o.leaves()[1:7],
            baca.tweak.staff_padding(10.5),
            rleak=True,
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G1")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 4 + 3)
        baca.markup(
            o.phead(-1),
            r"\baca-lv-into-fermata-markup",
        )


def y1():
    return """
    pp-- !< mp-- !> p< mf-- !> mp< f-scratch-- !> mf< ff-scratch-- !
    """


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.glissando(o, "Ab4")
        baca.dynamic(o.phead(0), "mp")
        baca.spanners.xfb(
            o.pleaves(),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#3")
        baca.spanners.scp(
            o.plts(),
            "P2 -> P1 -> P3 -> P2",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(5, 10)) as o:
        plts = baca.select.plts(o.rleaves())
        baca.hairpin(
            abjad.sequence.partition_by_counts(plts, 11 * [1] + [2] + [1]),
            y1(),
            baca.tweak.to_bar_line_true(i=-2),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(o.leaf(0), "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(o.leaf(-1), "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.override.note_head_transparent(o.leaves()[1:-1])


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_direction_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A4:B4:C5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#2")
        baca.spanners.scp(
            o.plts(),
            "P2 -> O -> P2 -> P1 -> P3",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        plts = baca.select.plts(o.rleaves())
        baca.hairpin(
            abjad.sequence.partition_by_counts(plts, 11 * [1] + [2] + [1]),
            y1(),
            baca.tweak.to_bar_line_true(i=-2),
        )
        baca.override.note_head_transparent(o.leaves()[1:-1])
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "A4:B4:C5",
        )
        cache.rebuild()
        m = cache[name]


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_direction_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#2")
        baca.spanners.scp(
            o.plts(),
            "O -> P2 -> P1",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        plts = baca.select.plts(o.rleaves())
        baca.hairpin(
            abjad.sequence.partition_by_counts(plts, 11 * [1] + [2] + [1]),
            y1(),
            baca.tweak.to_bar_line_true(i=-2),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "G4:Ab4:Bb4",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.override.note_head_transparent(o.leaves()[1:-1])


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_direction_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A4:B4:C5", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        baca.spanners.scp(
            o.plts(),
            "P1 -> P2 -> O -> P2",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        plts = baca.select.plts(o.rleaves())
        baca.hairpin(
            abjad.sequence.partition_by_counts(plts, 11 * [1] + [2] + [1]),
            y1(),
            baca.tweak.to_bar_line_true(i=-2),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.override.note_head_transparent(o.leaves()[1:-1])
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "A4:B4:C5",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_direction_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "G4:Ab4:Bb4", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        baca.spanners.scp(
            o.plts(),
            "P1 -> P2 -> O",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        plts = baca.select.plts(o.rleaves())
        baca.hairpin(
            abjad.sequence.partition_by_counts(plts, 11 * [1] + [2] + [1]),
            y1(),
            baca.tweak.to_bar_line_true(i=-2),
        )
        baca.untie(o.leaves())
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "G4:Ab4:Bb4",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(
            o.pleaves()[1:-1],
            "C5",
            do_not_transpose=True,
        )
        baca.override.note_head_transparent(o.leaves()[1:-1])


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 2)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.dynamic(o.phead(0), "pp")
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
            baca.spanners.metric_modulation(
                baca.select.tleaves(o),
                baca.tweak.staff_padding(8),
                rleak=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads()[1:])
            baca.glissando(o)
            baca.dynamic(o.phead(0), "f")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(5, 10)) as o:
            baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [7, 6, 5, 1, 6, 6, 6, 6, 6, 6, 1]
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
            baca.layout.System(7, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 32),
        strict_overrides=(
            baca.layout.Override((1, 2), (1, 20)),
            baca.layout.Override([4, 11], (1, 288)),
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
