import abjad
import baca

from harmony import library

#########################################################################################
######################################### 03 [C] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (3, 4),
            (3, 4),
            (1, 4),
            (5, 4),
            (1, 4),
            (5, 4),
            (4, 4),
            (3, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[C.1]", 1),
        ("[>D.1]", 2, "#darkgreen"),
        ("[>F.3]", 4, "#darkgreen"),
        ("[C.2-4]", 6),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "57 3/5"),
        (1 - 1, "4:5(2)=4"),
        (2 - 1, "72"),
        (2 - 1, "5:4(4)=4"),
        (4 - 1, "48"),
        (4 - 1, "4.=4"),
        (6 - 1, "57 3/5"),
        (6 - 1, "6:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    for index, string in (
        (3 - 1, "fermata"),
        (5 - 1, "fermata"),
    ):
        baca.global_fermata_function(rests[index], string)
    wrappers = baca.markup_function(
        skips[3 - 1],
        r"\harmony-text-two",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup_function(
        skips[5 - 1],
        r"\harmony-text-three",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        library.cerulean()[1:],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(2),
        6,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        library.cerulean()[2:],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice, accumulator):
    music = library.make_phjc_rhythm(
        accumulator.get(1),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(2),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-19, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(6, 8),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, -2, -1],
    )
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_phjc_rhythm(
        accumulator.get(1),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(2),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-19, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(6, 8),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_except=[0, 1, 4, -2, -1],
    )
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [10, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_1(accumulator.get(2), 5)
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-2, 2, "-", 2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        [18, -12, 16, -4],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        library.cerulean()[1:],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(2),
        4,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        library.cerulean()[2:],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice, accumulator):
    music = baca.make_skeleton(
        r"r4 \times 4/5 { r8 c8. r16 c8. r16 }",
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(2),
        3,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        library.cerulean()[2:],
        extra_counts=[1],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 4/5 { c16 r8. c16 } \times 4/5 { r8 c8. r16 c8. r16 }",
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [10, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(2),
        2,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        library.cerulean()[1:],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(2),
        1,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(4),
        [(1, 4)],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        library.cerulean()[2:],
    )
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [10, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(2),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(4),
        [(1, 4)],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        [18, -12, 16, -4],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch_function(o, "F3"),
        baca.dynamic_function(o.phead(0), "mf")
        baca.covered_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
        )
    with baca.scope(m[2]) as o:
        baca.pitch_function(o, "F#3"),
    with baca.scope(m.get(6, 8)) as o:
        baca.pitch_function(o, "F3")
        baca.dynamic_function(
            o.phead(0),
            "mf-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.covered_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions_function(o, [0, 0, -2, 0, -2])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m[2]) as o:
        library.purpleheart_staff_positions_function(o, [0, -2, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding_function(o, 5.5)
    with baca.scope(m[4]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.bass_drum_staff_position_function(o)
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 6),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 8)) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [0, 0, -2, 0, -2])
        baca.dls_staff_padding_function(o, 5.5)
    with baca.scope(m[6]) as o:
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m[8]) as o:
        baca.hairpin_function(o.tleaves(), "p < f")


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [0, 0, -2, 0, -2])
        baca.hairpin_function(o.tleaves(), "f > p")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[2]) as o:
        library.purpleheart_staff_positions_function(o, [0, -2, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding_function(o, 5.5),
    with baca.scope(m[4]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.brake_drum_staff_position_function(o)
        baca.damp_function(o.ptail(-1))
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 5),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 8)) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [0, 0, -2, 0, -2])
        baca.dls_staff_padding_function(o, 5.5),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
        )
    with baca.scope(m[6]) as o:
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m[8]) as o:
        baca.hairpin_function(o.tleaves(), "p < f")


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "G1")
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 6)
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "C#4")
        baca.dls_staff_padding_function(o, 5)
    with baca.scope(m[4]) as o:
        baca.pitches_function(o, "F#4 G#4")
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mp")
        baca.dls_staff_padding_function(o, 4),
        baca.markup_function(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "G1"),
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.pheads(), "f")


