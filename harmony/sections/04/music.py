import abjad
import baca

from harmony import library

#########################################################################################
######################################### 04 [D] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (3, 4),
            (3, 4),
            (3, 4),
            (3, 4),
            (3, 4),
            (3, 4),
            (1, 4),
            (3, 4),
            (5, 4),
            (1, 4),
            (3, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[D.1-6]", 1),
        ("[D.7]", 8),
        ("[<B.6]", 9, "#darkgreen"),
        ("[D.8]", 10),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "5:4(4)=4"),
        (9 - 1, "144"),
        (9 - 1, "8=4"),
        (11 - 1, "72"),
        (11 - 1, "2=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    for index, string in (
        (7 - 1, "fermata"),
        (10 - 1, "short"),
    ):
        baca.global_fermata_function(rests[index], string)


def BFL(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        6,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(8),
        6,
        advance=72,
        gap=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
        tie=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(11),
        6,
        advance=72 + 12,
        gap=True,
    )
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_phjc_rhythm(
        accumulator.get(1, 6),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_except=[0, 1, 2, -4, -3, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 8))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        counts=[7],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10, 11))
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_phjc_rhythm(
        accumulator.get(1),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 4))
    voice.extend(music)
    music = library.make_train_rhythm(
        accumulator.get(5, 6),
        [2],
        rest_leaves=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_train_rhythm(
        accumulator.get(8),
        [2],
        rest_leaves=[0, 1, 2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [4, 4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [-6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        5,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(8),
        5,
        advance=72,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2, 2, 16],
        invisible=([1], 3),
        written_quarters=([0, 1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(11),
        5,
        advance=72 + 12,
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        4,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(8),
        4,
        advance=72,
        gap=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(11),
        4,
        advance=72 + 12,
        gap=True,
    )
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        3,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(8),
        3,
        advance=72,
        gap=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(11),
        3,
        advance=72 + 12,
        gap=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        2,
        gap=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(8),
        2,
        advance=72,
        gap=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(11),
        2,
        advance=72 + 12,
        gap=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        1,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(8),
        1,
        advance=72,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_tessera_1(
        accumulator.get(11),
        1,
        advance=72 + 12,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice, accumulator):
    music = library.make_tessera_1(
        accumulator.get(1, 6),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(9),
        [(1,)],
        force_augmentation=True,
    )
    pleaf = baca.select.pleaf(music, 0)
    baca.repeat_tie_function(pleaf)
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(11))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch_function(o, "F#3")
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "F#3")
    with baca.scope(m[9]) as o:
        baca.pitch_function(o, "Ab4")
        baca.stem_tremolo_function(abjad.select.get(o.plts(), [0, 1], 3))
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "o<| ff |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
    with baca.scope(m[11]) as o:
        baca.pitch_function(o, "F#3")
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.purpleheart_staff_positions_function(o, [0, -2, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m.get(5, 6)) as o:
        library.purpleheart_staff_positions_function(o, [0, 2, 0, 2, 2])
        baca.hairpin_function(o.tleaves(), "p < f")
    with baca.scope(m[9]) as o:
        library.purpleheart_staff_positions_function(o, [-2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.dynamic_function(
            o.leaf(0, grace=False),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding_function(o, 5.5)


def perc2(m):
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions_function(o, [0, -2, 0, -2, 0])
        baca.hairpin_function(o.tleaves(), "f > p")
    with baca.scope(m.get(5, 6)) as o:
        library.purpleheart_staff_positions_function(o, [2])
        baca.hairpin_function(o.tleaves(), "p < f")
    with baca.scope(m[8]) as o:
        baca.dynamic_function(o.phead(0), "p-sub")
    with baca.scope(m.get(8, 9)) as o:
        library.purpleheart_staff_positions_function(o, [2])
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.pleaves()),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[11]) as o:
        library.purpleheart_staff_positions_function(o, [0])
        baca.dynamic_function(o.phead(0), "f-sub")
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.pleaves()),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding_function(o, 5.5)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "C#4")
    with baca.scope(m[8]) as o:
        baca.pitch_function(o, "C#4")
    with baca.scope(m[9]) as o:
        baca.pitch_function(o, "<G#4 A4 B4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.stem_tremolo_function(o.pleaves())
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin_function(
                clpart,
                "p < ff > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[11]) as o:
        baca.pitch_function(o, "C#4")
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding_function(o, 4)


def va(m, accumulator):
    accumulator(
        ("va", (1, 6)),
    )
    accumulator(
        ("va", 9),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -27 - 21),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("va", 11),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("va", [(1, 6), 8, 11]),
        library.bridge_staff_position(),
    )
    accumulator(
        ("va", [(1, 8), 11]),
        baca.dls_staff_padding(6),
    )


def vc1(m, accumulator):
    accumulator(
        ("vc1", (1, 6)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("vc1", [(1, 8), 11]),
        baca.pitch("F#3"),
    )
    accumulator(
        ("vc1", 9),
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -19 - 21),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("vc1", 11),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("vc1", (1, 11)),
        baca.dls_staff_padding(4),
    )


def vc2(m, accumulator):
    accumulator(
        ("vc2", (1, 6)),
    )
    accumulator(
        ("vc2", 9),
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -18 - 21),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 11),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("vc2", [(1, 8), 11]),
        baca.pitch("F3"),
    )
    accumulator(
        ("vc2", (1, 11)),
        baca.dls_staff_padding(4),
    )


def vcs(cache, accumulator):
    accumulator(
        (["vc1", "vc2"], [(1, 6), 8, 11]),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_), grace=False),
        ),
    )


