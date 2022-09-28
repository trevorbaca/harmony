import abjad
import baca

from harmony import library

#########################################################################################
######################################### 24 [X] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (4, 4),
            (4, 4),
            (4, 4),
            (3, 4),
            (4, 4),
            (4, 4),
            (4, 4),
            (4, 4),
            (5, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


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
        baca.metronome_mark(skip, item, library.manifests)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [2, 2, -2],
    )
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [5, -3],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -3],
    )
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, -8, 2, -3, 2, -8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(4, 4), (4, 4), (4, 4), (1, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7, 9),
        [16, 16, 16, -4, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 0, 0, 2],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [1, -9, 1, -4, 1, -9],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -3],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        4,
    )
    voice.extend(music)


def VC1(voice, accumulator):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=[5],
        invisible=[6],
        tie=[6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        3,
    )
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        2,
    )
    voice.extend(music)


def CB1(voice, accumulator):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=[5],
        invisible=[6],
        tie=[6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        1,
    )
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        0,
    )
    voice.extend(music)


def bfl(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.pitch(o, "F5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "niente o< mf >o",
                pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                run,
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 9"),
                pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "niente o< p >o",
                forbid_al_niente_to_bar_line=True,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                run,
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 10"),
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 4)


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
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m.get(1, 3)) as o:
        library.bass_drum_staff_position(o)
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(run, "o<| mf")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2])
        baca.dynamic(o.phead(0), "ff")
        baca.dls_staff_padding(o, 5)
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
        baca.dls_staff_padding(o.leaves()[:-2], 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        with baca.scope(o.pleaf(-1)) as u:
            baca.dynamic(u, "ff")
            baca.dls_staff_padding(u, 5)
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
        baca.dls_staff_padding(o, 4)
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
        baca.dls_staff_padding(o, 6)
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
            o.leaves(),
            "P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )


def vc1(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.tuplet_bracket_down(o)
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
                run,
                "niente o<| mp |>o",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
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
            o.leaves(),
            "P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
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
            o.leaves(),
            "P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )


def cb1(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.tuplet_bracket_down(o)
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
                run,
                "niente o<| mp |>o",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
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
            o.leaves(),
            "P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
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
            o.leaves(),
            "O -> P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
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
                    run,
                    "niente o<| mp |>o",
                    pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
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
                autodetect_right_padding=False,
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
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.section.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"])
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
    baca.section.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.section.cache_leaves(
        score,
        len(accumulator.time_signatures),
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
    return score, accumulator


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    timing = baca.build.Timing()
    score, accumulator = make_score(
        environment.first_measure_number,
        environment.previous_persist["persistent_indicators"],
        timing,
    )
    metadata, persist = baca.section.postprocess_score(
        score,
        accumulator.time_signatures,
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
