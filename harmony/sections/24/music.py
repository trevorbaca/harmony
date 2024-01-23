import abjad
import baca

from harmony import library

#########################################################################################
########################################### 24 ##########################################
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


def GLOBALS(skips):
    stage_markup = (
        ("[X.1-3]", 1),
        ("[<V.6]", 4, "#darkgreen"),
        ("[X.4-5]", 5),
        ("[X.6-8]", 7),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2.=4"),
        (4 - 1, "72"),
        (4 - 1, "3:2(4)=4"),
        (5 - 1, "48"),
        (5 - 1, "4.=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        6 * [2, 3, -3],
        time_signatures(1, 3),
    )
    mmrests(voice, time_signatures(4))
    rhythm(
        voice,
        14 * [2, 2, -2],
        time_signatures(5, 9),
    )


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        6 * [5, -3],
        time_signatures(1, 3),
    )
    music = baca.make_notes(time_signatures(4))
    voice.extend(music)
    rhythm(
        voice,
        14 * [3, -3],
        time_signatures(5, 9),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        2 * [2, -8, 2, -3, 2, -8],
        time_signatures(1, 3),
    )
    mmrests(voice, time_signatures(4))
    rhythm(
        voice,
        [1, "-"],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))
    rhythm(
        voice,
        [16, 16, 16, T([-4, 2], -2)],
        time_signatures(7, 9),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    rhythm(
        voice,
        2 * [1, -9, 1, -4, 1, -9],
        time_signatures(1, 3),
    )
    mmrests(voice, time_signatures(4))
    rhythm(
        voice,
        14 * [3, -3],
        time_signatures(5, 9),
    )


def va_vc2_cb2(voice, time_signatures):
    components = rhythm(
        voice,
        4 * [2, 2, -10],
        time_signatures,
    )
    library.unbeam(components)
    library.written(components, (1, 4), [0, 1, 4, 5])
    library.invisible(components, [1, 5])


def VA(voice, time_signatures):
    va_vc2_cb2(voice, time_signatures(1, 3))
    rhythm(
        voice,
        AG([2], 12),
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5, 9),
        *(3, 4),
    )


def vc1_cb1(voice, time_signatures):
    rhythm(
        voice,
        [T([4, 4, 4], -4), -4, -2, 2, rt(2), -2, -8, w(2, 4), h(rt(2))]
        + [-8, T([-4, 4, 4], -4)],
        time_signatures,
        do_not_rewrite_meter=True,
    )


def VC1(voice, time_signatures):
    vc1_cb1(voice, time_signatures(1, 3))
    rhythm(
        voice,
        [4, "-"],
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5, 9),
        *(3, 3),
    )


def VC2(voice, time_signatures):
    va_vc2_cb2(voice, time_signatures(1, 3))
    rhythm(
        voice,
        AG([2], 12),
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5, 9),
        *(3, 2),
    )


def CB1(voice, time_signatures):
    vc1_cb1(voice, time_signatures(1, 3))
    rhythm(
        voice,
        [4, "-"],
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5, 9),
        *(3, 1),
    )


def CB2(voice, time_signatures):
    va_vc2_cb2(voice, time_signatures(1, 3))
    rhythm(
        voice,
        AG([2], 12),
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5, 9),
        *(3, 0),
    )


