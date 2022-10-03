import abjad
import baca

from harmony import library

#########################################################################################
######################################### 15 [O] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (4, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (2, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips):
    stage_markup = (
        ("[O.1-2]", 1),
        ("[<L.2]", 3, "#darkgreen"),
        ("[<L.4]", 4, "#darkgreen"),
        ("[O.3-4]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_halves=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [-1, 3, -8, 4, -8, -1, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [12, 16, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [-1, 3, -8, 4, -8, -1, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def PERC2(voice, measures):
    music = baca.make_mmrests(measures(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        measures(5),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1],
        rest_nonfirst=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        measures(6, 7),
        [1],
        [1, 2, 1, 1, 1],
        extra_counts=[1, 0],
        rest=[0, 1, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(8, 10))
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [12, 16, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(6, 8))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def VA(voice, measures):
    music = baca.make_mmrests(measures(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 10),
        [5, -7, 5, -7, 37, "-"],
    )
    voice.extend(music)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def VC2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/10 { c4 r4 r4 r8. }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/11 { r4 c4 r4 r4 r32 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/12 { r4 c4 r4 r4 r8 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "E3")
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "mf")
        baca.covered_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.hairpin(
            o.rleaves(),
            "o< mp >o !",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Dtqf5")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.hairpin(
            o.rleaves(),
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        for clpart in baca.select.clparts(o, [2]):
            clpart = baca.select.rleaves(clpart)
            baca.text_spanner(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
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
            run = baca.select.rleak(run)
            if i == 0:
                baca.covered_spanner(
                    run,
                    abjad.Tweak(r"- \tweak staff-padding 3"),
                    items=r"\baca-cov-markup =|",
                )
            elif i == 1:
                baca.trill_spanner(run)
            elif i == 2:
                baca.trill_spanner(
                    run,
                    abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.dls_staff_padding(o, 6)
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
        baca.dls_staff_padding(o, 4)
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
            baca.hairpin(run, "o<| f")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 9)) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(7, 9)) as o:
        baca.flat_glissando(
            o.pleaves(),
            hide_stem_selector=lambda _: baca.select.leaves(_)[2:-1],
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
        baca.dls_staff_padding(o, 6)


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
        baca.dls_staff_padding(o, 6)
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
        baca.dls_staff_padding(o, 5)


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
        baca.dls_staff_padding(o, 4 + 2)


def va(m):
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Bb3")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
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
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def vc1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Aqf3")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin(run, "o<| f")
            elif i == 1:
                baca.hairpin(run[:-1], "o<| fff-scratch")


def vc2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
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
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F3")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin(run, "o<| f")
            elif i == 1:
                baca.hairpin(run[:-1], "o<| fff-scratch")


def cb1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
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
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Dtqf3")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin(run, "o<| f")
            elif i == 1:
                baca.hairpin(run[:-1], "o<| fff-scratch")


def cb2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
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
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Dtqf3")
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin(run, "o<| f")
            elif i == 1:
                baca.hairpin(run[:-1], "o<| fff-scratch")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "p")
        with baca.scope(m.get(1, 10)) as o:
            baca.dls_staff_padding(o, 4)


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
    GLOBALS(score["Skips"])
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
    return score, measures


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score, measures = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
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
        environment.timing,
        environment.arguments,
    )


if __name__ == "__main__":
    main()