def va(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bridge_staff_position_function(o)
        baca.accent_function(o.pheads())
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[2]) as o:
        library.bridge_staff_position_function(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding_function(o, 6),
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "alto")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "Eb3"),
        baca.dynamic_function(o.phead(0), "mp")
        baca.dls_staff_padding_function(o, 4),
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bridge_staff_position_function(o)
        baca.accent_function(o.pheads())
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            o,
            '"ff" "f" mf mp p pp ppp ppp',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding_function(o, 6),


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.tuplet_number_text_function(o.leaf(1), r"\markup 5:4")
        baca.tuplet_bracket_up_function(o)
        baca.accent_function(o.pheads())
        baca.dynamic_function(o.phead(0), "mf")
    with baca.scope(m[2]) as o:
        baca.hairpin_function(
            o,
            "p mp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_)[1:],
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "F#3")
        baca.damp_spanner_function(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.metric_modulation_spanner_function(
            o.leaves()[2:9],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "E4"),
        baca.dynamic_function(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m.get(1, 4)) as o:
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m.get(6, 7)) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        with baca.scope(o.rleaves(count=3)) as u:
            library.bridge_staff_position_function(u)
            baca.dls_staff_padding_function(u, 6),
        with baca.scope(baca.select.pheads(o.rleaves(count=3))) as u:
            baca.accent_function(u)
            baca.stem_tremolo_function(u)
        baca.dynamic_function(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.hairpin_function(
            o.rleaves(count=3)[1:],
            # '"ff" "f" mf mp p pp ppp ppp',
            '"f" mf mp p pp ppp ppp',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[8]) as o:
        baca.tuplet_number_text_function(o.leaves(), r"\markup 5:4")
        with baca.scope(o.leaf(3)) as u:
            baca.clef_function(u, "bass")
            baca.clef_extra_offset_function(u, (-2, 0)),
            baca.clef_x_extent_false_function(u)
        baca.staff_lines_function(o.leaf(3), 5)
        with baca.scope(o.leaf(2)) as u:
            baca.flag_extra_offset_function(u, (-2, 0))
            baca.note_head_extra_offset_function(u, (-2, 0))
            baca.script_extra_offset_function(u, (-2, 0))
            baca.stem_extra_offset_function(u, (-2, 0))
            baca.stem_tremolo_extra_offset_function(u, (-2, 0))
        with baca.scope(o.leaves()[-5:]) as u:
            baca.tuplet_bracket_up_function(u)
            baca.dls_staff_padding_function(u, 4.5)
        baca.pitch_function(o.leaves()[4:], "F#3")
        baca.accent_function(baca.select.pheads(o.leaves()[4:]))
        baca.dynamic_function(o.phead(-2), "mf")
        with baca.scope(baca.select.rleak(o.leaves()[4:])) as u:
            baca.damp_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                right_broken=True,
            )
            baca.metric_modulation_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            )


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.interpolate_pitches_function(o, "G2", "F2")
        baca.glissando_function(
            o.tleaves(),
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
    with baca.scope(m[2]) as o:
        baca.pitch_function(o, "F3"),
        baca.damp_spanner_function(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "Eqf4")
        baca.dynamic_function(o.phead(0), "mp")
        for run in baca.select.runs(o):
            baca.bow_speed_spanner_function(
                baca.select.rleak(run),
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef_function(o.leaf(0), "bass")
        for run in baca.select.runs(o):
            baca.interpolate_pitches_function(run, "G2", "F2"),
            baca.glissando_function(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
            baca.hairpin_function(
                baca.select.rleak(run),
                "mf >o niente",
            )
            baca.scp_spanner_function(
                baca.select.rleak(run),
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                bookend=False,
            )
        baca.stem_tremolo_function(o.pleaves(grace=False))
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding_function(o, 4)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bridge_staff_position_function(o)
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding_function(o, 6),
        baca.rest_extra_offset_function(o.rest(-1), (-0.75, 0))
    with baca.scope(m[2]) as o:
        baca.pitch_function(o, "Aqs4", do_not_transpose=True)
        baca.clef_function(o.leaf(0), "treble")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.pizzicato_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.markup_function(o.pleaf(0), r"\baca-eleven-e")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "E1"),
        baca.flat_glissando_function(o)
        baca.hairpin_function(o, "mf > p")
        baca.scp_spanner_function(
            o.leaves(),
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m.get(2, 4)) as o:
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m.get(6, 8)) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bridge_staff_position_function(o)
        baca.accent_function(o.pheads())
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            o,
            '"ff" "f" mf mp p pp ppp ppp',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding_function(o, 6)


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.interpolate_pitches_function(o, "G2", "F#2")
        baca.glissando_function(
            o.tleaves(),
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
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "F#4", do_not_transpose=True)
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.pizzicato_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "E1")
        baca.flat_glissando_function(o)
        baca.hairpin_function(o, "p < f")
        baca.scp_spanner_function(
            o.leaves(),
            "T1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [2, 3]),
        )
    with baca.scope(m.get(6, 8)) as o:
        for run in baca.select.runs(o):
            baca.interpolate_pitches_function(run, "G2", "F#2"),
            baca.glissando_function(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
            baca.hairpin_function(
                baca.select.rleak(run),
                "mf >o niente",
            )
            baca.scp_spanner_function(
                baca.select.rleak(run),
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                bookend=False,
            )
        baca.stem_tremolo_function(o.pleaves(grace=False))
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding_function(o, 4)


def composites(cache):
    for name in ["bfl", "hp", "va", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.accent_function(o.pheads())
            baca.hairpin_function(
                o,
                "pp p mp mf f",
                bookend=False,
                pieces=lambda _: baca.select.plts(_),
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
