import abjad
import baca

from harmony import library

#########################################################################################
######################################### 08 [H] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (3, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[H.1-6]", 1),
        ("[H.7-8]", 8),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "5:3(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    baca.open_volta(skips[8 - 1], first_measure_number)
    for index, string in ((7 - 1, "short"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[7 - 1],
        r"\harmony-text-seven",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, measures):
    music = baca.make_mmrests(measures(1, 7))
    voice.extend(music)

    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split_divisions(result, [(2, 4), (2, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        measures(8, 9),
        [-8, -4, 8, -4, 8],
        preprocessor=preprocessor,
        extra_counts=[0, 4, 4],
        denominator=None,
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        [1, -11, -1, 1, -14],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7, 9))
    voice.extend(music)


def PERC2(voice, measures):
    music = baca.make_notes(measures(1, 6))
    voice.extend(music)
    music = baca.make_mmrests(measures(7))
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7))
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2, 6),
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def VC2(voice, measures):
    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split_divisions(result, [(3, 4), (4, 4)])
        return result

    music = library.make_sixteenths(
        measures(1, 2),
        ["+", 1],
        preprocessor=preprocessor,
        do_not_rewrite_meter=True,
        written_wholes=[1],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 3),
        [4, 4, 8, 4, 4, 8, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4, 6),
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 4),
        [12, 16, 12, 15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[-2],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(measures(8, 9))
    voice.extend(music)


def bfl(m):
    with baca.scope(m.get(8, 9)) as o:
        baca.pitch(o, "Ab3")
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 4)
        with baca.scope(baca.select.rleak(o.leaves()[1:])) as u:
            baca.covered_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                right_broken=True,
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            )


def perc1(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak X-extent #'(0 . 0)"),
        )
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def perc2(m):
    with baca.scope(m.get(1, 6)) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(
            o,
            hide_middle_stems=True,
            left_broken=True,
        )
        baca.stem_tremolo(o.pleaf(-1))
    with baca.scope(m.get(8, 9)) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.dynamic(o.phead(0), "pp")
        baca.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "<B5 C6 D6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[1]) as o:
        baca.hairpin(
            o.rleaves(),
            "p < mf > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[3]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(8, 9)) as o:
        baca.pitch(o, "<C6 Db6 Eb6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(8, 9)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[2]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < mf > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)
        baca.pitch(o, "<B4 C5 D5>")
        cache.rebuild()
        m = cache[name]


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        # TODO: promote into rhythm:
        baca.repeat_tie(o.leaf(0))
        baca.pitch(o, "Bb4")
        baca.espressivo(o.pheads()[1:])
        baca.metric_modulation_spanner(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m.get(2, 6)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[2]) as o:
        baca.hairpin(
            o.rleaves(),
            "p < mf > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(2, 9)) as o:
        baca.pitch(o, "<C5 Db5 Eb5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        # TODO: promote into rhythm:
        baca.repeat_tie(o.leaf(0))
        baca.pitch(o, "B2")
        baca.hairpin(
            o.leaves()[-2:],
            "(p) >o",
            bookend=False,
        )
        baca.damp_spanner(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m.get(3, 6)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(3, 9)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<B4 C5 D5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m.get(1, 3)) as o:
        baca.repeat_tie(o.leaf(0))
        baca.pitch(o, "Bb4", do_not_transpose=True)
        baca.espressivo(o.pheads()[1:])
    with baca.scope(m.get(4, 6)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o.rleaves(),
            "p < f > p",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(4, 9)) as o:
        baca.pitch(o, "<C5 Db5 Eb5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 4)) as o:
        baca.pitch(o, "Bb2")
        baca.hairpin(o.leaves()[-2:], "(p) >o", bookend=False)
        baca.damp_spanner(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.stem_tremolo(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[5]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<B4 C5 D5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(8, 9)) as o:
            baca.note_head_style_harmonic(o.pleaves())
            baca.stem_tremolo(o.pleaves())
            baca.dynamic(o.phead(0), "pp")
            baca.markup(
                o.pleaf(0),
                r"\baca-quasi-bisb-ancora-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            )


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
    GLOBALS(score["Skips"], score["Rests"], first_measure_number)
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
        previous_persistent_indicators,
        manifests=library.manifests,
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
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    composites(cache)
    return score


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
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


if __name__ == "__main__":
    main()
