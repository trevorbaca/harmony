import abjad
import baca

from harmony import library

#########################################################################################
######################################### 03 [C] ########################################
#########################################################################################

score = music = library.make_empty_score()
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

baca.interpret.set_up_score(
    score,
    accumulator.time_signatures,
    accumulator,
    library.manifests,
    append_anchor_skip=True,
    always_make_global_rests=True,
)

skips = score["Skips"]
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

rests = score["Rests"]
for index, string in (
    (3 - 1, "fermata"),
    (5 - 1, "fermata"),
):
    baca.global_fermata_function(rests[index], string)

# text

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
    accumulator(
        ("bfl", 1),
        baca.pitch("F3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", 2),
        baca.pitch("F#3"),
    )
    accumulator(
        ("bfl", (6, 8)),
        baca.pitch("F3"),
        baca.dynamic(
            "mf-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", (1, 8)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("perc1", 2),
        library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("perc1", (1, 2)),
        baca.dls_staff_padding(5.5),
    )
    accumulator(
        ("perc1", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (6, 8)),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            measures=6,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.hairpin(
            "p < f",
            measures=8,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dls_staff_padding(5.5),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 2),
        library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("perc2", (1, 2)),
        baca.dls_staff_padding(5.5),
    )
    accumulator(
        ("perc2", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.brake_drum_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.ptail(_, -1),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (6, 8)),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            measures=6,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.hairpin(
            "p < f",
            measures=8,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("G1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("hp", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("C#4"),
        baca.dls_staff_padding(5),
    )
    accumulator(
        ("hp", 4),
        baca.pitches("F#4 G#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (6, 8)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("G1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.pheads(_),
        ),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("va", 2),
        library.bridge_staff_position(),
    )
    accumulator(
        ("va", (1, 2)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("va", 4),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eb3"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("va", (6, 8)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            '"ff" "f" mf mp p pp ppp ppp',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.tuplet_number_text(
            r"\markup 5:4",
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        baca.tuplet_bracket_up(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("vc1", 2),
        baca.hairpin(
            "p mp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_)[1:],
        ),
    )
    accumulator(
        ("vc1", (1, 2)),
        baca.pitch("F#3"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[2:9],
        ),
    )
    accumulator(
        ("vc1", 4),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E4"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc1", (1, 4)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc1", (6, 7)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            library.bridge_staff_position(),
            baca.dls_staff_padding(6),
            selector=lambda _: baca.select.rleaves(_, count=3),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(baca.select.rleaves(_, count=3)),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pheads(baca.select.rleaves(_, count=3)),
        ),
        baca.dynamic(
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.hairpin(
            # '"ff" "f" mf mp p pp ppp ppp',
            '"f" mf mp p pp ppp ppp',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleaves(_, count=3)[1:],
        ),
    )
    accumulator(
        ("vc1", 8),
        baca.tuplet_number_text(
            r"\markup 5:4",
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.new(
            baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
            baca.clef_extra_offset((-2, 0)),
            baca.clef_x_extent_false(),
            selector=lambda _: abjad.select.leaf(_, 3),
        ),
        baca.staff_lines(
            5,
            selector=lambda _: abjad.select.leaf(_, 3),
        ),
        baca.new(
            baca.flag_extra_offset((-2, 0)),
            baca.note_head_extra_offset((-2, 0)),
            baca.script_extra_offset((-2, 0)),
            baca.stem_extra_offset((-2, 0)),
            baca.stem_tremolo_extra_offset((-2, 0)),
            selector=lambda _: abjad.select.leaf(_, 2),
        ),
        baca.new(
            baca.tuplet_bracket_up(),
            baca.dls_staff_padding(4.5),
            selector=lambda _: baca.select.leaves(_)[-5:],
        ),
        baca.pitch(
            "F#3",
            selector=lambda _: baca.select.leaves(_)[4:],
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(abjad.select.leaves(_)[4:]),
        ),
        baca.dynamic(
            "mf",
            selector=lambda _: baca.select.phead(_, -2),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.new(
            baca.hairpin(
                "mf >o niente",
            ),
            baca.scp_spanner(
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            ),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 2),
        baca.pitch("F3"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 4),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eqf4"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", (6, 8)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            baca.interpolate_pitches("G2", "F2"),
            baca.glissando(
                allow_repeats=True,
                hide_middle_note_heads=True,
                selector=lambda _: baca.select.tleaves(_),
            ),
            baca.hairpin(
                "mf >o niente",
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.scp_spanner(
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                bookend=False,
                selector=lambda _: baca.select.rleaves(_),
            ),
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
    )
    accumulator(
        ("vc2", (1, 8)),
        baca.dls_staff_padding(4),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(6),
        baca.rest_extra_offset(
            (-0.75, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("cb1", 2),
        baca.pitch(
            "Aqs4",
            do_not_transpose=True,
        ),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pizzicato_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
        baca.markup(
            r"\baca-eleven-e",
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E1"),
        baca.flat_glissando(),
        baca.hairpin(
            "mf > p",
        ),
        baca.scp_spanner(
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", (2, 4)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("cb1", (6, 8)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            '"ff" "f" mf mp p pp ppp ppp',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.new(
            baca.hairpin(
                "mf >o niente",
            ),
            baca.scp_spanner(
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            ),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "F#4",
            do_not_transpose=True,
        ),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pizzicato_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E1"),
        baca.flat_glissando(),
        baca.hairpin(
            "p < f",
        ),
        baca.scp_spanner(
            "T1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [2, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", (6, 8)),
        baca.new(
            baca.interpolate_pitches("G2", "F#2"),
            baca.glissando(
                allow_repeats=True,
                hide_middle_note_heads=True,
                selector=lambda _: baca.select.tleaves(_),
            ),
            baca.hairpin(
                "mf >o niente",
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.scp_spanner(
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                bookend=False,
                selector=lambda _: baca.select.rleaves(_),
            ),
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
    )
    accumulator(
        ("cb2", (1, 8)),
        baca.dls_staff_padding(4),
    )


def composites(cache):
    accumulator(
        (["bfl", "hp", "va", "vc2", "cb1", "cb2"], 2),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "pp p mp mf f",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )


def make_score():
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
    previous_persist = baca.previous_persist(__file__)
    previous_persistent_indicators = previous_persist["persistent_indicators"]
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


def main():
    make_score()
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=accumulator.commands,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        empty_fermata_measures=True,
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
