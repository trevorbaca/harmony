import abjad
import baca

from harmony import library

#########################################################################################
######################################### 08 [H] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (3, 4),
            (4, 4),
            (3, 4),
            (4, 4),
            (3, 4),
            (4, 4),
            (1, 4),
            (3, 4),
            (3, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[H.1-6]", 1),
        ("[H.7-8]", 8),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "5:3(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    baca.open_volta_function(skips[8 - 1], first_measure_number)
    for index, string in ((7 - 1, "short"),):
        baca.global_fermata_function(rests[index], string)
    wrappers = baca.markup_function(
        skips[7 - 1],
        r"\harmony-text-seven",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 7))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (2, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(8, 9),
        [-8, -4, 8, -4, 8],
        preprocessor=preprocessor,
        extra_counts=[0, 4, 4],
        denominator=None,
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [1, -11, -1, 1, -14],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 9))
    voice.extend(music)


def PERC2(voice, accumulator):
    music = baca.make_notes(accumulator.get(1, 6))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2, 6),
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def VC2(voice, accumulator):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (4, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 2),
        ["+", 1],
        preprocessor=preprocessor,
        do_not_rewrite_meter=True,
        written_wholes=[1],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [4, 4, 8, 4, 4, 8, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 6),
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [12, 16, 12, 15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[-2],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def bfl(m):
    with baca.scope(m.get(8, 9)) as o:
        baca.pitch_function(o, "Ab3")
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 4)
        with baca.scope(baca.select.rleak(o.leaves()[1:])) as u:
            baca.covered_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                right_broken=True,
            )
            baca.metric_modulation_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            )


def perc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.brake_drum_staff_position_function(o)
        baca.dynamic_function(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak X-extent #'(0 . 0)"),
        )
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def perc2(m):
    with baca.scope(m.get(1, 6)) as o:
        library.tam_tam_staff_position_function(o)
        baca.flat_glissando_function(
            o,
            hide_middle_stems=True,
            left_broken=True,
        )
        baca.stem_tremolo_function(o.pleaf(-1))
    with baca.scope(m.get(8, 9)) as o:
        library.tam_tam_staff_position_function(o)
        baca.flat_glissando_function(o, hide_middle_stems=True)
        baca.stem_tremolo_function(abjad.select.get(o.pleaves(), [0, -1]))
        baca.dynamic_function(o.phead(0), "pp")
        baca.dls_staff_padding_function(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "<B5 C6 D6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[1]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "p < mf > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[3]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[5]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < ff > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(8, 9)) as o:
        baca.pitch_function(o, "<C6 Db6 Eb6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 9)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "pp")
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding_function(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "p")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[2]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < mf > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding_function(o, 4)
        baca.pitch_function(o, "<B4 C5 D5>")
        cache.rebuild()
        m = cache[name]


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        # TODO: promote into rhythm:
        baca.repeat_tie_function(o.leaf(0))
        baca.pitch_function(o, "Bb4")
        baca.espressivo_function(o.pheads()[1:])
        baca.metric_modulation_spanner_function(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m.get(2, 6)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[2]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "p < mf > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(2, 9)) as o:
        baca.pitch_function(o, "<C5 Db5 Eb5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding_function(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        # TODO: promote into rhythm:
        baca.repeat_tie_function(o.leaf(0))
        baca.pitch_function(o, "B2")
        baca.hairpin_function(
            o.leaves()[-2:],
            "(p) >o",
            bookend=False,
        )
        baca.damp_spanner_function(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m.get(3, 6)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic_function(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(3, 9)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "<B4 C5 D5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding_function(o, 4)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m.get(1, 3)) as o:
        baca.repeat_tie_function(o.leaf(0))
        baca.pitch_function(o, "Bb4", do_not_transpose=True)
        baca.espressivo_function(o.pheads()[1:])
    with baca.scope(m.get(4, 6)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "p < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(4, 9)) as o:
        baca.pitch_function(o, "<C5 Db5 Eb5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding_function(o, 4)


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.pitch_function(o, "Bb2")
        baca.hairpin_function(o.leaves()[-2:], "(p) >o", bookend=False)
        baca.damp_spanner_function(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.stem_tremolo_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[5]) as o:
        baca.dynamic_function(o.phead(0), "p")
    with baca.scope(m[6]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "<B4 C5 D5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding_function(o, 4)


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(8, 9)) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.stem_tremolo_function(o.pleaves())
            baca.dynamic_function(o.phead(0), "pp")
            baca.markup_function(
                o.pleaf(0),
                r"\baca-quasi-bisb-ancora-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            )


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    first_measure_number = baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"], first_measure_number)
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
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
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
