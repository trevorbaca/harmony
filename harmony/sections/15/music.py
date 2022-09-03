import abjad
import baca

from harmony import library

#########################################################################################
######################################### 15 [O] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
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
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips):
    stage_markup = (
        ("[O.1-2]", 1),
        ("[<L.2]", 3, "#darkgreen"),
        ("[<L.4]", 4, "#darkgreen"),
        ("[O.3-4]", 5),
    )
    baca.label_stage_numbers(skips, stage_markup)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_halves=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [-1, 3, -8, 4, -8, -1, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [12, 16, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [-1, 3, -8, 4, -8, -1, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def PERC2(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(5),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1],
        rest_nonfirst=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(6, 7),
        [1],
        [1, 2, 1, 1, 1],
        extra_counts=[1, 0],
        rest=[0, 1, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 10))
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [12, 16, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6, 8))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def VA(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [5, -7, 5, -7, 37, "-"],
    )
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/10 { c4 r4 r4 r8. }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/11 { r4 c4 r4 r4 r32 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/12 { r4 c4 r4 r4 r8 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "E3")
        baca.accent_function(o.pheads())
        baca.dynamic_function(o.phead(0), "mf")
        baca.covered_spanner_function(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch_function(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "o< mp >o !",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "Dtqf5")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.hairpin_function(
            o.rleaves(),
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        for clpart in baca.select.clparts(o, [2]):
            clpart = baca.select.rleaves(clpart)
            baca.text_spanner_function(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
        baca.breathe_function(o.pleaf(1))
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch_function(o.plt(0), "E3")
        baca.pitch_function(o.plts()[1:], "F#5")
        baca.accent_function(o.phead(0))
        baca.dynamic_function(o.phead(0), "mf")
        baca.dynamic_function(o.phead(1), "p")
        baca.dynamic_function(
            o.phead(2),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            run = baca.select.rleak(run)
            if i == 0:
                baca.covered_spanner_function(
                    run,
                    abjad.Tweak(r"- \tweak staff-padding 3"),
                    items=r"\baca-cov-markup =|",
                )
            elif i == 1:
                baca.trill_spanner_function(run)
            elif i == 2:
                baca.trill_spanner_function(
                    run,
                    abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position_function(o)
        baca.dynamic_function(o.phead(0), '"f"')
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "Eb4")
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mp")
        baca.dls_staff_padding_function(o, 4)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bass_drum_staff_position_function(o)
        for run in baca.select.runs(o):
            baca.hairpin_function(run, "o<| f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 9)) as o:
        library.slate_staff_position_function(o)
    with baca.scope(m.get(7, 9)) as o:
        baca.flat_glissando_function(
            o.pleaves(),
            hide_stem_selector=lambda _: baca.select.leaves(_)[2:-1],
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.dynamic_function(o.phead(0), '"f"')
        baca.dynamic_function(
            o.phead(2),
            '"f"-sempre',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 10)) as o:
        baca.dls_staff_padding_function(o, 6)


def perc2(m):
    with baca.scope(m[4]) as o:
        library.brake_drum_staff_position_function(o)
        baca.dynamic_function(o.phead(0), "f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 4)) as o:
        baca.dls_staff_padding_function(o, 6)
    with baca.scope(m[5]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [2, -2, 0])
        baca.dynamic_function(o.phead(0), "pp")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(6, 7)) as o:
        library.purpleheart_staff_positions_function(o, [-2, 0, 2, 0, 2, -2])
    with baca.scope(m.get(5, 10)) as o:
        baca.dls_staff_padding_function(o, 5)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.damp_function(o.rest(0))
        baca.pitch_function(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.double_flageolet_function(o.phead(0))
        baca.dynamic_function(o.phead(0), "f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch_function(o, "Eb4")
        baca.dynamic_function(o.phead(0), "mp")
        baca.laissez_vibrer_function(o.ptails())
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "E4")
        baca.snap_pizzicato_function(o.pheads())
        baca.dynamic_function(o.phead(0), "f")
    with baca.scope(m[5]) as o:
        baca.dynamic_function(o.phead(0), "f-ancora")
    for n in [5, 9]:
        with baca.scope(m[n]) as o:
            baca.pitch_function(o, "<B4 C5>")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m[n]) as o:
            baca.double_flageolet_function(o.phead(0))
            baca.markup_function(
                o.pleaf(0),
                r"\baca-lv-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 4 + 2)


def va(m):
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "Bb3")
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch_function(o, "F4")
        baca.dynamic_function(o.pheads()[:2], "p")
        baca.dynamic_function(
            o.phead(2),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner_function(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def vc1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
            baca.hairpin_function(run, "o<| f")
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "Aqf3")
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch_function(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin_function(run, "o<| f")
            elif i == 1:
                baca.hairpin_function(run[:-1], "o<| fff-scratch")


def vc2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
            baca.hairpin_function(run, "o<| f")
    with baca.scope(m[3]) as o:
        baca.literal_function(
            o.leaf(0),
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"10:8"',
            ],
        )
        baca.pitch_function(o, "F3"),
        baca.triple_staccato_function(o.pheads())
        baca.dynamic_function(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "F3")
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch_function(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin_function(run, "o<| f")
            elif i == 1:
                baca.hairpin_function(run[:-1], "o<| fff-scratch")


def cb1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
            baca.hairpin_function(run, "o<| f")
    with baca.scope(m[3]) as o:
        baca.literal_function(
            o.leaf(0),
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"11:8"',
            ],
        )
        baca.pitch_function(o, "Dtqf3")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak X-offset 3"),
        )
        baca.triple_staccato_function(o.pheads())
        baca.dynamic_function(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "Dtqf3")
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch_function(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin_function(run, "o<| f")
            elif i == 1:
                baca.hairpin_function(run[:-1], "o<| fff-scratch")


def cb2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
            baca.hairpin_function(run, "o<| f")
    with baca.scope(m[3]) as o:
        baca.literal_function(
            o.leaf(0),
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"12:8"',
            ],
        )
        baca.pitch_function(o, "Eb2"),
        baca.triple_staccato_function(o.pheads())
        baca.dynamic_function(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "Dtqf3")
        baca.scp_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.pitch_function(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string_function(run[-1])
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            if i == 0:
                run = baca.select.rleak(run)
                baca.hairpin_function(run, "o<| f")
            elif i == 1:
                baca.hairpin_function(run[:-1], "o<| fff-scratch")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.stem_tremolo_function(o.pleaves())
            baca.accent_function(o.pheads())
            baca.dynamic_function(o.phead(0), "p")
        with baca.scope(m.get(1, 10)) as o:
            baca.dls_staff_padding_function(o, 4)


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
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
