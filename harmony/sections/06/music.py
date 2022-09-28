import abjad
import baca

from harmony import library

#########################################################################################
######################################### 06 [F] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (5, 4),
            (1, 4),
            (4, 4),
            (4, 4),
            (4, 4),
            (5, 4),
            (4, 4),
            (3, 4),
            (1, 4),
            (5, 4),
            (4, 4),
            (5, 4),
            (4, 4),
            (5, 4),
            (4, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[F.1]", 1),
        ("[>G.1]", 3, "#darkgreen"),
        ("[F.2]", 4),
        ("[>G.1]", 5, "#darkgreen"),
        ("[F.3-4]", 6),
        ("[<C.4]", 8, "#darkgreen"),
        ("[F.5-6]", 10),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2=4"),
        (3 - 1, "57 3/5"),
        (3 - 1, "6:5(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "5:6(4)=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "6:5(4)=4"),
        (6 - 1, "48"),
        (6 - 1, "5:6(4)=4"),
        (8 - 1, "57 3/5"),
        (8 - 1, "6:5(4)=4"),
        (10 - 1, "48"),
        (10 - 1, "5:6(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in (
        (2 - 1, "fermata"),
        (9 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[2 - 1],
        r"\harmony-text-four",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[9 - 1],
        r"\harmony-text-five",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, -6, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(5),
        [2, 2, -6, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 8), (5, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7),
        [-6, -4, 1, -5, 1, -1],
        preprocessor=preprocessor,
        extra_counts=[0, 2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 1, -4, 1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9, 15), head=voice.name)
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [16, "-", 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-15, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-3, 6, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-15, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        ["-", 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(8),
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 3, -4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12, 14))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(15),
        ["-", 5, -1],
    )
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [16, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [9, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-19, 1, "-"],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(8),
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 1, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12, 13))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(14),
        ["-", 1, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(15),
        ["-", 1, -5],
    )
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-10, 6, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(11, 16), (5, 16)])
        return result

    music = library.make_sixteenths(
        accumulator.get(4),
        [9, "-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 8), (5, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7),
        ["-", 9, -2],
        preprocessor=preprocessor,
        extra_counts=[0, 2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [10, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(14),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(11, 16), (5, 16)])
        return result

    music = library.make_sixteenths(
        accumulator.get(15),
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        counts=[9],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 2, -3],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        counts=[9],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-1, 2, "-", 3, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 15),
        [-5, 2, -5, 3, -10, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 2, -3],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-1, 2, "-", 3, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, -3, 1, "-"],
        extra_counts=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 15),
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 2, -3],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-1, 2, "-", 3, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [10, -2],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 15),
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, accumulator):
    music = baca.make_repeated_duration_notes(
        accumulator.get(1),
        [(1, 4)],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 5],
        tie=[0],
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(5, 7),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 1, -4, 1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(10, 15),
        [(1, 4)],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, accumulator):
    music = baca.make_repeated_duration_notes(
        accumulator.get(1),
        [(1, 4)],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        ["-", 4, 4, 4],
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(4, 7),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [10, -2],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(10, 15),
        [(1, 4)],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[3]) as o:
        baca.pitch(o.runs()[:1], "Bb5")
        baca.pitch(o.runs()[1:], "E5")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.leaves()[:3],
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.hairpin(
            baca.select.rleak(o.leaves()[-2:]),
            "o<| f |>o niente",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "E5"),
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.leaves()[:3],
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.leaves(o)[3:7]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o.runs()[:1], "Bb5")
        baca.pitch(o.runs()[1:], "E5")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.leaves()[:3],
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.hairpin(
            baca.select.rleak(baca.select.leaves(o)[-2:]),
            "o<| f |>o niente",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E5"),
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.leaves()[:3],
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[3:7]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(3, 6)) as o:
        baca.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch(o, "F3"),
        baca.dynamic(o.phead(0), "mf")
        baca.covered_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )


