import abjad
import baca

from harmony import library

#########################################################################################
######################################### 16 [P] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
        (3, 4),
        (3, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[P.1-6]", 1),
        ("[<O.4]", 8, "#darkgreen"),
        ("[P.7-8]", 9),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, string in ((7 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.damp_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        [41, -7, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        [12, 4, 4, 1, "-"],
    )
    voice.extend(music)


def PERC2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.duration_color(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7, 8))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.duration_color(),
    )
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.duration_color(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.duration_color(),
    )
    voice.extend(music)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.glissando_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(measures(9, 10))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.damp_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)


def VC2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.damp_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.glissando_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        library.glissando_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9, 10),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
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
            baca.text_spanner(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#5")
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D5")
    with baca.scope(m[9]) as o:
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.text_spanner(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m[10]) as o:
        with baca.scope(baca.select.rleak(o.leaves()[1:])) as u:
            baca.text_spanner(
                u,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                right_broken=True,
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.flat_glissando(
            o.run(0),
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-2],
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
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.tam_tam_staff_position(o)
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.pheads(), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.tam_tam_staff_position(o)
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F1")
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.pheads(), "p")
        baca.dls_staff_padding(o, 4 + 3)
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[8]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F1")
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 4 + 3)


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
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F4")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D4"),
        baca.flat_glissando(
            o.rleaves(),
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.dynamic(o.phead(0), "pp")
        baca.bow_speed_spanner(
            o.rleaves(),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )


def vc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def vc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
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
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
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
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
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
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
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
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, measures = make_empty_score()
    baca.section.set_up_score(
        score,
        measures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(voices("bfl"), measures)
    PERC1(voices("perc1"), measures)
    PERC2(voices("perc2"), measures)
    HP(voices("hp"), measures)
    VA(voices("va"), measures)
    VC1(voices("vc1"), measures)
    VC2(voices("vc2"), measures)
    CB1(voices("cb1"), measures)
    CB2(voices("cb2"), measures)
    baca.section.reapply(
        voices,
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.section.cache_leaves(
        score,
        len(measures()),
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
    return score, measures


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score, measures = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
        score,
        measures(),
        **baca.section.section_defaults(),
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
        empty_fermata_measures=True,
        environment=environment,
        global_rests_in_topmost_staff=True,
        manifests=library.manifests,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
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
