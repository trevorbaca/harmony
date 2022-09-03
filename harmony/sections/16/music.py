import abjad
import baca

from harmony import library

#########################################################################################
######################################### 16 [P] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
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
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[P.1-6]", 1),
        ("[<O.4]", 8, "#darkgreen"),
        ("[P.7-8]", 9),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, string in ((7 - 1, "fermata"),):
        baca.global_fermata_function(rests[index], string)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.damp_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [41, -7, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        [12, 4, 4, 1, "-"],
    )
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.duration_color(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 8))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.duration_color(),
    )
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.duration_color(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.duration_color(),
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.glissando_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(9, 10))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.damp_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.damp_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.glissando_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        library.glissando_counts(),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch_function(o, "D5")
        baca.dynamic_function(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.text_spanner_function(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "F#5")
        baca.dynamic_function(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.trill_spanner_function(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch_function(o, "D5")
    with baca.scope(m[9]) as o:
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.text_spanner_function(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m[10]) as o:
        with baca.scope(baca.select.rleak(o.leaves()[1:])) as u:
            baca.text_spanner_function(
                u,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                right_broken=True,
            )
            baca.metric_modulation_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.flat_glissando_function(
            o.run(0),
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-2],
        )
        baca.flat_glissando_function(o.run(1), hide_middle_stems=True)
        library.brake_drum_staff_position_function(o)
        baca.dynamic_function(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position_function(o)
        baca.dynamic_function(
            o.phead(0),
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.brake_drum_staff_position_function(o)
        baca.flat_glissando_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "p")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.tam_tam_staff_position_function(o)
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.pheads(), "pp")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(9, 10)) as o:
        library.tam_tam_staff_position_function(o)
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "pp")
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "F1")
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.pheads(), "p")
        baca.dls_staff_padding_function(o, 4 + 3)
    with baca.scope(m[8]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[8]) as o:
        baca.double_flageolet_function(o.phead(0))
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 4 + 2)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(9, 10)) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "F1")
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "p")
        baca.dls_staff_padding_function(o, 4 + 3)


def va(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches_function(o, "D4 Eb4")
        for run in baca.select.runs(o):
            baca.glissando_function(run, allow_repeats=True)
        baca.dynamic_function(o.phead(0), "ppp")
        pheads = baca.select.pheads(o)
        pheads = [_ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))]
        baca.alternate_bow_strokes_function(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            full=True,
        )
        baca.half_clt_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "F4")
        baca.dynamic_function(o.phead(0), "p")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner_function(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch_function(o, "D4"),
        baca.flat_glissando_function(
            o.rleaves(),
            hide_middle_stems=True,
            right_broken=True,
        )
        baca.dynamic_function(o.phead(0), "pp")
        baca.bow_speed_spanner_function(
            o.rleaves(),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )


def vc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch_function(o, "D#3")
        baca.dynamic_function(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner_function(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        baca.hairpin_function(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch_function(o, "D#3")
        baca.dynamic_function(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner_function(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def vc2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch_function(o, "C#3")
        baca.dynamic_function(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner_function(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        baca.hairpin_function(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m.get(9, 10)) as o:
        baca.pitch_function(o, "C#3")
        baca.dynamic_function(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.tleaves(run))
            baca.damp_spanner_function(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def cb1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches_function(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando_function(run, allow_repeats=True)
        baca.dynamic_function(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes_function(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.half_clt_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        baca.hairpin_function(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m.get(9, 10)) as o:
        baca.pitches_function(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando_function(run, allow_repeats=True)
        baca.dynamic_function(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes_function(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.half_clt_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )


def cb2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitches_function(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando_function(run, allow_repeats=True)
        baca.dynamic_function(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes_function(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.half_clt_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        baca.hairpin_function(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m.get(9, 10)) as o:
        baca.pitches_function(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando_function(run, allow_repeats=True)
        baca.dynamic_function(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes_function(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.half_clt_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
            baca.dls_staff_padding_function(o, 4)


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
    baca.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
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
    return score, accumulator


def main():
    previous_metadata = baca.previous_metadata(__file__)
    first_measure_number = previous_metadata["final_measure_number"] + 1
    previous_persist = baca.previous_persist(__file__)
    score, accumulator = make_score(
        first_measure_number, previous_persist["persistent_indicators"]
    )
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
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
        first_measure_number=first_measure_number,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)


if __name__ == "__main__":
    main()
