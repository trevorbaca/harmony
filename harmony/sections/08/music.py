import abjad
import baca

from harmony import library

#########################################################################################
########################################### 08 ##########################################
#########################################################################################

T = library.T
h = library.h
mmrests = library.mmrests
rhythm = library.rhythm
rt = library.rt
w = library.w


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
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.open_volta(skips[8 - 1], first_measure_number)
    for index, string in ((7 - 1, "short"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[7 - 1],
        r"\harmony-text-seven",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    mmrests(voice, time_signatures(1, 7))
    durations = [_.duration for _ in time_signatures(8, 9)]
    durations = [sum(durations)]
    weights = abjad.durations([(2, 4), (2, 4), (2, 4)])
    durations = abjad.sequence.split(durations, weights, cyclic=True, overhang=True)
    music = library.make_sixteenths(
        time_signatures(8, 9),
        [-8, -4, 8, -4, 8],
        tuplet_ratio_denominator=None,
        do_not_rewrite_meter=True,
        durations=durations,
        extra_counts=[0, 4, 4],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 6),
        [1, -11, -1, 1, -14],
    )
    voice.extend(music)
    mmrests(voice, time_signatures(7, 9))


def PERC2(voice, time_signatures):
    music = baca.make_notes(time_signatures(1, 6))
    voice.extend(music)
    mmrests(voice, time_signatures(7))
    music = baca.make_notes(time_signatures(8, 9))
    voice.extend(music)


def HP(voice, time_signatures):
    rhythm(
        voice,
        3 * [w(6, 12), h(w(6, 4)), 16],
        time_signatures(1, 6),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(7))
    music = baca.make_notes(time_signatures(8, 9))
    voice.extend(music)


def VA(voice, time_signatures):
    rhythm(
        voice,
        3 * [12, w(8, 16), h(w(8, 4))],
        time_signatures(1, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    music = baca.make_notes(time_signatures(8, 9))
    voice.extend(music)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [rt(4), 4, 4],
        time_signatures(1),
    )
    rhythm(
        voice,
        (3 * [12, w(8, 16), h(w(8, 4))])[1:],
        time_signatures(2, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    music = baca.make_notes(time_signatures(8, 9))
    voice.extend(music)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [rt(12), rt(w(15, 16)), h(w(1, 4))],
        time_signatures(1, 2),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        (3 * [12, w(8, 16), h(w(8, 4))])[3:],
        time_signatures(3, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    music = baca.make_notes(time_signatures(8, 9))
    voice.extend(music)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 3),
        [4, 4, 8, 4, 4, 8, 4, 4],
    )
    voice.extend(music)
    rhythm(
        voice,
        (3 * [12, w(8, 16), h(w(8, 4))])[4:],
        time_signatures(4, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    music = baca.make_notes(time_signatures(8, 9))
    voice.extend(music)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [rt(12), rt(16), rt(12), rt(w(15, 16)), h(w(1, 4))],
        time_signatures(1, 4),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        (3 * [12, w(8, 16), h(w(8, 4))])[6:],
        time_signatures(5, 6),
    )
    mmrests(voice, time_signatures(7), head=True)
    music = baca.make_notes(time_signatures(8, 9))
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
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[3]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[5]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff > p",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
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
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
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
        baca.pitch(o, "Bb4")
        baca.espressivo(o.pheads()[1:])
        baca.metric_modulation_spanner(
            o.rleaves(),
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
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
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[4]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < f > p",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
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
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
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
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "(p) < ff >o niente",
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
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
            pieces=baca.select.lparts(o.rleaves(), [1, 1 + 1]),
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
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [3, 4, 3, 4, 3, 4, 1, 3, 3]
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


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
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


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=40, distances=distances),
        ),
        baca.page(
            2,
            baca.system(measure=8, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([7], (1, 288)),),
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
