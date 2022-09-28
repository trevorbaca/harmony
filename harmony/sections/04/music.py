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
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "5:4(4)=4"),
        (9 - 1, "144"),
        (9 - 1, "8=4"),
        (11 - 1, "72"),
        (11 - 1, "2=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in (
        (7 - 1, "fermata"),
        (10 - 1, "short"),
    ):
        baca.global_fermata(rests[index], string)


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
    baca.section.append_anchor_note(voice)


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
    baca.section.append_anchor_note(voice)


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
    baca.section.append_anchor_note(voice)


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
    baca.section.append_anchor_note(voice)


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
    baca.repeat_tie(pleaf)
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(11))
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.pitch(o, "F#3")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#3")
    with baca.scope(m[9]) as o:
        baca.pitch(o, "Ab4")
        baca.stem_tremolo(abjad.select.get(o.plts(), [0, 1], 3))
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "o<| ff |> p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
    with baca.scope(m[11]) as o:
        baca.pitch(o, "F#3")
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.hairpin(o.tleaves(), "f > p")
    with baca.scope(m.get(5, 6)) as o:
        library.purpleheart_staff_positions(o, [0, 2, 0, 2, 2])
        baca.hairpin(o.tleaves(), "p < f")
    with baca.scope(m[9]) as o:
        library.purpleheart_staff_positions(o, [-2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 5.5)


def perc2(m):
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.hairpin(o.tleaves(), "f > p")
    with baca.scope(m.get(5, 6)) as o:
        library.purpleheart_staff_positions(o, [2])
        baca.hairpin(o.tleaves(), "p < f")
    with baca.scope(m[8]) as o:
        baca.dynamic(o.phead(0), "p-sub")
    with baca.scope(m.get(8, 9)) as o:
        library.purpleheart_staff_positions(o, [2])
        baca.metric_modulation_spanner(
            baca.select.rleak(o.pleaves()),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[11]) as o:
        library.purpleheart_staff_positions(o, [0])
        baca.dynamic(o.phead(0), "f-sub")
        baca.metric_modulation_spanner(
            baca.select.rleak(o.pleaves()),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 5.5)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "C#4")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "C#4")
    with baca.scope(m[9]) as o:
        baca.pitch(o, "<G#4 A4 B4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.stem_tremolo(o.pleaves())
        for clpart in baca.select.clparts(o, [3]):
            baca.hairpin(
                clpart,
                "p < ff > p",
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[11]) as o:
        baca.pitch(o, "C#4")
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -27 - 21),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        )
        baca.dls_staff_padding(o.leaves(grace=False), 4)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    for item in [(1, 6), 8, 11]:
        with baca.scope(m.get(item)) as o:
            library.bridge_staff_position(o)
    for item in [(1, 8), 11]:
        with baca.scope(m.get(item)) as o:
            baca.dls_staff_padding(o, 6)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[:3],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    for item in [(1, 8), 11]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "F#3")
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -19 - 21),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        )
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.pitch(o.plts(grace=False), "Ab3")
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -18 - 21),
            allow_obgc_mutation=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        )
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "bass")
    for item in [(1, 8), 11]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "F3")
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def vcs(cache):
    for name in ["vc1", "vc2"]:
        for item in [(1, 6), 8, 11]:
            with baca.scope(cache[name].get(item)) as o:
                baca.damp_spanner(
                    baca.select.rleak(baca.select.ltleaves(o), grace=False),
                    abjad.Tweak(r"- \tweak staff-padding 5.5"),
                )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m[9]) as o:
        baca.pitch(o.plts(grace=False), "Ab3", do_not_transpose=True)
        baca.pitches(
            o.plts(grace=True),
            abjad.sequence.rotate(library.appoggiato_pitches_a_flat(), -32 - 21),
            allow_obgc_mutation=True,
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.dynamic(
            o.leaf(0, grace=False),
            "ff-p",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        )
        baca.dls_staff_padding(o.leaves(grace=False), 6)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
        )
    for item in [(1, 6), 8, 11]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Aqs4", do_not_transpose=True)
            baca.pizzicato_spanner(
                baca.select.rleaves(o, grace=False),
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
            baca.markup(o.pleaf(0), r"\baca-eleven-e")
            baca.markup(
                o.pleaf(0),
                r"\baca-string-iv-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
                direction=abjad.DOWN,
            )
    for item in [(1, 8), 11]:
        with baca.scope(m.get(item)) as o:
            baca.dls_staff_padding(o, 4)


def cb2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4", do_not_transpose=True)
        baca.pizzicato_spanner(
            baca.select.rleaves(o, grace=False),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak X-offset 2.5"),
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(8, 9)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Ab1")
        baca.hairpin(
            o.rleaves(),
            'o< "mf" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[11]) as o:
        baca.flat_glissando(
            o.rleaves(),
            "E1",
            allow_hidden=True,
            right_broken=True,
        )
        baca.hairpin(
            o.rleaves(),
            "o< f",
            right_broken=True,
        )
        baca.scp_spanner(
            o.rleaves(),
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def cbs(cache):
    m = cache["cb1"]
    for item in [(1, 6), 8, 11]:
        with baca.scope(m.get(item)) as o:
            baca.note_head_style_harmonic(o.pleaves())
    m = cache["cb2"]
    with baca.scope(m.get(1, 6)) as o:
        baca.note_head_style_harmonic(o.pleaves())


def composites(cache):
    for name in ["bfl", "hp", "va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        for item in [(1, 6), 8, 11]:
            with baca.scope(m.get(item)) as o:
                baca.accent(o.pheads())
    m = cache["cb2"]
    with baca.scope(m.get(1, 6)) as o:
        baca.accent(o.pheads())
    for name in ["bfl", "hp", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 3)) as o:
            baca.hairpin(
                o,
                "pp p mp mf f",
                bookend=False,
                pieces=lambda _: baca.select.plts(_),
            )
    for name in ["bfl", "hp", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 6)) as o:
            baca.hairpin(
                o,
                "mf mp p pp pp pp",
                bookend=False,
                pieces=lambda _: baca.select.plts(_),
            )
    for name in ["va", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(1, 3)) as o:
            baca.hairpin(
                o,
                'pp p mp mf "f"',
                bookend=False,
                pieces=lambda _: baca.select.plts(_),
            )
    m = cache["vc1"]
    with baca.scope(m.get(1, 3)) as o:
        baca.hairpin(
            o,
            'p mp mf "f"',
            bookend=False,
            pieces=lambda _: baca.select.plts(_)[1:],
        )
    for name in ["va", "vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(4, 6)) as o:
            baca.hairpin(
                o,
                "mf mp p pp pp pp",
                bookend=False,
                pieces=lambda _: baca.select.plts(_),
            )
    for name in ["bfl", "hp", "va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        for n in [8, 11]:
            with baca.scope(m.get(n)) as o:
                baca.dynamic(o.phead(0), "pp")


def harmonics(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[9]) as o:
            for run in abjad.select.runs(o, grace=True):
                baca.note_head_style_harmonic(run)


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
    perc1(cache)
    perc2(cache["perc2"])
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    vcs(cache)
    cb1(cache)
    cb2(cache["cb2"])
    cbs(cache)
    composites(cache)
    harmonics(cache)
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
