import abjad
import baca

from harmony import library

#########################################################################################
########################################### 23 ##########################################
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
    mmrests(voice, time_signatures(1))
    library.make_warble_rhythm(
        voice,
        time_signatures(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[0, 1],
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        16 * [4],
        time_signatures(4, 6),
    )
    mmrests(voice, time_signatures(7))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        [-4, 8, "-"],
        extra_counts=[1],
    )


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [-16, 4],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2, 3))
    rhythm(
        voice,
        [4, -16, 4, -16, 4, "-"],
        time_signatures(4, 6),
    )
    music = baca.make_notes(time_signatures(7))
    voice.extend(music)
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        [-8, 8, "-"],
        extra_counts=[2],
    )


def PERC2(voice, time_signatures):
    mmrests(voice, time_signatures(1, 5))
    rhythm(
        voice,
        [4, "-"],
        time_signatures(6),
    )
    rhythm(
        voice,
        [4, "-"],
        time_signatures(7),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        [-2, 2, -8, 2, "-"],
        extra_counts=[1],
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2, 5))
    rhythm(
        voice,
        [4, "-"],
        time_signatures(6),
    )
    mmrests(voice, time_signatures(7, 8))


def VA(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1),
    )
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        16 * [4],
        time_signatures(4, 6),
    )
    rhythm(
        voice,
        AG([2], 12),
        time_signatures(7),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        [-6, 2, -4, 2, "-"],
        extra_counts=[2],
    )


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1),
    )
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        10 * [4],
        time_signatures(4, 5),
    )
    rhythm(
        voice,
        [-8, T([4, 4, 4], 4), 4, 4, 4],
        time_signatures(6, 7),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        [-7, 3, -7, 3],
        extra_counts=[1],
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        T([16], 4),
        time_signatures(1),
    )
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        T([16], 4),
        time_signatures(1),
    )
    music = baca.make_notes(time_signatures(5, 6))
    voice.extend(music)
    rhythm(
        voice,
        AG([2], 12),
        time_signatures(7),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        [-10, 3, -5, 2],
        extra_counts=[1],
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1),
    )
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    mmrests(voice, time_signatures(3, 5))
    rhythm(
        voice,
        [-8, T([4, 4, 4], 4), 4, 4, 4],
        time_signatures(6, 7),
    )
    rhythm(
        voice,
        [1, -14, 1],
        time_signatures(8),
    )


def CB2(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    music = baca.make_notes(time_signatures(2))
    voice.extend(music)
    mmrests(voice, time_signatures(3, 4))
    rhythm(
        voice,
        11 * [4],
        time_signatures(5, 6),
    )
    rhythm(
        voice,
        AG([2], 12),
        time_signatures(7),
    )
    mmrests(voice, time_signatures(8))


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -6),
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
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o, "B3:Dqf4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 6)) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
        # TODO: indent?
        baca.spanners.covered(
            run,
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 6)) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m[7]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-triangle-markup",
            baca.tweak.staff_padding(7),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(7),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plt(0), "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-markup",
            baca.tweak.staff_padding(8),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(8),
        )
    with baca.scope(m.get(7, 8)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.spanners.metric_modulation(
            o.leaves()[:1],
            baca.tweak.staff_padding(8),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-xyl-markup",
            baca.tweak.staff_padding(4),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "E3")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.spanners.scp(
            baca.select.tleaves(o),
            "P =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o, "E3")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.spanners.scp(
            baca.select.mgroups(o, [2, 1]),
            "T -> P -> T",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D4 C#4")
        baca.glissando(o)
        baca.hairpin(
            o,
            "pp>o!",
        )
        baca.spanners.scp(
            [o.leaves()],
            "T2 -> T4",
            baca.tweak.staff_padding(3),
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.spanners.scp(
            o.tleaves(),
            "P =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A4:B4:C5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.spanners.scp(
            [o.leaves()],
            "T -> P",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.override.tuplet_bracket_direction_down(o)
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.spanners.metric_modulation(
            o.leaves()[1:],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.spanners.scp(
            baca.select.mgroups(leaves, [1, 1]),
            "T -> P =|",
            baca.tweak.staff_padding(3),
            do_not_bookend=True,
            rleak=True,
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqf3")
        baca.dynamic(o.phead(0), "p")
        baca.spanners.bow_speed(
            o,
            "poco scr. =|",
            baca.tweak.bound_details_right_padding(5),
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.glissando(o, "Dqf3", hide_middle_stems=True)
        baca.dynamic(o.phead(0), "p")
        baca.spanners.bow_speed(
            o,
            "poco scr. =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D3 C#3")
        baca.glissando(o)
        baca.hairpin(
            o,
            "pp>o!",
        )
        baca.spanners.scp(
            [o.leaves()],
            "T2 -> T4",
            baca.tweak.staff_padding(3),
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.spanners.scp(
            o.tleaves(),
            "P =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "A4:B4:C5", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(6, 7)) as o:
        baca.override.tuplet_bracket_direction_down(o)
        baca.pitch(o, "E1")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.spanners.metric_modulation(
            o.leaves()[1:],
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.spanners.scp(
            baca.select.mgroups(leaves, [1, 1]),
            "T -> P =|",
            baca.tweak.staff_padding(3),
            do_not_bookend=True,
            rleak=True,
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "G4:Ab4:Bb4", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.glissando(o, "E1")
        baca.hairpin(
            o,
            "ff>o",
            rleak=True,
        )
        baca.spanners.scp(
            [o.leaves()],
            "P3 -> T1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D2 C#2")
        baca.glissando(o)
        baca.hairpin(
            o,
            "pp>o!",
        )
        baca.spanners.scp(
            [o.leaves()],
            "T2 -> T4",
            baca.tweak.staff_padding(3),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.staff_lines(o.leaf(0), 5)
        with baca.scope(m.get(1, 7)) as o:
            baca.override.dls_staff_padding(o, 4)
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
            baca.override.dls_staff_padding(o, 6)


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
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
    )
    baca.build.write_layout_ily(
        breaks,
        environment.metadata["time_signatures"],
        spacing,
        first_measure_number=environment.first_measure_number,
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
        make_layout(environment)


if __name__ == "__main__":
    main()
