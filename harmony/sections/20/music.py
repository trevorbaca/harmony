import abjad
import baca

from harmony import library

#########################################################################################
########################################### 20 ##########################################
#########################################################################################

AG = baca.rhythm.AG
T = baca.rhythm.T
bl = baca.rhythm.bl
br = baca.rhythm.br
h = baca.rhythm.h
rt = baca.rhythm.rt
t = baca.rhythm.t
w = baca.rhythm.w

OBGC = library.OBGC
mmrests = library.mmrests
rhythm = library.rhythm


def GLOBALS(skips):
    stage_markup = (
        ("[>U.1]", 1, "#darkgreen"),
        ("[>V.3]", 2, "#darkgreen"),
        ("[T.1-8]", 3),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "57 3/5"),
        (1 - 1, "4:5(2)=4"),
        (2 - 1, "72"),
        (2 - 1, "5:4(4)=4"),
        (3 - 1, "144"),
        (3 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, w(2, 4), h(w(2, 4))],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    library.make_phjc_rhythm(
        voice,
        time_signatures(1),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest=([1], 2),
    )
    rhythm(
        voice,
        [-4, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, 4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, 4, -4],
        time_signatures(2),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        T([-8, 4, 4, 4], -4),
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, 4, -4],
        time_signatures(2),
    )
    rhythm(
        voice,
        3 * [2, -20, 2, -24],
        time_signatures(3, 10),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, 4],
        time_signatures(1),
    )
    rhythm(
        voice,
        [T([2, 3], -1), AG([2], rt(8))],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 8),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(9, 10),
        [-4, 2, -4, 6, 6, 6, 6],
        extra_counts=[2, 0, 0, 0, 0, 0, 0, 0],
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-4, w(2, 4), h(w(2, 4)), -4],
        time_signatures(2),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(1),
    )
    rhythm(
        voice,
        [4, T([rt(4), t(2)], -2), AG([2], 4)],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(1),
    )
    rhythm(
        voice,
        [3, t(1), AG([2], 8)],
        time_signatures(2),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )


def CB2(voice, time_signatures):
    rhythm(
        voice,
        2 * [-4, 3, -1],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-8, 3, -1, -4, 3, -1, -4],
        time_signatures(2),
        denominator=32,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3, 10),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )


def bfl(m):
    with baca.scope(m[1]) as o:
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
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Gqs5")
        for run in baca.select.runs(o):
            baca.hairpin(
                baca.select.lparts(run, [1, 1]),
                "o< mp>o!",
                rleak=True,
            )
            baca.spanners.trill(
                run,
                baca.tweak.staff_padding(3, grob="TrillSpanner"),
                alteration="A5",
                rleak=True,
            )
    with baca.scope(m.get(3, 10)) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp-sempre")
        baca.spanners.covered(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2, -2, 0])
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            baca.hairpin(
                baca.select.lparts(run, [1, 1]),
                "o< pp>o!",
                rleak=True,
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-triangle-markup",
            baca.tweak.staff_padding(7),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m.get(3, 10)) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(7),
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.accent(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.spanners.metric_modulation(
            o.leaves()[:2],
            baca.tweak.staff_padding(8),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[2]) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.laissez_vibrer(o.pheads())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(8),
        )
    with baca.scope(m.get(3, 10)) as o:
        baca.override.tuplet_bracket_staff_padding(o, 3)
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(8),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.override.tuplet_bracket_direction_up(o)
        baca.pitches(o, "F5 E5 Eb5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D1")
        baca.spanners.ottava(o.tleaves(), -1, rleak=True)
        baca.override.ottava_bracket_staff_padding(o, 8)
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(1, 2)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[1:-1],
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m.get(3, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            self_alignment_x=-0.9,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def va(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "Bb3")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.spanners.xfb(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[2]) as o:
        baca.override.tuplet_bracket_direction_up(o)
        baca.pitches(o, "D4 C#4")
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            o,
            "o<mf",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        with baca.scope(o.rleaves(count=2)) as u:
            baca.override.tuplet_bracket_staff_padding(u, 2)
            library.bridge_staff_position(u)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m.get(9, 10)) as o:
        baca.accent(o.phead(0))
        baca.stem_tremolo(o.pleaf(0))
        with baca.scope(o.leaf(3)) as u:
            baca.clef(u, "alto")
            baca.staff_lines(u, 5),
        with baca.scope(o.plts()[1:]) as u:
            baca.pitch(u, "E3")
            baca.override.dls_staff_padding(u, 4)
        baca.triple_staccato(o.pheads()[1:])
        baca.dynamic(o.phead(1), "p")
        with baca.scope(o[3:]) as u:
            baca.spanners.scp(
                [u.pheads()],
                "P4 -> T1",
                baca.tweak.staff_padding(3),
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                right_broken=True,
                rleak=True,
            )


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Aqf4")
        baca.markup(o.pleaf(0), r"\baca-eleven-e-flat")
    with baca.scope(m[2]) as o:
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            baca.hairpin(
                baca.select.lparts(run, [1, 1]),
                "o< mp>o!",
                rleak=True,
            )
            baca.spanners.trill(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 10)) as o:
        baca.override.tuplet_bracket_staff_padding(o, 2)
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
        baca.override.dls_staff_padding(o, 6)


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F4")
    with baca.scope(m[2]) as o:
        baca.override.tuplet_bracket_staff_padding(o, 2)
        baca.pitches(o, "Gb4 F4")
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            o,
            "o<mf",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 10)) as o:
        baca.override.tuplet_bracket_staff_padding(o, 2)
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
        baca.override.dls_staff_padding(o, 6)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dtqf4")
    with baca.scope(m[2]) as o:
        baca.pitches(o, "D2 C#2")
        baca.glissando(
            o,
            do_not_hide_middle_note_heads=True,
            do_not_untie=True,
        )
        baca.hairpin(
            o,
            "o<mf",
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 10)) as o:
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.override.rest_extra_offset(o.rest(-1), (-1.5, 0))


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Eb2")
        baca.override.dls_staff_padding(o, 4)
    with baca.scope(m[2]) as o:
        with baca.scope(o.leaf(1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            self_alignment_x=-0.9,
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.override.dls_staff_padding(o.leaves()[1:], 6)
    with baca.scope(m.get(2, 4)) as o:
        baca.spanners.metric_modulation(
            abjad.select.leaves(o)[1:],
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m[10]) as o:
        baca.override.rest_extra_offset(o.rest(-1), (-1.5, 0))


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.staff_lines(o.leaf(0), 5)
    for name in ["vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m.get(3, 10)) as o:
            baca.clef(o.leaf(0), "percussion")
            baca.staff_lines(o.leaf(0), 1)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            for run in baca.select.runs(o):
                run = baca.select.rleak(run)
                baca.stop_on_string(run[-1]),
                baca.hairpin(
                    run,
                    "o<|f",
                )
        with baca.scope(m.get(3, 10)) as o:
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 3, 4, 4, 4, 4, 4, 4, 4, 4]
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
    GLOBALS(score["Skips"])
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
