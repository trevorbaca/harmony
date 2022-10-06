import abjad
import baca

from harmony import library

#########################################################################################
######################################### 26 [Z] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (4, 4),
        (4, 4),
        (1, 4),
        (6, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (4, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


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
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-twenty-four",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 4, 16],
        written_halves=[0, 1],
        invisible_pairs=True,
        tie=[1, 2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-2, 2, 2],
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        measures(9),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [4, -12],
    )
    voice.extend(music)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 6),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        [4, "-", 6, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(9),
        [1, -11, 4, -12, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [4, -12],
    )
    voice.extend(music)


def PERC2(voice, measures):
    music = baca.make_mmrests(measures(1))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-8, 1, -3],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        [-8, "+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(9),
        [2, -22, -1, 2, -21],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        ["-", 2],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 6),
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["-", 6, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [1, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(9))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [-2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VA(voice, measures):
    music = baca.make_mmrests(measures(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(measures(5, 7))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [6, 3, 11],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        measures(9),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(10))
    voice.extend(music)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [4, 2, 7, 7],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        measures(9),
        3,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [4, -12],
    )
    voice.extend(music)


def VC2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [9, 11],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        measures(9),
        2,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [4, -12],
    )
    voice.extend(music)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [4, 9, 7],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        measures(9),
        1,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [4, -12],
    )
    voice.extend(music)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [9, 11],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        measures(9),
        0,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(10),
        [4, -12],
    )
    voice.extend(music)


