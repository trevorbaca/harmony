import abjad
import baca

from harmony import library

#########################################################################################
########################################### 26 ##########################################
#########################################################################################

AG = baca.rhythm.AG
T = baca.rhythm.T
bl = baca.rhythm.bl
br = baca.rhythm.br
h = baca.rhythm.h
rt = baca.rhythm.rt
w = baca.rhythm.w

OBGC = library.OBGC
mmrests = library.mmrests
rhythm = library.rhythm


def GLOBALS(skips, rests):
    stage_markup = (
        ("[Z.1-2]", 1),
        ("[>CC.1]", 4, "#darkgreen"),
        ("[Z.3-5]", 5),
        ("[<X.8]", 8, "#darkgreen"),
        ("[<Y.2]", 9, "#darkgreen"),
        ("[Z.6]", 10),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "5:3(4)=4"),
        (4 - 1, "72"),
        (4 - 1, "3:4(4)=4"),
        (5 - 1, "96"),
        (5 - 1, "4:3(4)=4"),
        (8 - 1, "48"),
        (8 - 1, "2=4"),
        (9 - 1, "57 3/5"),
        (9 - 1, "6:5(4)=4"),
        (10 - 1, "96"),
        (10 - 1, "5:3(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-twenty-four",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(4, 8), rt(h(w(4, 8))), rt(16)],
    )
    rhythm(
        voice,
        3 * [4, -12],
        time_signatures(5, 7),
    )
    rhythm(
        voice,
        4 * [-2, 2, 2],
        time_signatures(8),
    )
    library.make_warble_rhythm(
        voice,
        time_signatures(9),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest=([1, 2, 4], 5),
    )
    rhythm(
        voice,
        [4, -12],
        time_signatures(10),
    )


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3, 4))
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(5, 6),
    )
    rhythm(
        voice,
        [4, "-", 6, -2],
        time_signatures(7),
    )
    rhythm(
        voice,
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
        time_signatures(8),
    )
    rhythm(
        voice,
        [1, -3, -8, T([4, -12, 4], -8)],
        time_signatures(9),
    )
    rhythm(
        voice,
        [4, -12],
        time_signatures(10),
    )


def PERC2(voice, time_signatures):
    mmrests(voice, time_signatures(1))
    rhythm(
        voice,
        T([-8, 1, -3], 4),
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3, 6))
    rhythm(
        voice,
        [-8, "+"],
        time_signatures(7),
    )
    rhythm(
        voice,
        T([16], 4),
        time_signatures(8),
    )
    rhythm(
        voice,
        [2, -22, -1, 2, -21],
        time_signatures(9),
    )
    rhythm(
        voice,
        [-12, T([-4, 2], -2)],
        time_signatures(10),
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    library.make_one_beat_tuplets(
        voice,
        time_signatures(1, 2),
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
    )
    mmrests(voice, time_signatures(3, 4))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(5, 6),
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        ["-", 6, -2],
        time_signatures(7),
    )
    rhythm(
        voice,
        2 * [1, -3, 3, -3, 3, -3],
        time_signatures(8),
    )
    mmrests(voice, time_signatures(9))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(10),
        [-2, 4, "-"],
        extra_counts=[2],
    )


def VA(voice, time_signatures):
    mmrests(voice, time_signatures(1, 3))
    rhythm(
        voice,
        [w(4, 8), rt(h(w(4, 8))), rt(16)],
    )
    music = baca.make_repeat_tied_notes(time_signatures(5, 7))
    voice.extend(music)
    rhythm(
        voice,
        [6, 3, 11],
        time_signatures(8),
    )
    library.make_tessera(
        voice,
        time_signatures(9),
        *(4, 4),
    )
    mmrests(voice, time_signatures(10))


def VC1(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(4, 8), rt(h(w(4, 8))), rt(16)],
    )
    rhythm(
        voice,
        3 * [4, -12],
        time_signatures(5, 7),
    )
    rhythm(
        voice,
        [4, 2, 7, 7],
        time_signatures(8),
    )
    library.make_tessera(
        voice,
        time_signatures(9),
        *(4, 3),
    )
    rhythm(
        voice,
        [4, -12],
        time_signatures(10),
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(4, 8), rt(h(w(4, 8))), rt(16)],
    )
    rhythm(
        voice,
        3 * [4, -12],
        time_signatures(5, 7),
    )
    rhythm(
        voice,
        [9, 11],
        time_signatures(8),
    )
    library.make_tessera(
        voice,
        time_signatures(9),
        *(4, 2),
    )
    rhythm(
        voice,
        [4, -12],
        time_signatures(10),
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(4, 8), rt(h(w(4, 8))), rt(16)],
    )
    rhythm(
        voice,
        3 * [4, -12],
        time_signatures(5, 7),
    )
    rhythm(
        voice,
        [4, 9, 7],
        time_signatures(8),
    )
    library.make_tessera(
        voice,
        time_signatures(9),
        *(4, 1),
    )
    rhythm(
        voice,
        [4, -12],
        time_signatures(10),
    )