def bfl(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o, "F5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                (),
                "niente o< mf >o",
                pieces=baca.select.lparts(run, [1, 2 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                (),
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 9"),
                pieces=baca.select.lparts(run, [1, 2 + 1]),
            )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                (),
                "niente o< p >o",
                forbid_al_niente_to_bar_line=True,
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                (),
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 10"),
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
    with baca.scope(m.get(1, 9)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 3)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[4]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 9)) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 9)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 3)) as o:
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(run, "o<| mf")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2])
        baca.dynamic(o.phead(0), "ff")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(7, 9)) as o:
        baca.staff_lines(o.leaf(0), 1)
        with baca.scope(o.run(0)) as u:
            library.tam_tam_staff_position(u)
            baca.flat_glissando(u)
        library.purpleheart_staff_positions(o.leaves()[-2:], [2])
        baca.stem_tremolo(abjad.select.get(o.pheads(), [0, 2])),
        baca.dynamic(o.phead(0), "p")
        baca.override.dls_staff_padding(o.leaves()[:-2], 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        with baca.scope(o.pleaf(-1)) as u:
            baca.dynamic(u, "ff")
            baca.override.dls_staff_padding(u, 5)
        baca.staff_lines(o.leaf(-2), 3)
        baca.markup(
            o.leaf(-1),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[-1:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
        )


def hp(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o, "A4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            abjad.select.get(o.pheads(), [0], 3),
            "mf",
        )
        baca.dynamic(
            abjad.select.get(o.pheads(), [1], 3),
            "mp",
        )
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def va(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "F4")
        # NOTE: text spanner must currently lexically precede pitched trill
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="M2",
            )
    with baca.scope(m[4]) as o:
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#3")
        baca.scp_spanner(
            (),
            "P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )


def vc1(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.override.tuplet_bracket_down(o)
        pheads = abjad.select.get(baca.select.pheads(o), [0, 1, 2, -2, -1])
        with baca.scope(pheads) as u:
            baca.pitch(u, "F4")
            baca.triple_staccato(u)
        # NOTE: text spanner must currently come before pitched trill spanner
        baca.scp_spanner(
            o.leaves()[5:12],
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        for run in baca.select.runs(o)[1:-1]:
            run = baca.select.rleak(run)
            baca.pitch(run, "F4")
            baca.hairpin(
                (),
                "niente o<| mp |>o",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="M2",
            )
        runs = abjad.select.get(
            abjad.select.runs(baca.select.rleak(o.leaves())), [0, -1]
        )
        for run in runs:
            baca.scp_spanner(
                baca.select.rleak(run),
                "P =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F4"),
        baca.triple_staccato(o.phead(0))
    with baca.scope(m.get(3, 4)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[2:],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            (),
            "P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )


def vc2(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F4")
        # NOTE: text spanner must currently lexically precede pitched trill
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="M2",
            )
        # NOTE: current clef / after-grace contention:
        baca.clef(o.leaf(-1), "bass")
    with baca.scope(m[4]) as o:
        baca.pitches(o, "D3 C#3")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            (),
            "P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )


def cb1(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.override.tuplet_bracket_down(o)
        pheads = abjad.select.get(baca.select.pheads(o), [0, 1, 2, -2, -1])
        with baca.scope(pheads) as u:
            baca.pitch(u, "E4", do_not_transpose=True)
            baca.triple_staccato(u)
        # NOTE: text spanner must currently come before pitched trill spanner
        baca.scp_spanner(
            o.leaves()[5:12],
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        for run in baca.select.runs(o)[1:-1]:
            run = baca.select.rleak(run)
            baca.pitch(run, "E4", do_not_transpose=True)
            baca.hairpin(
                (),
                "niente o<| mp |>o",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="m2",
            )
        runs = abjad.select.get(
            abjad.select.runs(baca.select.rleak(o.leaves())), [0, -1]
        )
        for run in runs:
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.scp_spanner(
                run,
                "P =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "E4", do_not_transpose=True)
        baca.triple_staccato(o.phead(0))
    with baca.scope(m.get(3, 4)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[2:],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            (),
            "P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )


def cb2(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "E4", do_not_transpose=True)
        # NOTE: text spanner must currently lexically precede pitched trill
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="m2",
            )
        # NOTE: current clef / after-grace contention:
        baca.clef(o.leaf(-1), "bass")
    with baca.scope(m[4]) as o:
        baca.pitches(o, "D3 C#3")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            (),
            "O -> P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=baca.select.plts(o.leaves()),
        )


def composites(cache):
    for name in ["va", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(1, 3)) as o:
            baca.staff_lines(o.leaf(0), 5)
    for name in ["va", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 3)) as o:
            for run in baca.select.runs(o):
                run = baca.select.rleak(run)
                baca.hairpin(
                    (),
                    "niente o<| mp |>o",
                    pieces=baca.select.lparts(run, [1, 1 + 1]),
                )
    for name in ["va", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            if name in ("va", "vc2"):
                tweak = abjad.Tweak(r"- \tweak staff-padding 3")
            elif name == "cb2":
                tweak = abjad.Tweak(r"- \tweak staff-padding 5.5")
            baca.scp_spanner(
                o.leaves(),
                "T2 -> T4",
                tweak,
                bookend=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(5, 9)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.flat_glissando(o)
            baca.dynamic(o.phead(0), "pp")
        with baca.scope(m.get(7, 8)) as o:
            baca.hairpin(o.rleaves(), "(pp) < f")
        with baca.scope(m.get(1, 9)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 4, 4, 3, 4, 4, 4, 4, 5]
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
    hp(cache["hp"])
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
