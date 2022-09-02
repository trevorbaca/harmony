import abjad
import baca

from harmony import library

#########################################################################################
######################################### 05 [E] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (5, 4),
            (3, 4),
            (3, 4),
            (6, 4),
            (6, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips):
    stage_markup = (
        ("[>F.3]", 1, "#darkgreen"),
        ("[<C.4]", 2, "#darkgreen"),
        ("[<D.1]", 3, "#darkgreen"),
        ("[E.1-2]", 4),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "4.=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "6:5(4)=4"),
        (3 - 1, "72"),
        (3 - 1, "5:4(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "4:3(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)


def BFL(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 1, -4, 1, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(3),
        6,
        gap=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [1, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-3, 1, 1, "-"],
    )
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-19, 1],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(2),
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(3),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-3, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, "-", 1],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(2),
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(3),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-3, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-2, 2, "-", 2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [10, -2],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(3),
        5,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 8],
        fuse=True,
        do_not_rewrite_meter=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        ["-", 12, -8],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 3, -1, 3, -1, 3, -1],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -1, 3, -1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [6, -2, -8, 6, -2],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-1, 2, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [1, -3, 1, -2, 3, -1, 3, -1],
        preprocessor=preprocessor,
        extra_counts=[1, 2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(3),
        3,
        gap=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [10, -2],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(3),
        2,
        gap=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [14, 1, 1, 1, 9, 1, 1, 1, 5, 1, 1, 1, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice, accumulator):
    music = baca.make_repeated_duration_notes(
        accumulator.get(1),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 1, -4, 1, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(3),
        1,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [15, 1, 1, 1, 6, 1, 1, 1, 12, 1, 1, 1, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice, accumulator):
    music = baca.make_repeated_duration_notes(
        accumulator.get(1),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [10, -2],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(3),
        0,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [11, 1, 1, 1, 11, 1, 1, 1, 7, 1, 1, 1, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    with baca.scope(m[2]) as o:
        baca.pitch_function(o, "F3"),
        baca.dynamic_function(o.phead(0), "mf")
        baca.covered_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch_function(o, "F#3"),
        baca.hairpin_function(
            o,
            "pp p",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[4]) as o:
        baca.pitch_function(o, "F3")
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "ff")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-jet-whistle-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[5]) as o:
        baca.pitch_function(o, "E3"),
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.dynamic_function(
            o.phead(0),
            "ff-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-jet-whistle-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(2, 5)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.bass_drum_staff_position_function(o)
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 6 + 1)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [-2, 0, -2, 0, 0])
        baca.hairpin_function(o.tleaves(), "p < f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        library.purpleheart_staff_positions_function(o, [0, -2, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m.get(2, 3)) as o:
        baca.dls_staff_padding_function(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines_function(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[5]) as o:
        library.triangle_staff_position_function(o)
        baca.flat_glissando_function(
            baca.select.rleak(o.pleaves()[1:]),
            right_broken=True,
        )
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "p")
        baca.dls_staff_padding_function(o, 4)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-triangle-small-beater-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines_function(o.leaf(2), 1)
        library.purpleheart_staff_positions_function(o.leaves()[:2], [0])
        with baca.scope(o.pleaf(-1)) as u:
            library.brake_drum_staff_position_function(u)
            baca.accent_function(u)
            baca.damp_function(u)
            baca.dynamic_function(u, "mf")
            baca.dls_staff_padding_function(u, 6 + 1),
            baca.markup_function(
                u,
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 7"),
            )
        baca.metric_modulation_spanner_function(
            baca.select.rleak(baca.select.runs(o)[:1]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [-2, 0, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "p < f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        library.purpleheart_staff_positions_function(o, [0, -2, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m.get(2, 3)) as o:
        baca.dls_staff_padding_function(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines_function(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position_function(o)
        baca.flat_glissando_function(
            baca.select.rleak(o.pleaves()[1:]),
            right_broken=True,
        )
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "p")
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitches_function(o, "F#4 G#4")
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mp")
        baca.dls_staff_padding_function(o, 4)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.clef_whiteout_function(o.leaf(0), 2)
        baca.pitch_function(o, "G1")
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "C#4")
        baca.accent_function(o.pheads())
        baca.hairpin_function(
            o,
            "pp p",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m[4]) as o:
        baca.pitches_function(o, "F4 D4 A4 G3 B3 E3")
        baca.glissando_function(o.tleaves())
        baca.hairpin_function(o.rleaves(), '"f" >o niente')
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tuning-key-glissando-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
        baca.dls_staff_padding_function(o, 6.5)
    with baca.scope(m[5]) as o:
        baca.pitch_function(o, "Eb4")
        baca.damp_function(o.rest(-1))
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 4)


def va(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "alto")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "Eb3"),
        baca.dynamic_function(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[2]) as o:
        baca.clef_function(abjad.select.leaf(o, 0), "percussion")
        baca.staff_lines_function(abjad.select.leaf(o, 0), 1)
    with baca.scope(m[3]) as o:
        baca.clef_function(o.leaf(0), "alto")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.dynamic_function(o.phead(0), "mf")
    with baca.scope(m.get(3, 4)) as o:
        baca.pitch_function(o, "F3")
        with baca.scope(o.leaves()[1:12]) as u:
            baca.metric_modulation_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
            baca.bow_speed_spanner_function(
                u,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
    with baca.scope(m[5]) as o:
        baca.pitch_function(o, "Eb3")
        baca.dynamic_function(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(baca.select.ltleaves(run)),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
        baca.metric_modulation_spanner_function(
            o.rleaves(),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding_function(o, 4)


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "E4"),
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 4)
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        with baca.scope(o.pleaves()[:2]) as u:
            library.bridge_staff_position_function(u)
            baca.accent_function(u)
            baca.stem_tremolo_function(u)
        baca.dynamic_function(o.phead(0), "ppp")
        baca.dls_staff_padding_function(o.leaves()[:3], 6)
        with baca.scope(o.leaf(2)) as u:
            baca.flag_extra_offset_function(u, (-2, 0))
            baca.note_head_extra_offset_function(u, (-2, 0))
            baca.script_extra_offset_function(u, (-2, 0))
            baca.stem_extra_offset_function(u, (-2, 0))
            baca.stem_tremolo_extra_offset_function(u, (-2, 0))
        with baca.scope(o.leaf(3)) as u:
            baca.clef_function(u, "bass")
            baca.clef_extra_offset_function(u, (-2, 0))
            baca.clef_x_extent_false_function(u)
            baca.staff_lines_function(u, 5)
    with baca.scope(m[3]) as o:
        baca.hairpin_function(
            o,
            "p mp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_)[1:],
        )
    with baca.scope(m.get(2, 3)) as o:
        with baca.scope(o.pheads()[2:]) as u:
            baca.pitch_function(u, "F#3")
            baca.accent_function(u)
        baca.dynamic_function(o.pleaf(2), "mf")
        baca.tuplet_bracket_up_function(o.leaves()[3:])
        baca.metric_modulation_spanner_function(
            o.leaves()[4:11],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.damp_spanner_function(
            baca.select.rleak(baca.select.leaves(o)[4:]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.dls_staff_padding_function(o.leaves()[4:-1], 4)
    with baca.scope(m.get(4, 5)) as o:
        # TODO: promote into rhythm
        baca.untie_function(o.pleaves())
        baca.staff_positions_function(
            o,
            [2, 3, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 8],
        )
        baca.glissando_function(o.tleaves(), allow_repeats=True)
        baca.dls_staff_padding_function(baca.select.lleak(o.leaves()), 5.5)


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "Eqf4"),
        baca.dynamic_function(o.phead(0), "f")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.interpolate_pitches_function(run, "G2", "F2"),
            baca.glissando_function(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo_function(o.pleaves(grace=False))
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.hairpin_function(u, "mf >o niente")
            baca.scp_spanner_function(
                u,
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[3]) as o:
        baca.pitch_function(o, "F3"),
        baca.accent_function(o.phead(0))
        baca.dynamic_function(o.phead(0), "pp")
        baca.damp_spanner_function(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m.get(4, 5)) as o:
        # TODO: promote into rhythm
        baca.untie_function(o.pleaves())
        baca.staff_positions_function(
            o,
            [2, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 3, 8],
        )
        baca.glissando_function(o.tleaves(), allow_repeats=True)
        baca.dls_staff_padding_function(o, 5.5)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "E1"),
        baca.flat_glissando_function(o)
        baca.hairpin_function(o, "mf > p")
        baca.scp_spanner_function(
            o.tleaves(),
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bridge_staff_position_function(o)
        baca.accent_function(o.pheads())
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            o,
            "pp ppp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding_function(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "Aqs4", do_not_transpose=True)
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.accent_function(o.pheads())
        baca.hairpin_function(
            o,
            "pp p mp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding_function(o.plts()[:-1], 4)
        baca.pizzicato_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.markup_function(o.pleaf(0), r"\baca-eleven-e")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak X-offset 2.5"),
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef_function(o.leaf(0), "bass")
        # TODO: promote into rhythm
        baca.untie_function(o.pleaves())
        baca.staff_positions_function(
            o,
            [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
        )
        baca.glissando_function(o.tleaves(), allow_repeats=True)
        baca.dls_staff_padding_function(baca.select.lleak(o.leaves()), 5.5)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.flat_glissando_function(o, "E1", left_broken=True)
        baca.hairpin_function(o, "o< f", left_broken=True)
        baca.scp_spanner_function(
            o.leaves(),
            "(T1) -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [2, 3]),
        )
    with baca.scope(m[2]) as o:
        for run in baca.select.runs(o):
            baca.interpolate_pitches_function(run, "G2", "F#2"),
            baca.glissando_function(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo_function(o.pleaves(grace=False))
        with baca.scope(baca.select.rleak(o.tleaves())) as u:
            baca.hairpin_function(u, "mf >o niente")
            baca.scp_spanner_function(
                u,
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=False,
            )
    with baca.scope(m[3]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "F#4", do_not_transpose=True)
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.accent_function(o.pheads())
        baca.hairpin_function(
            o,
            "pp p",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.pizzicato_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef_function(o.leaf(0), "bass")
        # TODO: promote into rhythm
        baca.untie_function(o.pleaves())
        baca.staff_positions_function(
            o,
            [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
        )
        baca.glissando_function(o.tleaves(), allow_repeats=True)
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding_function(o, 4)


def strings(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.hairpin_function(o, '! o< "f"')
        with baca.scope(m[5]) as o:
            baca.hairpin_function(o.rleaves(), '"f" >o niente')
        with baca.scope(m.get(4, 5)) as o:
            pheads = baca.select.pheads(o)
            pheads = [
                _ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ]
            baca.alternate_bow_strokes_function(
                pheads,
                abjad.Tweak(r"- \tweak staff-padding 4"),
                full=True,
            )
            baca.half_clt_spanner_function(
                baca.select.rleak(baca.select.ltleaves(o)),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )


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
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    strings(cache)
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
