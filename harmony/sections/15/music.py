import abjad
import baca

from harmony import library

#########################################################################################
########################################### 15 ##########################################
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
        ("[O.1-2]", 1),
        ("[<L.2]", 3, "#darkgreen"),
        ("[<L.4]", 4, "#darkgreen"),
        ("[O.3-4]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        [w(6, 12), h(w(6, 12))],
        time_signatures(3),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [4, 8],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-1, 3, -8, 4, -8, -1, "+"],
        time_signatures(5, 9),
    )
    mmrests(voice, time_signatures(10))


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        [12, 16, -4],
        time_signatures(3),
    )
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), "-"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-1, 3, -8, 4, -8, -1, "+"],
        time_signatures(5, 9),
    )
    mmrests(voice, time_signatures(10))


def PERC2(voice, time_signatures):
    mmrests(voice, time_signatures(1, 3))
    rhythm(
        voice,
        3 * [2, -2],
        time_signatures(4),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(5),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1],
        rest=slice(1, None),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(6, 7),
        [1],
        [1, 2, 1, 1, 1],
        extra_counts=[1, 0],
        rest=[0, 1, -1],
    )
    mmrests(voice, time_signatures(8, 10))


def HP(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1),
        ["-", 4],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(2))
    rhythm(
        voice,
        [12, 16, -4],
        time_signatures(3),
    )
    rhythm(
        voice,
        3 * [2, -2],
        time_signatures(4),
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(5),
        ["-", 4],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(6, 8))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(9),
        ["-", 4],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(10))


def VA(voice, time_signatures):
    mmrests(voice, time_signatures(1, 3))
    rhythm(
        voice,
        3 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [5, -7, 5, -7, 37, "-"],
        time_signatures(5, 10),
    )


def VC1(voice, time_signatures):
    rhythm(
        voice,
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        3 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [3, -1, -8, 47, -1],
        time_signatures(5, 9),
    )
    mmrests(voice, time_signatures(10))


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        T([4, -4, -4, -3], "10:8"),
        time_signatures(3),
    )
    rhythm(
        voice,
        3 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [3, -1, -8, 47, -1],
        time_signatures(5, 9),
    )
    mmrests(voice, time_signatures(10))


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        T([-8, 8, -8, -8, -1], "11:8"),
        time_signatures(3),
        denominator=32,
    )
    rhythm(
        voice,
        3 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [3, -1, -8, 47, -1],
        time_signatures(5, 9),
    )
    mmrests(voice, time_signatures(10))


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        T([-4, 4, -4, -4, -2], "12:8"),
        time_signatures(3),
    )
    rhythm(
        voice,
        3 * [4],
        time_signatures(4),
    )
    rhythm(
        voice,
        [3, -1, -8, 47, -1],
        time_signatures(5, 9),
    )
    mmrests(voice, time_signatures(10))


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "E3")
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "mf")
        baca.rspanners.covered(
            baca.select.tleaves(o),
            staff_padding=3,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            "o< mp>o!",
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Dtqf5")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.hairpin(
            baca.select.lparts(o, [1, 1]),
            'o< "f">o!',
            rleak=True,
        )
        for clpart in baca.select.clparts(o, [2]):
            baca.mspanners.text(
                baca.select.lparts(clpart, [1, 1]),
                "T -> A =|",
                do_not_bookend=True,
                staff_padding=5.5,
            )
        baca.breathe(o.pleaf(1))
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o.plt(0), "E3")
        baca.pitch(o.plts()[1:], "F#5")
        baca.accent(o.phead(0))
        baca.dynamic(o.phead(0), "mf")
        baca.dynamic(o.phead(1), "p")
        baca.dynamic(
            o.phead(2),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                baca.rspanners.covered(
                    run,
                    descriptor=r"\baca-cov-markup =|",
                    staff_padding=3,
                )
            elif i == 1:
                baca.rspanners.trill(
                    run,
                )
            elif i == 2:
                baca.rspanners.trill(
                    run,
                    abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Eb4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "o<|f",
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 9)) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(7, 9)) as o:
        baca.multistage_glissando(
            o.pleaves(),
            hide_middle_stems=True,
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.dynamic(o.phead(0), '"f"')
        baca.dynamic(
            o.phead(2),
            '"f"-sempre',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[4]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 4)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2, -2, 0])
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(6, 7)) as o:
        library.purpleheart_staff_positions(o, [-2, 0, 2, 0, 2, -2])
    with baca.scope(m.get(5, 10)) as o:
        baca.override.dls_staff_padding(o, 5)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.damp(o.rest(0))
        baca.pitch(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "Eb4")
        baca.dynamic(o.phead(0), "mp")
        baca.laissez_vibrer(o.ptails())
    with baca.scope(m[4]) as o:
        baca.pitch(o, "E4")
        baca.snap_pizzicato(o.pheads())
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m[5]) as o:
        baca.dynamic(o.phead(0), "f-ancora")
    for n in [5, 9]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "<B4 C5>")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m[n]) as o:
            baca.double_flageolet(o.phead(0))
            baca.markup(
                o.pleaf(0),
                r"\baca-lv-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4 + 2)


def va(m):
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Bb3")
        baca.mspanners.scp(
            o.tleaves(),
            "T4 =|",
            staff_padding=3,
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(o, "F4")
        baca.dynamic(o.pheads()[:2], "p")
        baca.dynamic(
            o.phead(2),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        for run in baca.select.runs(o):
            baca.rspanners.xfb(
                run,
                staff_padding=3,
            )


def vc1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Aqf3")
        baca.mspanners.scp(
            o.tleaves(),
            "T4 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                baca.hairpin(
                    run,
                    "o<|f",
                    rleak=True,
                )
            elif i == 1:
                baca.hairpin(
                    run[:-1],
                    "o<|fff-scratch",
                )


def vc2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[3]) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"10:8"',
            ],
        )
        baca.pitch(o, "F3"),
        baca.triple_staccato(o.pheads())
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "P4 ||",
            staff_padding=3,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F3")
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T4 =|",
            staff_padding=3,
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                baca.hairpin(
                    run,
                    "o<|f",
                    rleak=True,
                )
            elif i == 1:
                baca.hairpin(
                    run[:-1],
                    "o<|fff-scratch",
                )


def cb1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[3]) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"11:8"',
            ],
        )
        baca.pitch(o, "Dtqf3")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak X-offset 3"),
        )
        baca.triple_staccato(o.pheads())
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "P4 ||",
            staff_padding=5.5,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Dtqf3")
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T4 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                baca.hairpin(
                    run,
                    "o<|f",
                    rleak=True,
                )
            elif i == 1:
                baca.hairpin(
                    run[:-1],
                    "o<|fff-scratch",
                )


def cb2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(
                run,
                "o<|f",
            )
    with baca.scope(m[3]) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"12:8"',
            ],
        )
        baca.pitch(o, "Eb2"),
        baca.triple_staccato(o.pheads())
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "P4 ||",
            staff_padding=3,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Dtqf3")
        baca.mspanners.scp(
            baca.select.ltleaves(o),
            "T4 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                baca.hairpin(
                    run,
                    "o<|f",
                    rleak=True,
                )
            elif i == 1:
                baca.hairpin(
                    run[:-1],
                    "o<|fff-scratch",
                )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "p")
        with baca.scope(m.get(1, 10)) as o:
            baca.override.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 4, 3, 3, 3, 3, 3, 3, 3, 2]
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
    bfl(cache)
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
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
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