def perc1(m):
    with baca.scope(m[1]) as o:
        with baca.scope(o.pleaves()[:1]) as u:
            library.triangle_staff_position(u)
            baca.flat_glissando(u, left_broken=True)
            baca.stem_tremolo(u)
        baca.damp(o.rest(0))
        with baca.scope(o.pleaf(-1)) as u:
            library.bass_drum_staff_position(u)
            baca.damp(u)
            baca.dynamic(u, "mp")
            baca.dls_staff_padding(u, 6)
            baca.markup(
                u,
                r"\baca-bd-struck-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2),
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5),
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o, 2)
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[8]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, -2, 0, 0])
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[10]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.hairpin(baca.select.rleak(o.tleaves()), "o< mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[11]) as o:
        library.bass_drum_staff_position(o)
        baca.hairpin(baca.select.rleak(o.tleaves()), "o< f")
    with baca.scope(m[15]) as o:
        library.bass_drum_staff_position(o)
        baca.hairpin(baca.select.rleak(o.tleaves()), "o< ff")
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        with baca.scope(o.pleaves()) as u:
            library.tam_tam_staff_position(u)
            baca.flat_glissando(u, left_broken=True)
            baca.stem_tremolo(u)
        baca.damp(o.rest(0))
    with baca.scope(m[3]) as o:
        library.tam_tam_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[4]) as o:
        baca.damp(baca.select.leaf_after_each_ptail(o))
        library.tam_tam_staff_position(o)
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(6, 7)) as o:
        library.brake_drum_staff_position(o)
        baca.damp(o.ptail(-1))
        baca.dynamic(o.phead(0), "mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 7)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[8]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [-2, 0, 0, -2, 0])
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[10]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[11]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m[14]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m[15]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(10, 15)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.damp(baca.select.leaf_after_each_ptail(o))
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                'o< "f" >o niente',
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plt(0), "E1")
        baca.damp(o.rest(0))
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o.plt(0), 7)
        with baca.scope(o.rest(-1)) as u:
            baca.clef(u, "percussion"),
            baca.staff_lines(u, 1),
        library.whisk_staff_position(o.pleaves()[-2:])
        baca.hairpin(
            o.pleaves()[-2:],
            'o< "f" >o',
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.markup(
            o.pleaf(-2),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[5]) as o:
        library.whisk_staff_position(o)
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                'o< "f" >o niente',
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
        baca.dls_staff_padding(o.lleaves(count=2), 6)
    with baca.scope(m.get(4, 5)) as o:
        baca.tuplet_bracket_up(o)
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[4:8]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitches(o, "F#4 G#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mf")
        baca.text_spanner(
            o.rleaves(),
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
        )
        baca.dls_staff_padding(o, 4)
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch(o, "G1")
    with baca.scope(m[7]) as o:
        baca.damp(
            o.rest(-1),
            abjad.Tweak(r"- \tweak direction #down"),
        )
    with baca.scope(m[8]) as o:
        baca.damp(o.rest(-1))
    with baca.scope(m.get(7, 8)) as o:
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 6),
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.tleaves(o), count=2),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m.get(10, 11)) as o:
        baca.pitches(o, "F#4 G#4")
    with baca.scope(m.get(10, 14)) as o:
        baca.laissez_vibrer(o.ptails())
        baca.text_spanner(
            o.rleaves(),
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
        )
    with baca.scope(m.get(13, 14)) as o:
        baca.pitches(o, "F#4 G#4")
    with baca.scope(m.get(10, 14)) as o:
        baca.hairpin(
            o,
            "mf f ff fff",
            bookend=False,
            pieces=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        )
        baca.dls_staff_padding(o, 4)
    with baca.scope(m[15]) as o:
        baca.tuplet_bracket_up(o)
        with baca.scope(o.rest(-1)) as u:
            baca.clef(u, "percussion"),
            baca.staff_lines(u, 1),
        library.whisk_staff_position(o.pleaves()[-2:])
        baca.dynamic(o.phead(0), '"f"')
        baca.dls_staff_padding(o.leaves()[-3:], 6)
        baca.markup(
            o.pleaf(-2),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.metric_modulation_spanner(
            baca.select.rleak(baca.select.pleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.bow_speed_spanner(
            baca.select.rleak(o.tleaves()),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
        baca.metric_modulation_spanner(
            o.leaves()[:3],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            library.appoggiato_pitches_b_flat(),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.text_spanner(
            baca.select.rleak(o.tleaves(grace=False), count=2),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        with baca.scope(baca.select.rleak(baca.select.runs(o)[-1:])) as u:
            baca.pitch(u, "Eb3")
            baca.bow_speed_spanner(
                u,
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
        baca.dynamic(o.phead(-1), "f")
    with baca.scope(m[5]) as o:
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -9),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
    with baca.scope(m.get(6, 7)) as o:
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(10, 15)) as o:
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.hairpin(baca.select.rleak(o.plts()[-1:]), "f >o niente")
        for run in baca.select.runs(o)[:-1]:
            run = baca.select.rleak(run)
            baca.bow_speed_spanner(
                run,
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
        baca.bow_speed_spanner(
            baca.select.rleak(o.runs()[-1:]),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    for item in [1, (6, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Eb3")
    with baca.scope(m.get(1, 15)) as o:
        baca.dls_staff_padding(o, 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.dynamic(o.phead(0), "f")
        baca.bow_speed_spanner(
            baca.select.rleak(o.tleaves()),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m[3]) as o:
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.text_spanner(
            baca.select.rleak(o.tleaves(grace=False), count=2),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o.plt(-1), "E4")
        baca.dynamic(o.phead(-1), "f")
        baca.bow_speed_spanner(
            baca.select.rleak(o.runs()[-1:]),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m[5]) as o:
        for run in abjad.select.runs(o, grace=True):
            baca.note_head_style_harmonic(run)
        baca.pitch(o.plts(grace=False), "Bb3")
        baca.pitches(
            baca.select.plts(o, grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1 - 7),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m.get(1, 7)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "ppp")
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(10, 15)) as o:
        for run in baca.select.runs(o)[:-1]:
            baca.bow_speed_spanner(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
        baca.bow_speed_spanner(
            baca.select.rleak(o.runs()[-1:]),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.hairpin(
            baca.select.rleak(o.plts()[-1:]),
            "f >o niente",
            right_broken=True,
        )
        baca.dls_staff_padding(o, 4)
    for item in [1, (6, 7), (10, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "E4")


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.dynamic(o.phead(0), "f")
        baca.bow_speed_spanner(
            baca.select.rleak(o.tleaves()),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.clef(o.phead(-1), "treble")
        baca.pitch(o.plt(-1), "Eqf4")
        baca.dynamic(o.phead(-1), "f")
        baca.bow_speed_spanner(
            baca.select.rleak(o.runs()[-1:]),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m.get(3, 4)) as o:
        with baca.scope(baca.select.rleak(o.runs()[:1])) as u:
            baca.pitch(u, "B2"),
            baca.damp_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "p")
        baca.damp_spanner(
            baca.select.rleak(o.tleaves()),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.dynamic(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F2")
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.hairpin(
            baca.select.rleak(o.tleaves()),
            "mf >o niente",
        )
        baca.scp_spanner(
            baca.select.rleak(o.tleaves()),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m.get(10, 15)) as o:
        baca.clef(o.leaf(0), "treble")
        for run in baca.select.runs(o)[:-1]:
            run = baca.select.rleak(run)
            baca.bow_speed_spanner(
                run,
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
        baca.bow_speed_spanner(
            baca.select.rleak(o.runs()[-1:]),
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.hairpin(
            baca.select.rleak(o.plts()[-1:]),
            "f >o niente",
        )
    for item in [1, (6, 7), (10, 15)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Eqf4")
    with baca.scope(m.get(1, 15)) as o:
        baca.dls_staff_padding(o, 4)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E1")
        baca.flat_glissando(o)
        baca.hairpin(
            o.rleaves(),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 4]),
        )
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.note_head_style_harmonic(o.pleaf(0))
    with baca.scope(m.get(3, 4)) as o:
        with baca.scope(baca.select.rleak(o.runs()[:1])) as u:
            baca.pitch(u, "Bb2")
            baca.damp_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m.get(4, 7)) as o:
        baca.flat_glissando(o.run(-1), "E1")
        with baca.scope(baca.select.rleak(o.runs()[-1:])) as u:
            baca.hairpin(
                u,
                "o< mf > p < f",
                pieces=lambda _: baca.select.lparts(_, [6, 5, 3, 2]),
            )
            baca.scp_spanner(
                u,
                "T1 -> P1 -> T1 -> P1",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=lambda _: baca.select.lparts(_, [6, 5, 3, 2]),
            )
    with baca.scope(m.get(1, 7)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o,
            "pp ppp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m.get(10, 15)) as o:
        baca.flat_glissando(
            o.rleaves(),
            "E1",
            allow_hidden=True,
            right_broken=True,
        )
        baca.hairpin(
            o.rleaves(),
            "o< mf > p < f > p < ff >o niente",
            pieces=lambda _: baca.select.mgroups(_, [1, 1, 1, 1, 1, 2]),
            right_broken=True,
        )
        baca.scp_spanner(
            o.rleaves(),
            "T1 -> O -> T1 -> P2 -> T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.cmgroups(_, [1]),
            right_broken=True,
        )
        baca.dls_staff_padding(o, 4)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E1")
        baca.flat_glissando(o.pleaves())
        baca.hairpin(
            o.rleaves(),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [3, 3]),
        )
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(3, 7)) as o:
        baca.flat_glissando(o.pleaves(), "E1")
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.hairpin(
                u,
                "o< mp > p < f",
                bookend=False,
                pieces=lambda _: baca.select.mgroups(_, [2, 1, 1, 2]),
            )
            baca.scp_spanner(
                u,
                "T1 -> P1 -> O -> T1 -> P2 -> O",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                pieces=lambda _: baca.select.lparts(_, [3, 4, 4, 2, 3, 5]),
            )
    with baca.scope(m[8]) as o:
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "G2", "F#2")
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.hairpin(u, "mf >o niente")
            baca.scp_spanner(
                u,
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m.get(10, 15)) as o:
        baca.flat_glissando(o.pleaves(), "E1")
        baca.hairpin(
            o.rleaves(),
            "o< f > p < ff >o niente",
            pieces=lambda _: baca.select.mgroups(_, [2, 1, 1, 3]),
        )
        baca.scp_spanner(
            o.leaves(),
            "T1 -> P2 -> T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.mgroups(_, [2, 1, 1, 2]),
        )
    with baca.scope(m.get(1, 15)) as o:
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
    GLOBALS(score["Skips"], score["Rests"])
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
    va(cache)
    vc1(cache)
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
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
