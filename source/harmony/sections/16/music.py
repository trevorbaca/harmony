import abjad
import baca

from harmony import library

#########################################################################################
########################################### 16 ##########################################
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
        ("[P.1-6]", 1),
        ("[<O.4]", 8, "#darkgreen"),
        ("[P.7-8]", 9),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, string in ((7 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        library.damp_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        ["+"],
        time_signatures(8),
    )
    rhythm(
        voice,
        library.damp_counts_curtailed(),
        time_signatures(9, 10),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [41, -7, "+"],
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        ["+"],
        time_signatures(8),
    )
    rhythm(
        voice,
        [12, 4, 4, 1, "-"],
        time_signatures(9, 10),
    )


def duration_color_counts():
    return [21, -14, 18, "-"]


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        duration_color_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7, 8))
    rhythm(
        voice,
        duration_color_counts(),
        time_signatures(9, 10),
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        duration_color_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(8),
        ["-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        duration_color_counts(),
        time_signatures(9, 10),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        library.glissando_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        ["+"],
        time_signatures(8),
    )
    music = baca.make_repeat_tied_notes(time_signatures(9, 10))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        library.damp_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        ["+", -1],
        time_signatures(8),
    )
    rhythm(
        voice,
        library.damp_counts_curtailed(),
        time_signatures(9, 10),
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        library.damp_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        ["+", -1],
        time_signatures(8),
    )
    rhythm(
        voice,
        library.damp_counts_curtailed(),
        time_signatures(9, 10),
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        library.glissando_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        ["+", -1],
        time_signatures(8),
    )
    rhythm(
        voice,
        library.glissando_counts_curtailed(),
        time_signatures(9, 10),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        library.glissando_counts(),
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    rhythm(
        voice,
        ["+", -1],
        time_signatures(8),
    )
    rhythm(
        voice,
        library.glissando_counts_curtailed(),
        time_signatures(9, 10),
    )
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "D5")
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        for run in baca.select.runs(o):
            baca.spanners.text(
                run,
                "A =|",
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#5")
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.spanners.trill(
            baca.select.tleaves(o),
            baca.tweak.bound_details_right_padding(2),
            rleak=True,
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D5")
    with baca.scope(m[9]) as o:
        for run in baca.select.runs(o):
            baca.spanners.text(
                run,
                "A =|",
                baca.tweak.staff_padding(5.5),
                rleak=True,
            )
    with baca.scope(m[10]) as o:
        with baca.scope(o.leaves()[1:]) as u:
            baca.spanners.text(
                u,
                "A =|",
                baca.tweak.staff_padding(5.5),
                right_broken=True,
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(8),
                right_broken=True,
                rleak=True,
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.glissando(
            o.run(0),
            hide_middle_stems=True,
        )
        baca.glissando(
            o.run(1),
            hide_middle_stems=True,
        )
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-paper-towel-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            '"f"',
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.brake_drum_staff_position(o)
        baca.glissando(
            o.pleaves(),
            hide_middle_stems=True,
        )
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-brake-drum-paper-towel-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.pheads(), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.pheads(), "p")
        baca.override.dls_staff_padding(o, 4 + 3)
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "B4:C5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[8]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o, 4 + 3)


def va(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches(o, "D4 Eb4")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = baca.select.pheads(o)
        pheads = [_ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))]
        baca.alternate_bow_strokes(
            pheads,
            baca.tweak.staff_padding(1.5),
            full=True,
        )
        baca.spanners.half_clt(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(5.5),
            rleak=True,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F4")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            baca.spanners.xfb(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m.get(9, 10)) as o:
        baca.glissando(
            o.rleaves(),
            "D4",
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.dynamic(o.phead(0), "pp")
        baca.spanners.bow_speed(
            o,
            "poco scr. =|",
            baca.tweak.staff_padding(3),
            right_broken=True,
            rleak=True,
        )


def vc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )


def vc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.spanners.damp(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )


def cb1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            baca.tweak.staff_padding(4),
            full=True,
        )
        baca.spanners.half_clt(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            baca.tweak.staff_padding(4),
            full=True,
        )
        baca.spanners.half_clt(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def cb2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            baca.tweak.staff_padding(4),
            full=True,
        )
        baca.spanners.half_clt(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                do_not_hide_middle_note_heads=True,
            )
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            baca.tweak.staff_padding(4),
            full=True,
        )
        baca.spanners.half_clt(
            baca.select.ltleaves(o),
            baca.tweak.staff_padding(8),
            rleak=True,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [3, 3, 3, 3, 3, 3, 1, 3, 3, 3]
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
    hp(cache)
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
