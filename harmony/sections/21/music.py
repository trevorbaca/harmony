import abjad
import baca

from harmony import library

#########################################################################################
######################################### 21 [U] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (6, 4),
        (4, 4),
        (1, 4),
        (6, 4),
        (5, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[>W.4]", 1, "#darkgreen"),
        ("[U.1]", 2),
        ("[>W.4]", 4, "#darkgreen"),
        ("[U.2]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "4.=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "3:5(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "5:3(4)=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "3:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    baca.open_volta(skips[1 - 1], first_measure_number)
    baca.close_volta(skips[3 - 1], first_measure_number)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-twenty",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 2, 2],
        written_quarters=([0], 1),
        invisible_pairs=True,
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
        measures(5),
        [4, -4],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        measures(2),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)

    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(1, 4), (5, 4)])
        return result

    music = library.make_sixteenths(
        measures(4),
        [4, -4, 4, -4],
        preprocessor=preprocessor,
        extra_counts=[0, -8],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [4, -4],
    )
    voice.extend(music)


def PERC2(voice, measures):
    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(1, 4), (5, 4)])
        return result

    music = library.make_sixteenths(
        measures(1),
        [4, -8, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -8],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [6, 3, 7, 4],
    )
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, "-"],
    )
    voice.extend(music)

    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(1, 4), (4, 4)])
        return result

    music = library.make_sixteenths(
        measures(5),
        [-12, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [-6, 1, -10, 1, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def VC1(voice, measures):
    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(2, 4), (4, 4)])
        return result

    music = library.make_sixteenths(
        measures(1),
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [3, 7, 4, 6],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, measures):
    music = baca.make_notes(measures(1))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = baca.make_notes(measures(4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [7, 4, 6, 3],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, measures):
    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(2, 4), (4, 4)])
        return result

    music = library.make_sixteenths(
        measures(1),
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [-8, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5),
        [4, 6, 3, 7],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-4, 3, -1],
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
        measures(5),
        [6, 3, 7, 4],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitch(o, "E5")
        runs = baca.select.runs(o)
        for i, run in enumerate(runs):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< f >o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 2]),
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
    with baca.scope(m[1]) as o:
        baca.markup(o.pleaf(0), baca.levine_multiphonic(42))
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "<B3 Dqf4>")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m[n]) as o:
            baca.espressivo(o.pheads())
            baca.dynamic(o.phead(0), "p")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E5"),
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.text_spanner(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptail(0))
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2, -2, 0])
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.tuplet_bracket_down(o)
        library.bass_drum_staff_position(o.pleaf(0))
        baca.laissez_vibrer(o.ptail(0))
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        with baca.scope(o.pleaf(1)) as u:
            library.brake_drum_staff_position(u)
            baca.dynamic(u, "mp-ancora")
            baca.markup(
                u,
                r"\baca-brake-drum-paper-towel-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m[5]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding(o, 6)
        baca.metric_modulation_spanner(
            o.leaves()[2:],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.tuplet_bracket_up(o)
        baca.pitch(o.plt(0), "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
        baca.dls_staff_padding(o.leaves()[:2], 4)
        with baca.scope(o.pleaf(-1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            library.bass_drum_staff_position(u)
            baca.dynamic(u, "mp")
            baca.markup(
                u,
                r"\baca-bd-struck-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
    with baca.scope(m.get(1, 2)) as o:
        with baca.scope(o.leaves()[2:]) as u:
            baca.dls_staff_padding(u, 6),
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 10.5"),
            )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "pp")
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def hp(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "E4")
            baca.laissez_vibrer(o.ptails())
    with baca.scope(m[1]) as o:
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-xyl-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[4]) as o:
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[5]) as o:
        baca.tuplet_bracket_up(o)
        baca.pitches(o, "F5 E5 Eb5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[-3:]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            right_broken=True,
        ),
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding(o, 4)


def va(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "E4")
            baca.triple_staccato(o.pheads())
            baca.dynamic(o.phead(0), "p")
            baca.scp_spanner(
                o.leaves(),
                "P4 -> T1",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
                bookend=-1,
                left_broken=True,
            )
    with baca.scope(m[1]) as o:
        baca.metric_modulation_spanner(
            o.rleaves(),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[5]) as o:
        baca.accent(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.note_head_style_harmonic(o.pleaves())
        baca.dynamic(o.phead(0), "mf")
        baca.pizzicato_spanner(
            baca.select.rleak(o.tleaves(), count=2),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Bb3")


def vc1(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "bass")
            baca.pitch(o, "E2")
            baca.triple_staccato(o.pheads())
            baca.dynamic(o.phead(0), "p")
            baca.scp_spanner(
                o.tleaves(),
                "T -> P",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=False,
                bookend=-1,
            )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "Aqf4")
            baca.markup(o.pleaf(0), r"\baca-eleven-e-flat")


def vc2(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "bass")
            baca.pitch(o, "Dqf3")
            baca.dynamic(o.phead(0), "p")
            baca.bow_speed_spanner(
                baca.select.rleak(baca.select.ltleaves(o)),
                "poco scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "F4")


def cb1(m):
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "bass")
            baca.pitch(o, "E1")
            baca.triple_staccato(o.pheads())
            baca.dynamic(o.phead(0), "p")
            baca.scp_spanner(
                o.tleaves(),
                "T -> P",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=False,
                bookend=-1,
            )
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "Dtqf4")
            baca.markup(o.pleaf(0), r"\baca-seven-e-flat")


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
    for n in [1, 4]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "E1")
            baca.flat_glissando(o)
            baca.scp_spanner(
                o.leaves(),
                "P1 -> T1",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
                bookend=-1,
            )
    with baca.scope(m[1]) as o:
        baca.hairpin(o.rleaves(), "mf >o niente")
    with baca.scope(m[4]) as o:
        baca.hairpin(o.rleaves(), "mf >o", bookend=False)
    with baca.scope(m[5]) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for n in [2, 5]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "Eb2")


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.staff_lines(o.leaf(0), 5)
        with baca.scope(m[2]) as o:
            for run in baca.select.runs(o):
                run = baca.select.rleak(run)
                baca.stop_on_string(run[-1])
                baca.hairpin(run, "o<| f")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
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
    bfl(cache)
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
