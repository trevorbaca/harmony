import abjad
import baca

from harmony import library

#########################################################################################
######################################### 25 [Y] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (7, 4),
        (6, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (1, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[>AA.1]", 1, "#darkgreen"),
        ("[Y.1]", 2),
        ("[<X.8]", 3, "#darkgreen"),
        ("[Y.2]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "144"),
        (1 - 1, "3:2(8)=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "4:5(2)=4"),
        (3 - 1, "48"),
        (3 - 1, "5:6(4)=4"),
        (5 - 1, "57 3/5"),
        (5 - 1, "6:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in (
        (4 - 1, "fermata"),
        (11 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[4 - 1],
        r"\harmony-text-twenty-two",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[11 - 1],
        r"\harmony-text-twenty-three",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, measures):
    music = baca.make_mmrests(measures(1))
    voice.extend(music)
    music = library.make_warble_rhythm(
        measures(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [-2, 2, 2],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_warble_rhythm(
        measures(5, 10),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def PERC1(voice, measures):
    music = baca.make_mmrests(measures(1))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [1, -23, -1, 1, -22],
    )
    voice.extend(music)

    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(10),
        [-1, 1, -2, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def PERC2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, -20, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        [-10, "+"],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_tuplet(
        measures(3),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 9),
        [2, -22, -1, 2, -21],
    )
    voice.extend(music)

    def preprocessor(durations):
        result = baca.sequence.fuse(durations)
        result = baca.sequence.split(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(10),
        [-1, 1, 1, -1, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-24, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(2),
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 10),
        [-24, -1, 3, -20],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def VA(voice, measures):
    music = baca.make_notes(measures(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [6, 3, 11],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_tessera_4(
        measures(5, 10),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def VC1(voice, measures):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [4, 2, 7, 7],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_tessera_4(
        measures(5, 10),
        3,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def VC2(voice, measures):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [9, 11],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_tessera_4(
        measures(5, 10),
        2,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def CB1(voice, measures):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [4, 9, 7],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_tessera_4(
        measures(5, 10),
        1,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def CB2(voice, measures):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(3),
        [9, 11],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(4))
    voice.extend(music)
    music = library.make_tessera_4(
        measures(5, 10),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(11))
    voice.extend(music)


def bfl(m):
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -7),
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
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "niente o< p >o",
                forbid_al_niente_to_bar_line=True,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.text_spanner(
                run,
                "A -> T -> A",
                abjad.Tweak(r"- \tweak staff-padding 10"),
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
    with baca.scope(m.get(5, 10)) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -8),
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
    with baca.scope(m[2]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        library.slate_staff_position(o)
    with baca.scope(m.get(2, 3)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[1:8],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m.get(5, 9)) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[10]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.staff_position(o, 2)
        baca.metric_modulation_spanner(
            o.leaves()[:2],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m.get(2, 3)) as o:
        library.tam_tam_staff_position(o)
        baca.flat_glissando(o.pleaves())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(5, 9)) as o:
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
    with baca.scope(m[10]) as o:
        library.slate_staff_position(o)
        baca.accent(o.pheads()[:2])
        baca.stem_tremolo(o.pleaves()[:2])
        for run in baca.select.runs(o)[:1]:
            run = baca.select.rleak(run)
            baca.hairpin(run, "f >o niente")
        baca.markup(
            o.pleaf(2),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "Ab4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-pince-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            baca.dynamic(u, "p")
            baca.dls_staff_padding(u, 6)
            baca.markup(
                u,
                r"\baca-whisk-markup",
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    with baca.scope(m.get(2, 3)) as o:
        library.whisk_staff_position(o)
        baca.metric_modulation_spanner(
            o.leaves()[1:8],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G1")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 4 + 3)
        baca.markup(
            o.phead(-1),
            r"\baca-lv-into-fermata-markup",
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "Ab4")
        baca.flat_glissando(o)
        baca.dynamic(o.phead(0), "mp")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F#3")
        baca.scp_spanner(
            o.leaves(),
            "P2 -> P1 -> P3 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.select.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(o.leaf(0), "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(o.leaf(-1), "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.note_head_transparent(o.leaves()[1:-1])


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A4 B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            o.leaves(),
            "P2 -> O -> P2 -> P1 -> P3",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! >"
            " mf < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.select.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
        )
        baca.note_head_transparent(o.leaves()[1:-1])
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
        )
        cache.rebuild()
        m = cache[name]


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#2")
        baca.scp_spanner(
            o.leaves(),
            "O -> P2 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.select.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(o.pleaves()[1:-1], "C5")
        baca.note_head_transparent(o.leaves()[1:-1])


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A4 B4 C5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            o.leaves(),
            "P1 -> P2 -> O -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.select.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.note_head_transparent(o.leaves()[1:-1])
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<A4 B4 C5>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<G4 Ab4 Bb4>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        baca.scp_spanner(
            o.leaves(),
            "P1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.hairpin(
            o.rleaves(),
            "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
            " < ff-scratch -- niente",
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.select.plts(_),
                [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            ),
        )
        baca.untie(o.leaves())
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.pitch(
            abjad.select.get(o.pleaves(), [0, -1]),
            "<G4 Ab4 Bb4>",
            do_not_transpose=True,
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(
            o.pleaves()[1:-1],
            "C5",
            do_not_transpose=True,
        )
        baca.note_head_transparent(o.leaves()[1:-1])


def composites(cache):
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 2)) as o:
            baca.stem_tremolo(o.pleaves())
            baca.dynamic(o.phead(0), "pp")
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
            baca.metric_modulation_spanner(
                baca.select.tleaves(o, rleak=True),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads()[1:])
            baca.flat_glissando(o)
            baca.dynamic(o.phead(0), "f")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(5, 10)) as o:
            baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
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
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(measures()),
        library.voice_abbreviations,
    )
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
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
