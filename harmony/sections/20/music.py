import abjad
import baca

from harmony import library

#########################################################################################
######################################### 20 [T] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
    ]
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


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
        baca.metronome_mark(skip, item, library.manifests)


def BFL(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 2, 2],
        written_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    music = library.make_phjc_rhythm(
        time_signatures(1),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        ["-", 4, 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [2, -20, 2, -24],
    )
    voice.extend(music)


def VA(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [2, "+"],
        extra_counts=[1],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 8),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(9, 10),
        [-4, 2, -4, 6, 6, 6, 6],
        extra_counts=[2, 0, 0, 0, 0, 0, 0, 0],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [10, "+"],
        extra_counts=[2],
        denominator=None,
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [3, "+"],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)


def CB2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = baca.parse(
        "r4 c16. r32 r8 c16. r32 r8",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3, 10),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E5")
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< f >o niente",
                pieces=baca.select.lparts(run, [1, 2]),
            )
            if i == 0:
                baca.trill_spanner(
                    run,
                    alteration="m2",
                )
            elif i == 1:
                baca.trill_spanner(
                    run,
                    abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
                    alteration="m2",
                )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "Gqs5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="A5",
            )
    with baca.scope(m.get(3, 10)) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp-sempre")
        baca.covered_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2, -2, 0])
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< pp >o niente",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m.get(3, 10)) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.accent(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.metric_modulation_spanner(
            o.leaves()[:3],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.pheads())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(3, 10)) as o:
        baca.tuplet_bracket_staff_padding(o, 3)
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up(o)
        baca.pitches(o, "F5 E5 Eb5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D1")
        baca.ottava_bassa(o.tleaves())
        baca.ottava_bracket_staff_padding(o, 8)
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(1, 2)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[1:],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(3, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 4)


def va(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "Bb3")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[2]) as o:
        baca.tuplet_bracket_up(o)
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "o< mf")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 8)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        with baca.scope(o.rleaves(count=2)) as u:
            baca.tuplet_bracket_staff_padding(u, 2)
            library.bridge_staff_position(u)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m.get(9, 10)) as o:
        baca.accent(o.phead(0))
        baca.stem_tremolo(o.pleaf(0))
        with baca.scope(o.leaf(3)) as u:
            baca.clef(u, "alto")
            baca.staff_lines(u, 5),
        with baca.scope(o.plts()[1:]) as u:
            baca.pitch(u, "E3")
            baca.dls_staff_padding(u, 4)
        baca.triple_staccato(o.pheads()[1:])
        baca.dynamic(o.phead(1), "p")
        with baca.scope(baca.select.rleak(o.leaves()[3:])) as u:
            baca.scp_spanner(
                u,
                "P4 -> T1",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
                bookend=True,
                right_broken=True,
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            )


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Aqf4")
        baca.markup(o.pleaf(0), r"\baca-eleven-e-flat")
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 10)) as o:
        baca.tuplet_bracket_staff_padding(o, 2)
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 6)


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F4")
    with baca.scope(m[2]) as o:
        baca.tuplet_bracket_staff_padding(o, 2)
        baca.pitches(o, "Gb4 F4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "o< mf")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 10)) as o:
        baca.tuplet_bracket_staff_padding(o, 2)
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 6)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dtqf4")
    with baca.scope(m[2]) as o:
        baca.pitches(o, "D2 C#2")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "o< mf")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(3, 10)) as o:
        baca.dynamic(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.rest_extra_offset(o.rest(-1), (-1.5, 0))


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Eb2")
        baca.dls_staff_padding(o, 4)
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
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.dls_staff_padding(o.leaves()[1:], 6)
    with baca.scope(m.get(2, 4)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.leaves(o)[1:]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[10]) as o:
        baca.rest_extra_offset(o.rest(-1), (-1.5, 0))


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
                baca.hairpin(run, "o<| f")
        with baca.scope(m.get(3, 10)) as o:
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, time_signatures = make_empty_score()
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
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
    baca.section.reapply(
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
