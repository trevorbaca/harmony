import abjad
import baca

from harmony import library

#########################################################################################
########################################### 21 ##########################################
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
        ("[>W.4]", 1, "#darkgreen"),
        ("[U.1]", 2),
        ("[>W.4]", 4, "#darkgreen"),
        ("[U.2]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "4.=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "3:5(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "5:3(4)=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "3:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.open_volta(skips[1 - 1], first_measure_number)
    baca.close_volta(skips[3 - 1], first_measure_number)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-twenty",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        6 * [4],
        time_signatures(1),
    )
    rhythm(
        voice,
        2 * [-4, w(2, 4), h(w(2, 4))],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        6 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        3 * [4, -4],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(2),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest=([1], 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [4, T([-4, 4, -4], 8)],
        time_signatures(4),
    )
    rhythm(
        voice,
        3 * [4, -4],
        time_signatures(5),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, T([-8, 4], 8)],
        time_signatures(1),
    )
    rhythm(
        voice,
        3 * [-4, 4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [4, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [6, 3, 7, 4],
        time_signatures(5),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        [4, "-"],
        time_signatures(1),
    )
    mmrests(voice, time_signatures(2, 3))
    rhythm(
        voice,
        [4, "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-4, T([-8, 4, 4, 4], -4)],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def VA(voice, time_signatures):
    rhythm(
        voice,
        6 * [4],
        time_signatures(1),
    )
    rhythm(
        voice,
        3 * [-4, 4],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        6 * [4],
        time_signatures(4),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(5),
        [-6, 1, -10, 1, "-"],
        extra_counts=[1],
    )


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [-8, T([4, 4, 4], 4)],
        time_signatures(1),
    )
    rhythm(
        voice,
        3 * [-4, 3, -1],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-8, T([4, 4, 4], 4)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [3, 7, 4, 6],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    music = baca.make_notes(time_signatures(1))
    voice.extend(music)
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    music = baca.make_notes(time_signatures(4))
    voice.extend(music)
    rhythm(
        voice,
        [7, 4, 6, 3],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [-8, T([4, 4, 4], 4)],
        time_signatures(1),
    )
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-8, T([4, 4, 4], 4)],
        time_signatures(1),
    )
    rhythm(
        voice,
        [4, 6, 3, 7],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        6 * [4],
        time_signatures(1),
    )
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        6 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [6, 3, 7, 4],
        time_signatures(5),
    )
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitch(o, "E5")
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            baca.hairpin(
                baca.select.lparts(run, [1, 1]),
                "o< f>o!",
                rleak=True,
            )
            if i == 0:
                baca.spanners.trill(
                    run,
                    alteration="m2",
                    rleak=True,
                )
            elif i == 1:
                baca.spanners.trill(
                    run,
                    baca.tweak.bound_details_right_padding(3),
                    alteration="m2",
                    rleak=True,
                )
    with baca.scope(m[1]) as o:
        baca.markup(o.pleaf(0), baca.levine_multiphonic(42))
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "B3:Dqf4")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m[n]) as o:
            baca.espressivo(o.pheads())
            baca.dynamic(o.phead(0), "p")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E5"),
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.spanners.text(
                run,
                "A =|",
                rleak=True,
                staff_padding=5.5,
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptail(0))
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2, -2, 0])
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.override.tuplet_bracket_direction_down(o)
        library.bass_drum_staff_position(o.pleaf(0))
        baca.laissez_vibrer(o.ptail(0))
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-markup",
            baca.tweak.staff_padding(6),
        )
        with baca.scope(o.pleaf(1)) as u:
            library.brake_drum_staff_position(u)
            baca.dynamic(u, "mp-ancora")
            baca.markup(
                u,
                r"\baca-boxed-brake-drum-paper-towel-markup",
                baca.tweak.staff_padding(6),
            )
    with baca.scope(m[5]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(4, 5)) as o:
        baca.override.dls_staff_padding(o, 6)
        baca.spanners.metric_modulation(
            o.leaves()[2:-1],
            rleak=True,
            staff_padding=10.5,
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.override.tuplet_bracket_direction_up(o)
        baca.pitch(o.plt(0), "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
            baca.tweak.staff_padding(4),
        )
        baca.override.dls_staff_padding(o.leaves()[:2], 4)
        with baca.scope(o.pleaf(-1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            library.bass_drum_staff_position(u)
            baca.dynamic(u, "mp")
            baca.markup(
                u,
                r"\baca-boxed-bd-struck-markup",
                baca.tweak.staff_padding(6),
            )
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
    with baca.scope(m.get(1, 2)) as o:
        with baca.scope(o.leaves()[2:]) as u:
            baca.override.dls_staff_padding(u, 6),
            baca.spanners.metric_modulation(
                u[:-1],
                rleak=True,
                staff_padding=10.5,
            )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "pp")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-fingertips-markup",
            baca.tweak.staff_padding(6),
        )


def hp(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "E4")
            baca.laissez_vibrer(o.ptails())
    with baca.scope(m[1]) as o:
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-xyl-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m[4]) as o:
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m[5]) as o:
        baca.override.tuplet_bracket_direction_up(o)
        baca.pitches(o, "F5 E5 Eb5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.spanners.metric_modulation(
            o.leaves()[-3:],
            right_broken=True,
            rleak=True,
            staff_padding=8,
        ),
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def va(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "E4")
            baca.triple_staccato(o.pheads())
            baca.dynamic(o.phead(0), "p")
            baca.spanners.scp(
                [o],
                "P4 -> T1",
                left_broken=True,
                staff_padding=3,
            )
    with baca.scope(m[1]) as o:
        baca.spanners.metric_modulation(
            o,
            left_broken=True,
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[2]) as o:
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.spanners.xfb(
                run,
                rleak=True,
                staff_padding=3,
            )
    with baca.scope(m[5]) as o:
        baca.accent(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.dynamic(o.phead(0), "mf")
        baca.spanners.pizzicato(
            baca.select.rleak(o.tleaves()),
            rleak=True,
            staff_padding=8,
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Bb3")


def vc1(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "bass")
            baca.pitch(o, "E2")
            baca.triple_staccato(o.pheads())
            baca.dynamic(o.phead(0), "p")
            baca.spanners.scp(
                [o.tleaves()],
                "T -> P",
                staff_padding=5.5,
            )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.xfb(
            o.pleaves(),
            rleak=True,
            staff_padding=5.5,
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "Aqf4")
            baca.markup(o.pleaf(0), r"\baca-eleven-e-flat")


def vc2(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "bass")
            baca.pitch(o, "Dqf3")
            baca.dynamic(o.phead(0), "p")
            baca.spanners.bow_speed(
                o,
                "poco scr. =|",
                rleak=True,
                staff_padding=3,
            )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.xfb(
            o.pleaves(),
            rleak=True,
            staff_padding=3,
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "F4")


def cb1(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "bass")
            baca.pitch(o, "E1")
            baca.triple_staccato(o.pheads())
            baca.dynamic(o.phead(0), "p")
            baca.spanners.scp(
                [o.tleaves()],
                "T -> P",
                staff_padding=5.5,
            )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.xfb(
            o.pleaves(),
            rleak=True,
            staff_padding=5.5,
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "Dtqf4")
            baca.markup(o.pleaf(0), r"\baca-seven-e-flat")


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.glissando(o, "E1")
            baca.spanners.scp(
                [o.leaves()],
                "P1 -> T1",
                staff_padding=3,
            )
    with baca.scope(m[1]) as o:
        baca.hairpin(
            o,
            "mf>o!",
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o,
            "mf>o",
            rleak=True,
        )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.xfb(
            o.pleaves(),
            rleak=True,
            staff_padding=3,
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Eb2")


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.staff_lines(o.leaf(0), 5)
        with baca.scope(m[2]) as o:
            for run in baca.select.runs(o):
                run = baca.select.rleak(run)
                baca.stop_on_string(run[-1])
                baca.hairpin(
                    run,
                    "o<|f",
                )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(6, 4), (4, 4), (1, 4), (6, 4), (5, 4)]
    time_signatures = baca.section.wrap(time_signatures)
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
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
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
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        overrides=(baca.layout.Override([3], (1, 288)),),
    )
    baca.build.write_layout_ly(breaks, spacing)


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