def CB2(voice, time_signatures):
    rhythm(
        voice,
        2 * [4, -12],
        time_signatures(1, 2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [w(4, 8), rt(h(w(4, 8))), rt(16)],
    )
    rhythm(
        voice,
        3 * [4, -12],
        time_signatures(5, 7),
    )
    rhythm(
        voice,
        [9, 11],
        time_signatures(8),
    )
    library.make_tessera(
        voice,
        time_signatures(9),
        *(4, 0),
    )
    rhythm(
        voice,
        [4, -12],
        time_signatures(10),
    )


def bfl(m):
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "C3")
            baca.dynamic(o.phead(0), "mp")
            for run in baca.select.runs(o):
                baca.spanners.covered(
                    run,
                    descriptor=r"\baca-cov-markup =|",
                    rleak=True,
                    staff_padding=3,
                )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Bb4")
        baca.hairpin(
            baca.select.lparts(o, [1, 2]),
            "pp< p>o",
            rleak=True,
        )
        baca.spanners.trill(
            baca.select.tleaves(o),
            baca.tweak.bound_details_right_padding(3),
            rleak=True,
        )
        baca.spanners.text(
            baca.select.lparts(o, [1, 1]),
            "(T) -> A -> (T)",
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            baca.hairpin(
                baca.select.lparts(run, [1, 1]),
                "o< p>o!",
                rleak=True,
            )
            baca.spanners.trill(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
            baca.spanners.text(
                baca.select.lparts(run, [1, 1]),
                "A -> T -> A",
                rleak=True,
                staff_padding=10,
            )
    with baca.scope(m[9]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -9),
        )
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                abjad.select.partition_by_ratio(run, (4, 5)),
                "o< mp>o!",
            )
            baca.spanners.trill(
                run,
                baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
                rleak=True,
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"ff"')
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(5, 6)) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            '"ff"-ancora',
            baca.tweak.self_alignment_x(-0.9),
        )
    with baca.scope(m[7]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.pleaf(1), "p")
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(7, 8)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[2:-1],
            rleak=True,
            staff_padding=5.5,
        )
    with baca.scope(m[9]) as o:
        with baca.scope(o.pleaf(0)) as u:
            library.brake_drum_staff_position(u)
            baca.dynamic(u, "f")
            baca.markup(
                u,
                r"\baca-boxed-brake-drum-markup",
                baca.tweak.staff_padding(6),
            )
        library.slate_staff_position(o.pleaves()[1:])
        baca.dynamic(o.pleaf(1), '"ff"')
        baca.markup(
            o.pleaf(1),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[10]) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(9, 10)) as o:
        baca.spanners.metric_modulation(
            o.leaves()[3:-1],
            rleak=True,
            staff_padding=10.5,
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.override.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.pheads(), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-struck-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(7, 8)) as o:
        library.tam_tam_staff_position(o)
        baca.glissando(o.pleaves(), "C4")
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[9]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "f>o!",
                rleak=True,
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-brush-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(1, 9)) as o:
        baca.override.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.staff_lines(o.leaf(-2), 3)
        library.purpleheart_staff_positions(o, [2])
        baca.dynamic(o.phead(0), "ff")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.self_alignment_x(1),
            baca.tweak.staff_padding(5),
        )
        baca.spanners.metric_modulation(
            abjad.select.leaves(o)[-1:],
            right_broken=True,
            rleak=True,
            staff_padding=10.5,
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "C#5:D5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.double_flageolet(o.pheads())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pheads(),
            r"\baca-lv-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o, "C#5:D5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 6)) as o:
        baca.double_flageolet(o.pheads())
        baca.dynamic(o.phead(0), "f-ancora")
        baca.markup(
            o.pheads(),
            r"\baca-lv-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m.get(1, 6)) as o:
        baca.override.dls_staff_padding(o, 4 + 2)
    with baca.scope(m[7]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            baca.dynamic(u, "p")
            baca.override.dls_staff_padding(u, 6)
            baca.markup(
                u,
                r"\baca-whisk-markup",
                baca.tweak.staff_padding(3),
            )
    with baca.scope(m.get(7, 8)) as o:
        library.whisk_staff_position(o)
        baca.staff_position(o, 0)
        baca.spanners.metric_modulation(
            o.leaves()[1:-1],
            rleak=True,
            staff_padding=8,
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "C#5:D5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[10]) as o:
        baca.double_flageolet(o.pheads())
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pheads(),
            r"\baca-lv-markup",
            baca.tweak.padding(1.5),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(4, 7)) as o:
        baca.pitch(o, "Bb4")
        baca.spanners.trill(
            baca.select.tleaves(o),
            baca.tweak.bound_details_right_padding(2),
            alteration="Cb5",
            rleak=True,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#3")
        baca.spanners.scp(
            o.plts(),
            "P2 -> P1 -> P3 -> P2",
            staff_padding=5.5,
        )
    with baca.scope(m[9]) as o:
        baca.pitch(o, "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#2")
        baca.spanners.scp(
            o.plts(),
            "P2 -> O -> P2 -> P1 -> P3",
            staff_padding=5.5,
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o.plts(),
            "pp-- !< mp>",
            baca.tweak.to_bar_line_true(),
        )
        baca.untie(o.leaves())
        baca.pitch(abjad.select.get(o.pleaves(), [0, -1]), "A4:B4:C5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.override.note_head_transparent(o.pleaves()[1:-1])
        baca.override.note_head_style_harmonic_black(o.pleaves())
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "D2")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#2")
        baca.spanners.scp(
            o.plts(),
            "O -> P2 -> P1",
            staff_padding=5.5,
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.untie(o.leaves())
        baca.pitch(abjad.select.get(o.pleaves(), [0, -1]), "G4:Ab4:Bb4")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.override.note_head_transparent(o.pleaves()[1:-1])
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o, [1, 2, 3, 2]),
            "pp-- !< mp-- !>",
            baca.tweak.to_bar_line_true(),
        )
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "C#2")


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        baca.spanners.scp(
            o.plts(),
            "P1 -> P2 -> O -> P2",
            staff_padding=5.5,
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.untie(o.leaves())
        baca.pitch(
            abjad.select.get(baca.select.pleaves(o), [0, -1]),
            "A4:B4:C5",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.override.note_head_transparent(o.pleaves()[1:-1])
        baca.hairpin(
            baca.select.lparts(o, [2, 3, 2]),
            "pp-- !< mp>",
            baca.tweak.to_bar_line_true(),
        )
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "D2")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        baca.spanners.scp(
            o.plts(),
            "P1 -> P2 -> O",
            staff_padding=5.5,
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.untie(o.leaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "G4:Ab4:Bb4",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5", do_not_transpose=True)
        baca.override.note_head_transparent(o.pleaves()[1:-1])
        baca.override.note_head_style_harmonic_black(o.pleaves())
        baca.hairpin(
            baca.select.lparts(o, [2, 1, 1]),
            "pp-- !< mp>",
            baca.tweak.to_bar_line_true(),
        )
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "C#2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.hairpin(
                baca.select.lparts(o, [1, 1 + 1]),
                "pp< p>pp",
            )
            if name != "va":
                baca.clef(o.leaf(0), "treble")
                baca.spanners.trill(
                    baca.select.tleaves(o),
                    baca.tweak.bound_details_right_padding(2),
                    alteration="Cb5",
                    rleak=True,
                )
            if name in ("vc1", "vc2"):
                baca.pitch(o, "Bb4")
            elif name in ("cb1", "cb2"):
                baca.pitch(o, "Bb4", do_not_transpose=True)
        with baca.scope(m[8]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads()[1:])
            baca.hairpin(
                o,
                "o<f",
            )
        with baca.scope(m[9]) as o:
            baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
        with baca.scope(m.get(1, 10)) as o:
            baca.override.dls_staff_padding(o, 4)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        for item in [(1, 2), (5, 7), 10]:
            with baca.scope(m.get(item)) as o:
                baca.clef(o.leaf(0), "bass")
                for run in baca.select.runs(o):
                    baca.hairpin(
                        run,
                        "o<|ff",
                        rleak=True,
                    )
                for run in abjad.select.runs(o):
                    leaf = baca.select.rleaf(run, -1)
                    baca.stop_on_string(leaf)
                baca.spanners.scp(
                    o.tleaves(),
                    "P1 =|",
                    rleak=True,
                    staff_padding=3,
                )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [4, 4, 1, 6, 4, 4, 4, 5, 6, 4]
    pairs = [(_, 4) for _ in numerators]
    time_signatures = baca.section.wrap(pairs)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        score_persistent_indicators=previous_persistent_indicators["Score"],
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(voices("bfl"), time_signatures)
    PERC1(voices("perc1"), time_signatures)
    PERC2(voices("perc2"), time_signatures)
    HP(voices("hp"), time_signatures)
    VA(voices("va"), time_signatures)
    VC1(voices("vc1"), time_signatures)
    VC2(voices("vc2"), time_signatures)
    CB1(voices("cb1"), time_signatures)
    CB2(voices("cb2"), time_signatures)
    baca.section.reapply_persistent_indicators(
        voices,
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(time_signatures()),
        library.voice_abbreviations,
    )
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    composites(cache)
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
    )
    baca.section.deactivate_tags(
        score,
    )
    baca.section.activate_tags(
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


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=40, distances=distances),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(8, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        overrides=(baca.layout.Override([3], (1, 288)),),
    )
    baca.build.write_layout_ly(breaks, spacing)


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    if environment.score():
        score = make_score(
            environment.first_measure_number,
            environment.previous_metadata["persistent_indicators"],
            environment.timing,
        )
        persist_score(score, environment)
    if environment.arguments.layout:
        make_layout()


if __name__ == "__main__":
    main()
