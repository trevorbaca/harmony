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
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.piecewise.text(
                (),
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                bookend=False,
                pieces=[run],
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#5")
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.rspanners.trill(
            baca.select.tleaves(o),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D5")
    with baca.scope(m[9]) as o:
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.piecewise.text(
                (),
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                bookend=False,
                pieces=[run],
            )
    with baca.scope(m[10]) as o:
        with baca.scope(o.leaves()[1:]) as u:
            baca.piecewise.text(
                (),
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                bookend=False,
                pieces=[baca.select.rleak(u)],
                right_broken=True,
            )
            baca.rspanners.metric_modulation(
                u,
                right_broken=True,
                staff_padding=8,
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.flat_glissando(
            o.run(0),
            hide_stem_selector=lambda _: baca.select.pleaves(o.run(0))[1:-2],
        )
        baca.flat_glissando(o.run(1), hide_middle_stems=True)
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.brake_drum_staff_position(o)
        baca.flat_glissando(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.tam_tam_staff_position(o)
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(o.pheads(), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.tam_tam_staff_position(o)
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
        baca.pitch(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[8]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
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
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = baca.select.pheads(o)
        pheads = [_ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            full=True,
        )
        baca.rspanners.half_clt(
            baca.select.ltleaves(o),
            staff_padding=5.5,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F4")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.piecewise.bow_speed(
                (),
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=[run],
            )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D4"),
        baca.flat_glissando(
            o.rleaves(),
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.dynamic(o.phead(0), "pp")
        baca.piecewise.bow_speed(
            (),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=[o.rleaves()],
            right_broken=True,
        )


def vc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.rspanners.damp(
                run,
                staff_padding=3,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.spanners.hairpin(
            o.tleaves(),
            "f <| fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.rspanners.damp(
                run,
                staff_padding=3,
            )


def vc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.rspanners.damp(
                run,
                staff_padding=3,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.spanners.hairpin(
            o.tleaves(),
            "f <| fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            baca.rspanners.damp(
                run,
                staff_padding=3,
            )


def cb1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.rspanners.half_clt(
            baca.select.ltleaves(o),
            staff_padding=8,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.spanners.hairpin(
            o.tleaves(),
            "f <| fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.rspanners.half_clt(
            baca.select.ltleaves(o),
            staff_padding=8,
        )


def cb2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.rspanners.half_clt(
            baca.select.ltleaves(o),
            staff_padding=8,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.spanners.hairpin(
            o.tleaves(),
            "f <| fff-scratch",
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.rspanners.half_clt(
            baca.select.ltleaves(o),
            staff_padding=8,
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
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
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
