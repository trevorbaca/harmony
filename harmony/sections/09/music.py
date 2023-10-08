import abjad
import baca

from harmony import library

#########################################################################################
########################################### 09 ##########################################
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
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.open_volta(skips[1 - 1], first_measure_number)
    baca.close_volta(skips[2 - 1], first_measure_number, site="after")
    baca.double_volta(skips[2 - 1], first_measure_number)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [3, 6, 3, 3, 6, 3],
        time_signatures(2),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
        time_signatures(1),
    )
    rhythm(
        voice,
        [2, -2, -8, 2, -2, 2, -2, -4],
        time_signatures(2),
    )


def PERC2(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    rhythm(
        voice,
        [3, -6, 3, 3, -6, 3],
        time_signatures(2),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1),
        [-6, -2, 4, "-"],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(2))


def VA(voice, time_signatures):
    rhythm(
        voice,
        [-4, "+"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-12, T([12, -4], -4)],
        time_signatures(2),
    )
    baca.section.append_anchor_note(voice)


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-12, T([12, -4], -4)],
        time_signatures(2),
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-12, T([12, -4], -4)],
        time_signatures(2),
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-12, T([12, -4], -4)],
        time_signatures(2),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [-4, 8, "-"],
        time_signatures(1),
    )
    rhythm(
        voice,
        [-9, 3, -9, 3],
        time_signatures(2),
    )
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
            for run in abjad.select.runs(o):
                leaf = baca.select.rleaf(run, -1)
                baca.stop_on_string(leaf)
            baca.hairpin(baca.select.tleaves(o, rleak=True), "o<| ff")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 2)) as o:
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(6, 4), (6, 4)]
    time_signatures = baca.section.wrap(time_signatures)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        score_persistent_indicators=previous_persistent_indicators["Score"],
    )
    GLOBALS(score["Skips"], first_measure_number)
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
