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


def bfl(m, accumulator):
    accumulator(
        ("bfl", 2),
        baca.pitch("F3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", 3),
        baca.pitch("F#3"),
        baca.hairpin(
            "pp p",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("F3"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-jet-whistle-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("bfl", 5),
        baca.pitch("E3"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.dynamic(
            "ff-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-jet-whistle-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("bfl", (1, 5)),
        baca.dls_staff_padding(4),
    )


def perc1(m, accumulator):
    accumulator(
        ("perc1", 1),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6 + 1),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 7"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([-2, 0, -2, 0, 0]),
        baca.hairpin(
            "p < f",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 3),
        library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("perc1", (2, 3)),
        baca.dls_staff_padding(5.5),
    )
    accumulator(
        ("perc1", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("perc1", 5),
        library.triangle_staff_position(),
        baca.flat_glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-triangle-small-beater-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def perc2(m, accumulator):
    accumulator(
        ("perc2", 1),
        baca.staff_lines(
            1,
            selector=lambda _: abjad.select.leaf(_, 2),
        ),
        baca.new(
            library.purpleheart_staff_positions([0]),
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
        baca.new(
            library.brake_drum_staff_position(),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.damp(selector=lambda _: baca.select.phead(_, 0)),
            baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
            baca.dls_staff_padding(6 + 1),
            baca.markup(
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 7"),
            ),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
        ),
    )
    accumulator(
        ("perc2", 2),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([-2, 0, 0, -2, 0]),
        baca.hairpin(
            "p < f",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 3),
        library.purpleheart_staff_positions([0, -2, 0, -2, 0]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("perc2", (2, 3)),
        baca.dls_staff_padding(5.5),
    )
    accumulator(
        ("perc2", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("perc2", 5),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def hp(m, accumulator):
    accumulator(
        ("hp", 1),
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
        ("hp", 2),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.clef_whiteout(2, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("G1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("hp", 3),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("C#4"),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "pp p",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", 4),
        baca.pitches("F4 D4 A4 G3 B3 E3"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            '"f" >o niente',
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-tuning-key-glissando-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dls_staff_padding(6.5),
    )
    accumulator(
        ("hp", 5),
        baca.pitch("Eb4"),
        baca.damp(
            selector=lambda _: baca.select.rest(_, -1),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
    )


def va(m, accumulator):
    accumulator(
        ("va", 1),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eb3"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("va", 2),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("va", 3),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("va", (3, 4)),
        baca.pitch("F3"),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[1:12],
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[1:12],
        ),
    )
    accumulator(
        ("va", 5),
        baca.pitch("Eb3"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("va", (1, 5)),
        baca.dls_staff_padding(4),
    )


def vc1(m, accumulator):
    accumulator(
        ("vc1", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E4"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
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
        ("vc1", 2),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            library.bridge_staff_position(),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.pleaves(_)[:2],
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_)[:3],
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
            baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
            baca.clef_extra_offset((-2, 0)),
            baca.clef_x_extent_false(),
            baca.staff_lines(5),
            selector=lambda _: abjad.select.leaf(_, 3),
        ),
    )
    accumulator(
        ("vc1", 3),
        baca.hairpin(
            "p mp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_)[1:],
        ),
    )
    accumulator(
        ("vc1", (2, 3)),
        baca.new(
            baca.pitch("F#3"),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            selector=lambda _: baca.select.pheads(_)[2:],
        ),
        baca.dynamic(
            "mf",
            selector=lambda _: baca.select.pleaf(_, 2),
        ),
        baca.tuplet_bracket_up(
            selector=lambda _: baca.select.leaves(_)[3:],
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[4:11],
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_)[4:-1],
        ),
    )
    accumulator(
        ("vc1", (4, 5)),
        # TODO: promote into rhythm
        baca.untie(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.staff_positions(
            [2, 3, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 8],
        ),
        baca.glissando(
            allow_repeats=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dls_staff_padding(
            5.5,
            selector=lambda _: baca.select.lleak(baca.select.leaves(_)),
        ),
    )


def vc2(m, accumulator):
    accumulator(
        ("vc2", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eqf4"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 2),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            baca.interpolate_pitches("G2", "F2"),
            baca.glissando(
                allow_repeats=True,
                hide_middle_note_heads=True,
                selector=lambda _: baca.select.tleaves(_),
            ),
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.new(
            baca.hairpin("mf >o niente"),
            baca.scp_spanner(
                "P1 =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            ),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 3),
        baca.pitch("F3"),
        baca.accent(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", (1, 3)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc2", (4, 5)),
        # TODO: promote into rhythm
        baca.untie(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.staff_positions(
            [2, -3, 0, -2, 4, -2, 1, -1, 5, -1, 2, 0, 6, 0, 4, 2, 3, 8],
        ),
        baca.glissando(
            allow_repeats=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dls_staff_padding(5.5),
    )


def cb1(m, accumulator):
    accumulator(
        ("cb1", 1),
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
        ("cb1", 2),
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
            "pp ppp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("cb1", 3),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "Aqs4",
            do_not_transpose=True,
        ),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "pp p mp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.plts(_)[:-1],
        ),
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
            abjad.Tweak(r"- \tweak X-offset 2.5"),
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", (4, 5)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        # TODO: promote into rhythm
        baca.untie(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.staff_positions(
            [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
        ),
        baca.glissando(
            allow_repeats=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.dls_staff_padding(
            5.5,
            selector=lambda _: baca.select.lleak(baca.select.leaves(_)),
        ),
    )


def cb2(m, accumulator):
    accumulator(
        ("cb2", 1),
        baca.flat_glissando(
            "E1",
            left_broken=True,
        ),
        baca.hairpin(
            "o< f",
            left_broken=True,
        ),
        baca.scp_spanner(
            "(T1) -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [2, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", 2),
        baca.new(
            baca.interpolate_pitches("G2", "F#2"),
            baca.glissando(
                allow_repeats=True,
                hide_middle_note_heads=True,
                selector=lambda _: baca.select.tleaves(_),
            ),
            map=lambda _: baca.select.runs(_),
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
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=False,
            ),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", 3),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "F#4",
            do_not_transpose=True,
        ),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "pp p",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.pizzicato_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", (4, 5)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        # TODO: promote into rhythm
        baca.untie(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.staff_positions(
            [9, 3, 6, 0, 2, 1, 4, -2, 0, -1, 2, -4, -2, -3, 0, -5, -4, -6],
        ),
        baca.glissando(
            allow_repeats=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
    )
    accumulator(
        ("cb2", (1, 5)),
        baca.dls_staff_padding(4),
    )


def strings(cache, accumulator):
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
        baca.hairpin(
            '! o< "f"',
            measures=4,
        ),
        baca.hairpin(
            '"f" >o niente',
            measures=5,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda _: [
                x
                for x in baca.select.pheads(_)
                if abjad.get.duration(x) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
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
    bfl(cache["bfl"], accumulator)
    perc1(cache["perc1"], accumulator)
    perc2(cache["perc2"], accumulator)
    hp(cache["hp"], accumulator)
    va(cache["va"], accumulator)
    vc1(cache["vc1"], accumulator)
    vc2(cache["vc2"], accumulator)
    cb1(cache["cb1"], accumulator)
    cb2(cache["cb2"], accumulator)
    strings(cache, accumulator)
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
        commands=accumulator.commands,
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
