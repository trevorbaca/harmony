import abjad
import baca

from harmony import library

#########################################################################################
######################################### 16 [P] ########################################
#########################################################################################

stage_markup = (
    ("[P.1-6]", 1),
    ("[<O.4]", 8, "#darkgreen"),
    ("[P.7-8]", 9),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
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
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator,
    accumulator.manifests(),
    accumulator.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

rests = score["Rests"]
for index, string in ((7 - 1, "fermata"),):
    baca.global_fermata_function(rests[index], string)


def BFL(voice):
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


def PERC1(voice):
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


def PERC2(voice):
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


def HP(voice):
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


def VA(voice):
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


def VC1(voice):
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


def VC2(voice):
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


def CB1(voice):
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


def CB2(voice):
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
    accumulator(
        ("bfl", (1, 6)),
        baca.pitch("D5"),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", 8),
        baca.pitch("F#5"),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", (9, 10)),
        baca.pitch("D5"),
        baca.new(
            baca.text_spanner(
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                map=lambda _: baca.select.runs(_),
                selector=lambda _: baca.select.rleaves(_),
            ),
            measures=9,
        ),
        baca.new(
            baca.text_spanner(
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            measures=10,
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
        ),
    )
    accumulator(
        ("bfl", (1, 10)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 6)),
        baca.flat_glissando(
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-2],
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.flat_glissando(
            hide_middle_stems=True,
            selector=lambda _: abjad.select.run(_, 1),
        ),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 8),
        library.slate_staff_position(),
        baca.dynamic(
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (9, 10)),
        library.brake_drum_staff_position(),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (1, 10)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 6)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.tam_tam_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic(
            "pp",
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (9, 10)),
        library.tam_tam_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("perc2", (1, 10)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", (1, 6)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("F1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dls_staff_padding(4 + 3),
    )
    accumulator(
        ("hp", 8),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<B4 C5>"),
        baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (9, 10)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("F1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 3),
    )


def va(m):
    accumulator(
        ("va", (1, 6)),
        baca.pitches("D4 Eb4"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", 8),
        baca.pitch("F4"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", (9, 10)),
        baca.pitch("D4"),
        baca.flat_glissando(
            hide_middle_stems=True,
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 6)),
        baca.pitch("D#3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc1", 8),
        baca.pitch("A2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc1", (9, 10)),
        baca.pitch("D#3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 6)),
        baca.pitch("C#3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 8),
        baca.pitch("G2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc2", (9, 10)),
        baca.pitch("C#3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 6)),
        baca.pitches("E3 D#3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb1", 8),
        baca.pitch("G#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", (9, 10)),
        baca.pitches("E3 D#3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 6)),
        baca.pitches("C#3 D3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb2", 8),
        baca.pitch("F#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb2", (9, 10)),
        baca.pitches("C#3 D3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
        baca.dls_staff_padding(4),
    )


def main():
    BFL(accumulator.voice("bfl"))
    PERC1(accumulator.voice("perc1"))
    PERC2(accumulator.voice("perc2"))
    HP(accumulator.voice("hp"))
    VA(accumulator.voice("va"))
    VC1(accumulator.voice("vc1"))
    VC2(accumulator.voice("vc2"))
    CB1(accumulator.voice("cb1"))
    CB2(accumulator.voice("cb2"))
    previous_persist = baca.previous_metadata(__file__, file_name="__persist__")
    baca.reapply(accumulator, accumulator.manifests(), previous_persist, voice_names)
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        accumulator.voice_abbreviations,
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


if __name__ == "__main__":
    main()
    metadata, persist, score, timing = baca.build.section(
        score,
        accumulator.manifests(),
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=accumulator.commands,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[7],
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
