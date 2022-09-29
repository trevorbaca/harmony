import abjad
import baca

from harmony import library

#########################################################################################
######################################### 09 [I] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (6, 4),
        (6, 4),
    ]
    measures = baca.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, first_measure_number):
    stage_markup = (
        ("[I.1]", 1),
        ("[I.2]", 2),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    baca.open_volta(skips[1 - 1], first_measure_number)
    baca.close_volta(skips[2 - 1], first_measure_number, site="after")
    baca.double_volta(skips[2 - 1], first_measure_number)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [3, 6, 3, 3, 6, 3],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [2, -2, -4, -4, 2, -2, 2, -2, -4],
    )
    voice.extend(music)


def PERC2(voice, measures):
    music = baca.make_mmrests(measures(1))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [3, -6, 3, 3, -6, 3],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-6, -2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2))
    voice.extend(music)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-4, "+"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-9, 3, -9, 3],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "G3")
        with baca.scope(baca.select.rleak(o.leaves()[:2])) as u:
            baca.covered_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                left_broken=True,
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                left_broken=True,
            )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Gb3")
        baca.color_fingerings(o.pheads(), [0, 1, 2])
        baca.dynamic(o.phead(0), "mp")
        baca.covered_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.accent(o.pheads())
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pheads())
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o.rleaves(), allow_hidden=True)
        baca.accent(o.pheads()[:-1])
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-sponge-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        baca.flat_glissando(
            baca.select.rleak(o.pleaves()[-1:]),
            right_broken=True,
        )
        baca.stem_tremolo(o.pleaf(-1))
        baca.dynamic(o.pleaf(-1), "p")
        baca.markup(
            o.pleaf(-1),
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "<B5 C#6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )


def va(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "C#4")
        baca.flat_glissando(o.pleaves())
        baca.hairpin(baca.select.tleaves(o, rleak=True), "mf >o niente")
        baca.markup(
            o.pleaf(0),
            r"\harmony-match-harp-decay-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "C4")


def vc1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "B4")


def vc2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "Dqs4")
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-a",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
        )


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E3")
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "F3")


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A1")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitches(o, "Fqs5 Gqf5", do_not_transpose=True)
        baca.note_head_style_harmonic(o.pleaves())
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "ff")
        baca.pizzicato_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak staff-padding 6.5"),
        )
        baca.markup(
            o.pheads(),
            r"\baca-string-iii-markup",
            direction=abjad.DOWN,
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-thirteen-a",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
        baca.markup(
            o.phead(-1),
            r"\baca-fourteen-a",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.tuplet_bracket_up(o)
            baca.hairpin(baca.select.tleaves(o, rleak=True), "mp >o niente")
            with baca.scope(baca.select.rleak(o.leaves()[-2:])) as u:
                if name in ("va", "vc1", "vc2"):
                    baca.bow_speed_spanner(
                        u,
                        "XFB =|",
                        abjad.Tweak(r"- \tweak staff-padding 5.5"),
                    ),
                    baca.metric_modulation_spanner(
                        u,
                        abjad.Tweak(r"- \tweak staff-padding 8"),
                        right_broken=True,
                    )
                elif name == "cb1":
                    baca.bow_speed_spanner(
                        u,
                        "XFB =|",
                        abjad.Tweak(r"- \tweak staff-padding 8"),
                    )
                    baca.metric_modulation_spanner(
                        u,
                        abjad.Tweak(r"- \tweak staff-padding 10.5"),
                        right_broken=True,
                    )
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.stop_on_string(baca.select.leaf_in_each_rleak_run(o, -1))
            baca.hairpin(baca.select.tleaves(o, rleak=True), "o<| ff")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 2)) as o:
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, measures = make_empty_score()
    first_measure_number = baca.section.set_up_score(
        score,
        measures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], first_measure_number)
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
    timing = baca.build.Timing()
    score, measures = make_score(
        environment.first_measure_number,
        environment.previous_persist["persistent_indicators"],
        timing,
    )
    metadata, persist = baca.section.postprocess_score(
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
        timing=timing,
        transpose_score=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        lilypond_file,
        metadata,
        persist,
        timing,
        environment.arguments,
    )


if __name__ == "__main__":
    main()