def bfl(m):
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "C3")
            baca.dynamic(o.phead(0), "mp")
            for run in baca.select.runs(o):
                run = baca.select.rleak(run)
                baca.covered_spanner(
                    run,
                    abjad.Tweak(r"- \tweak staff-padding 3"),
                    items=r"\baca-cov-markup =|",
                )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Bb4")
        baca.hairpin(
            o.rleaves(),
            "pp < p >o",
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 3]),
        )
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        )
        baca.text_spanner(
            o,
            "(T) -> A -> (T)",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            baca.hairpin(
                baca.select.rleak(run),
                "niente o< p >o",
                forbid_al_niente_to_bar_line=True,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            baca.trill_spanner(
                baca.select.tleaves(run, rleak=True),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                baca.select.rleak(run),
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 10"),
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
    with baca.scope(m[9]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -9),
        )
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
        for run in baca.select.runs(o):
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=lambda _: abjad.select.partition_by_ratio(
                    abjad.select.leaves(_), (4, 5)
                ),
            )
            baca.trill_spanner(
                baca.select.rleak(run),
                abjad.Tweak(
                    r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"
                ),
            )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"ff"')
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 6)) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            '"ff"-ancora',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[7]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.pleaf(1), "p")
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(7, 8)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[2:],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[9]) as o:
        with baca.scope(o.pleaf(0)) as u:
            library.brake_drum_staff_position(u)
            baca.dynamic(u, "f")
            baca.markup(
                u,
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )
        library.slate_staff_position(o.pleaves()[1:])
        baca.dynamic(o.pleaf(1), '"ff"')
        baca.markup(
            o.pleaf(1),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[10]) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(9, 10)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[3:],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.pheads(), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(7, 8)) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(o.pleaves())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[9]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(run, "f >o niente")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 9)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[10]) as o:
        baca.staff_lines(o.leaf(-2), 3)
        library.purpleheart_staff_positions(o, [2])
        baca.dynamic(o.phead(0), "ff")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
        baca.metric_modulation_spanner(
            baca.select.rleak(abjad.select.leaves(o)[-1:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
        )


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<C#5 D5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.double_flageolet(o.pheads())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pheads(),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o, "<C#5 D5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 6)) as o:
        baca.double_flageolet(o.pheads())
        baca.dynamic(o.phead(0), "f-ancora")
        baca.markup(
            o.pheads(),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m.get(1, 6)) as o:
        baca.dls_staff_padding(o, 4 + 2)
    with baca.scope(m[7]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            baca.dynamic(u, "p")
            baca.dls_staff_padding(u, 6)
            baca.markup(
                u,
                r"\baca-whisk-markup",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m.get(7, 8)) as o:
        library.whisk_staff_position(o)
        baca.metric_modulation_spanner(
            o.leaves()[1:],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
    with baca.scope(m[10]) as o:
        baca.pitch(o, "<C#5 D5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[10]) as o:
        baca.double_flageolet(o.pheads())
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pheads(),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(4, 7)) as o:
        baca.pitch(o, "Bb4")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#3")
        baca.scp_spanner(
            o.leaves(),
            "P2 -> P1 -> P3 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[9]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            o.leaves(),
            "P2 -> O -> P2 -> P1 -> P3",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o,
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.plts(_),
        )
        baca.untie(o.leaves())
        baca.pitch(abjad.select.get(o.pleaves(), [0, -1]), "<A4 B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.note_head_transparent(o.pleaves()[1:-1])
        baca.note_head_style_harmonic_black(o.pleaves())
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "D2")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            o.leaves(),
            "O -> P2 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.untie(o.leaves())
        baca.pitch(abjad.select.get(o.pleaves(), [0, -1]), "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.note_head_transparent(o.pleaves()[1:-1])
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.hairpin(
            o,
            "pp -- ! < mp -- ! >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2]),
        )
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "C#2")


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            o.leaves(),
            "P1 -> P2 -> O -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.untie(o.leaves())
        baca.pitch(
            abjad.select.get(baca.select.pleaves(o), [0, -1]),
            "<A4 B4 C5>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.note_head_transparent(o.pleaves()[1:-1])
        baca.hairpin(
            o,
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [2, 3, 2]),
        )
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "D2")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[8]) as o:
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            o.leaves(),
            "P1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.untie(o.leaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[9]) as o:
        baca.pitch(o.pleaves()[1:-1], "C5", do_not_transpose=True)
        baca.note_head_transparent(o.pleaves()[1:-1])
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.hairpin(
            o,
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.lparts(_, [2, 1, 1]),
        )
    for item in [(1, 2), (5, 7), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "C#2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            baca.hairpin(
                o,
                "pp < p > pp",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            if name != "va":
                baca.clef(o.leaf(0), "treble")
                baca.trill_spanner(
                    baca.select.tleaves(o, rleak=True),
                    abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                    alteration="Cb5",
                )
            if name in ("vc1", "vc2"):
                baca.pitch(o, "Bb4")
            elif name in ("cb1", "cb2"):
                baca.pitch(o, "Bb4", do_not_transpose=True)
        with baca.scope(m[8]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads()[1:])
            baca.hairpin(o, "o< f")
        with baca.scope(m[9]) as o:
            baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
        with baca.scope(m.get(1, 10)) as o:
            baca.dls_staff_padding(o, 4)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        for item in [(1, 2), (5, 7), 10]:
            with baca.scope(m.get(item)) as o:
                baca.clef(o.leaf(0), "bass")
                for run in baca.select.runs(o):
                    run = baca.select.rleak(run)
                    baca.hairpin(run, "o<| ff")
                for leaf in baca.select.leaf_in_each_rleak_run(o, -1):
                    baca.stop_on_string(leaf)
                baca.scp_spanner(
                    baca.select.tleaves(o, rleak=True),
                    "P1 =|",
                    abjad.Tweak(r"- \tweak staff-padding 3"),
                    autodetect_right_padding=False,
                )


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
    GLOBALS(score["Skips"], score["Rests"])
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
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.section.cache_leaves(
        score,
        len(measures()),
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


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
        score,
        **baca.section.section_defaults(),
        always_make_global_rests=True,
        empty_fermata_measures=True,
        environment=environment,
        global_rests_in_topmost_staff=True,
        manifests=library.manifests,
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
