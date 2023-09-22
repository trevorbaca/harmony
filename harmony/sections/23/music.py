import abjad
import baca

from harmony import library

#########################################################################################
########################################### 23 ##########################################
#########################################################################################


def GLOBALS(skips, rests):
    stage_markup = (
        ("[W.1]", 1),
        ("[>Y.1]", 2, "#darkgreen"),
        ("[W.2-3]", 4),
        ("[W.4]", 6),
        ("[<V.6]", 7, "#darkgreen"),
        ("[<T.3]", 8, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "4.=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "3:5(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "5:3(4)=4"),
        (7 - 1, "72"),
        (7 - 1, "3:4(4)=4"),
        (8 - 1, "144"),
        (8 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)


def BFL(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1))
    voice.extend(music)
    music = library.make_warble_rhythm(
        time_signatures(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 6),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [-4, 8, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def PERC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 6),
        [4, -16, 4, -16, 4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [-2, 2, -8, 2, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(6),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(7, 8))
    voice.extend(music)


def VA(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 6),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        ["+"],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [-6, 2, -4, 2, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4, 5),
        [4],
    )
    voice.extend(music)

    durations = [_.duration for _ in time_signatures(6, 7)]
    durations = [sum(durations)]
    weights = abjad.durations([(2, 4), (4, 4), (3, 4)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(6, 7),
        [-8, 4, 4, 4, 4, 4, 4],
        denominator=None,
        durations=durations,
        extra_counts=[0, -4, 0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [-7, 3, -7, 3],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice, time_signatures):
    music = library.make_tuplet(
        time_signatures(1),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3))
    voice.extend(music)
    music = library.make_tuplet(
        time_signatures(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(5, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        ["+"],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [-10, 3, -5, 2],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3, 5))
    voice.extend(music)
    durations = [_.duration for _ in time_signatures(6, 7)]
    durations = [sum(durations)]
    weights = abjad.durations([(2, 4), (4, 4), (3, 4)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(6, 7),
        [-8, 4, 4, 4, 4, 4, 4],
        denominator=True,
        durations=durations,
        extra_counts=[0, -4, 0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(8),
        [1, -14, 1],
    )
    voice.extend(music)


def CB2(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1))
    voice.extend(music)
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 6),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(7),
        ["+"],
        after_grace=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(8))
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -6),
        )
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=abjad.select.partition_by_ratio(
                    abjad.select.leaves(run), (4, 5)
                ),
            )
            baca.trill_spanner(
                baca.select.rleak(run),
                abjad.Tweak(
                    r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"
                ),
            )
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o, "<B3 Dqf4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 6)) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run), count=2)
        baca.covered_spanner(
            run,
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 6)) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[7]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plt(0), "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(7, 8)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.metric_modulation_spanner(
            o.leaves()[:2],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-xyl-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "E3")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o, "E3")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.scp_spanner(
            o.leaves(),
            "T -> P -> T",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
            pieces=baca.select.mgroups(o.leaves(), [2, 1]),
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A4 B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.scp_spanner(
            o.leaves(),
            "T -> P",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.tuplet_bracket_down(o)
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.scp_spanner(
            leaves,
            "T -> P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.mgroups(leaves, [1, 2]),
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqf3")
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqf3")
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D3 C#3")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A4 B4 C5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(6, 7)) as o:
        baca.tuplet_bracket_down(o)
        baca.pitch(o, "E1")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.scp_spanner(
            leaves,
            "T -> P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.mgroups(leaves, [1, 2]),
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.flat_glissando(o)
        baca.hairpin(
            o.rleaves(),
            "ff >o",
            bookend=False,
        )
        baca.scp_spanner(
            o.leaves(),
            "P3 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D2 C#2")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.staff_lines(o.leaf(0), 5)
        with baca.scope(m.get(1, 7)) as o:
            baca.dls_staff_padding(o, 4)
        with baca.scope(m[2]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            baca.clef(o.leaf(0), "percussion")
            baca.staff_lines(o.leaf(0), 1)
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "pp")
            baca.dls_staff_padding(o, 6)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(5, 4), (6, 4), (1, 4), (5, 4), (5, 4), (6, 4), (3, 4), (4, 4)]
    time_signatures = baca.section.wrap(time_signatures)
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
    bfl(cache)
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


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
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