def cb1(m, accumulator):
    accumulator(
        ("cb1", (1, 6)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("cb1", 9),
        baca.pitch(
            "Ab3",
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -32 - 21),
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("cb1", [(1, 6), 8, 11]),
        baca.pitch(
            "Aqs4",
            do_not_transpose=True,
        ),
        baca.pizzicato_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-eleven-e",
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", [(1, 8), 11]),
        baca.dls_staff_padding(4),
    )


def cb2(m, accumulator):
    accumulator(
        ("cb2", (1, 6)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "F#4",
            do_not_transpose=True,
        ),
        baca.pizzicato_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleaves(_, grace=False),
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
        ("cb2", (8, 9)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Ab1"),
        baca.hairpin(
            'o< "mf" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb2", 11),
        baca.flat_glissando(
            "E1",
            allow_hidden=True,
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o< f",
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb2", (1, 11)),
        baca.dls_staff_padding(4),
    )


def cbs(cache, accumulator):
    accumulator(
        ("cb1", [(1, 6), 8, 11]),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
    )
    accumulator(
        ("cb2", (1, 6)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
    )


def composites(cache, accumulator):
    accumulator(
        (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [(1, 6), 8, 11]),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("cb2", (1, 6)),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        (["bfl", "hp", "cb1", "cb2"], (1, 3)),
        baca.hairpin(
            "pp p mp mf f",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        (["bfl", "hp", "cb1", "cb2"], (4, 6)),
        baca.hairpin(
            "mf mp p pp pp pp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        (["va", "vc2"], (1, 3)),
        baca.hairpin(
            'pp p mp mf "f"',
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("vc1", (1, 3)),
        baca.hairpin(
            'p mp mf "f"',
            bookend=False,
            pieces=lambda _: baca.select.plts(_)[1:],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2"], (4, 6)),
        baca.hairpin(
            "mf mp p pp pp pp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        (["bfl", "hp", "va", "vc1", "vc2", "cb1"], [8, 11]),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )


def harmonics(cache, accumulator):
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 9),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
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
    perc1(cache)
    perc2(cache["perc2"])
    hp(cache)
    va(cache["va"], accumulator)
    vc1(cache["vc1"], accumulator)
    vc2(cache["vc2"], accumulator)
    vcs(cache, accumulator)
    cb1(cache["cb1"], accumulator)
    cb2(cache["cb2"], accumulator)
    cbs(cache, accumulator)
    composites(cache, accumulator)
    harmonics(cache, accumulator)
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
