import abjad
import baca

from harmony import library

#########################################################################################
######################################### 18 [R] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (6, 4),
        (1, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
    ]
    signatures = baca.section.signatures(time_signatures)
    return score, voices, signatures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[R.1-2]", 1),
        ("[>S.1]", 3, "#darkgreen"),
        ("[<P.7-8]", 4, "#darkgreen"),
        ("[<Q.1]", 6, "#darkgreen"),
        ("[R.3]", 8),
        ("[R.4-6]", 9),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "3:2(4)=4"),
        (3 - 1, "96"),
        (3 - 1, "4:3(4)=4"),
        (6 - 1, "48"),
        (6 - 1, "2=4"),
        (8 - 1, "72"),
        (8 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in ((7 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[7 - 1],
        r"\harmony-text-seventeen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, signatures):
    music = baca.make_mmrests(signatures(1, 2))
    voice.extend(music)
    music = library.make_warble_rhythm(
        signatures(3),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4),
        [3, -1, 8, -8, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(5),
        [-4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(6),
        [4, 4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(7, 11))
    voice.extend(music)


def PERC1(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [2, 2, "-"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        signatures(3),
        weights=[5, 11],
        counts=[0, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        [21, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(signatures(6))
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        signatures(10),
        [(1, -1, -8)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        [2, "-"],
    )
    voice.extend(music)


def PERC2(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [2, 2, "-"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        signatures(3),
        weights=[5, 11],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        [21, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(signatures(6))
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(9, 10))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        ["-", 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def HP(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [-4, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [-2, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        [21, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(signatures(6))
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9),
        [3, 3, "-"],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(10),
        [3, 3, "-"],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        [3, 3, "-"],
        untie=True,
    )
    voice.extend(music)


def VA(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    music = baca.make_notes(signatures(6))
    voice.extend(music)
    music = baca.make_mmrests(signatures(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_tuplet(
        signatures(10),
        [10 * (1,)],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VC1(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        signatures(6),
        3,
        rest_plts=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9, 11),
        [3, -7],
    )
    voice.extend(music)


def VC2(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        signatures(6),
        2,
        rest_plts=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_tuplet(
        signatures(10),
        [10 * (1,)],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB1(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        signatures(6),
        1,
        rest_plts=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9),
        [1, 4, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(10),
        [2, 3, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        [1, 3, 2, "-"],
    )
    voice.extend(music)


def CB2(voice, signatures):
    music = library.make_sixteenths(
        signatures(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(2),
        ["-", 2, 2, 2, 2],
        fuse=True,
        extra_counts=[4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(4, 5),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        signatures(6),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(signatures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(9),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_tuplet(
        signatures(10),
        [10 * (1,)],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        signatures(11),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def bfl(m):
    with baca.scope(m[3]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -4),
        ),
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
            baca.hairpin(
                u,
                "o< mp >o niente",
                pieces=lambda _: abjad.select.partition_by_ratio(
                    abjad.select.leaves(_),
                    (3, 4),
                ),
            )
            baca.trill_spanner(
                u,
                abjad.Tweak(
                    r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"
                ),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "D4")
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.text_spanner(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m.get(5, 6)) as o:
        baca.pitch(o, "D4")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.text_spanner(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=True,
                bookend=False,
            )
        baca.metric_modulation_spanner(
            baca.select.rleak(o.run(0)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 6)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.phead(1))
        baca.dynamic(o.phead(0), "mp")
        baca.hairpin(baca.select.rleak(o.pleaves()[1:]), "o< mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-then-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        library.bass_drum_staff_position(o)
        baca.dynamic(o.phead(0), "mp")
        baca.laissez_vibrer(o.phead(1))
        baca.hairpin(baca.select.rleak(o.pleaves()[1:]), "o< mf")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.flat_glissando(o.pleaves(), do_not_hide_middle_note_heads=True)
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(baca.select.rleak(o.pleaves()), "o< mf")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[9]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(baca.select.rleak(o.pleaves()), "o< mp")
    with baca.scope(m[10]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(baca.select.rleak(o.pleaves()), "o< mp")
    with baca.scope(m[11]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.hairpin(baca.select.rleak(o.pleaves()), "o< mp")
    with baca.scope(m.get(8, 11)) as o:
        baca.tuplet_bracket_up(o)
        baca.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.brake_drum_staff_position(o)
        baca.damp(o.phead(0))
        baca.dynamic(o.phead(0), "p")
        baca.dynamic(o.phead(1), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "p")
        baca.damp(o.phead(0))
        with baca.scope(o.phead(1)) as u:
            baca.laissez_vibrer(u)
            baca.dynamic(u, "f")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.tam_tam_staff_position(o)
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[6]) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[8]) as o:
        library.brake_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 10)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[11]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.tuplet_bracket_up(o)
        library.purpleheart_staff_positions(o, [0])
        baca.dynamic(o.phead(0), "ff")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        baca.metric_modulation_spanner(
            baca.select.rleak(o.runs()[-1:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
        )


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            rests = [
                x
                for x in abjad.select.rests(o)
                if abjad.get.duration(x) >= abjad.Duration((1, 2))
            ]
            baca.dots_extra_offset(rests, (2, 0))
            baca.dots_x_extent_false(rests)
            baca.rest_x_extent_zero(rests)


def hp(m):
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F1")
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "p")
        baca.dls_staff_padding(o, 7)
    with baca.scope(m[6]) as o:
        baca.pitch(o, "Db1")
        baca.ottava_bassa(o.tleaves())
        baca.laissez_vibrer(o.ptails())
        baca.ottava_bracket_staff_padding(o, 8)
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5)
    for item in [(1, 2), 8]:
        with baca.scope(m.get(item)) as o:
            baca.clef(o.leaf(0), "treble")
            baca.pitch(o, "G4")
            baca.laissez_vibrer(o.ptails())
            baca.dynamic(o.phead(0), "mf")
            baca.dls_staff_padding(o, 4)
            baca.markup(
                o.pleaf(0),
                r"\baca-pdlt-markup",
                abjad.Tweak(r"- \tweak staff-padding 4"),
            )
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m[9]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    for n in [9, 10, 11]:
        with baca.scope(m[n]) as o:
            library.whisk_staff_position(o)
            baca.flat_glissando(o.pleaves())
            baca.hairpin(
                baca.select.tleaves(o, rleak=True),
                'o< "mf" >o niente',
                pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            )
    with baca.scope(m.get(9, 11)) as o:
        baca.dls_staff_padding(o, 6)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "C3")
        baca.rest_extra_offset(o.rest(-1), (-1.5, 0))
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "<G#5 A5 Bb5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.pitches(o, "D4 Eb4")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            full=True,
        )
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "D4"),
        baca.dynamic(o.phead(0), "pp")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "C3")
    with baca.scope(m.get(9, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "G4")
        baca.flat_glissando(o.leaves()[:-1])
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "D5")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "<G#5 A5 Bb5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E3")
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "D5")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(9, 11)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D3")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(run, "mp -- niente")
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "Btqf4")
        baca.markup(o.pleaf(0), r"\baca-seven-c")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "<A5 Bb5 Cb6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "C#3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "D3")
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(9, 11)) as o:
        baca.flat_glissando(o.leaves()[:-1])
    for item in [8, (9, 11)]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Btqf4")
            baca.note_head_style_harmonic(o.pleaves())


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "E5", do_not_transpose=True),
        for run in baca.select.runs(o):
            # NOTE: currently glissando must lexically precede trill spanner
            baca.flat_glissando(run)
            baca.trill_spanner(
                baca.select.rleak(run),
                alteration="Fqs5",
            )
        baca.markup(o.pleaf(0), r"\baca-eleven-c")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "<B5 C6 Db6>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[3]) as o:
        baca.pitch(o, "<B5 C6 Db6>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[3]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E3")
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[8]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "E5", do_not_transpose=True)
        for run in baca.select.runs(o):
            # NOTE: currently glissando must lexically precede trill spanner
            baca.flat_glissando(run)
            baca.trill_spanner(
                baca.select.rleak(run),
                alteration="Fqs5",
            )
        baca.markup(o.pleaf(0), r"\baca-eleven-c")
    with baca.scope(m[9]) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
        )
        baca.scp_spanner(
            o.tleaves(),
            "O -> P4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )
    with baca.scope(m[10]) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
        )
        baca.scp_spanner(
            o.tleaves(),
            "O -> P4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )
    with baca.scope(m[11]) as o:
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
        )
        baca.scp_spanner(
            o.tleaves(),
            "O -> P4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        ),
    with baca.scope(m.get(9, 11)) as o:
        baca.pitch(o, "E5", do_not_transpose=True)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "G3")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[2]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o.tleaves(),
            "o<| mp |>o niente o<| mp |>o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    with baca.scope(m.get(2, 3)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A#5 B5 C6>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(2, 3)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
        baca.metric_modulation_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
        baca.dynamic(o.phead(0), "ppp")
        pheads = [
            _
            for _ in baca.select.pheads(o)
            if abjad.get.duration(_) >= abjad.Duration((1, 8))
        ]
        baca.alternate_bow_strokes(
            pheads,
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
        )
        baca.half_clt_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "D3")
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[8]) as o:
        baca.pitch(o, "G3")
        baca.note_head_style_harmonic(o.pleaves())
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(9, 11)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "E5", do_not_transpose=True)
        # NOTE: currently glissando must lexically precede trill spanner
        baca.flat_glissando(o.leaves()[:-1])
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            # large right padding because open-volta follows in next section
            abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="Fqs5",
        )
        baca.markup(o.pleaf(0), r"\baca-eleven-c")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            # excluded cb1 because of current gliss / pitch trill order contention
            baca.flat_glissando(o.pleaves())
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(
                baca.select.tleaves(o, rleak=True),
                "o< mp >o niente",
                pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.trill_spanner(baca.select.tleaves(o, rleak=True))
    for name in ["va", "vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            # excluded cb1 because of gliss / pitch trill order contention
            baca.flat_glissando(o.pleaves())
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.hairpin(
                baca.select.tleaves(o, rleak=True),
                "o< f >o niente",
                pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.trill_spanner(baca.select.tleaves(o, rleak=True))
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            # TODO: promote to music = library.make_sixteenths()
            baca.invisible_music(abjad.select.get(o.pleaves(), [1], 2))
            baca.stem_tremolo(o.pleaves())
            baca.hairpin(
                baca.select.tleaves(o, rleak=True),
                "o<| mp |> pp pp <| mp |>o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
            )
            baca.dynamic_text_x_offset(o.pleaf(1), -3)
            baca.dynamic_text_x_offset(o.pleaf(-1), -0.25)
    for name in ["va", "vc1", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            # excluded cb1 because of current gliss / trill order contention
            baca.flat_glissando(o.pleaves())
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            baca.hairpin(
                baca.select.tleaves(o, rleak=True),
                "o< mp >o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            # excluded cb1 because of current gliss / trill order contention
            baca.trill_spanner(baca.select.tleaves(o, rleak=True))
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[3]) as o:
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[6]) as o:
            baca.triple_staccato(o.pheads())
            baca.hairpin(o.tleaves(), "p < f")
    for name in ["va", "vc2", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(9, 11)) as o:
            # TODO: move invisible command into rhythm-signatures
            baca.invisible_music(abjad.select.get(o.leaves(), ([1], 2)))
            baca.hairpin(
                o.tleaves(),
                "niente o< p >o",
                forbid_al_niente_to_bar_line=True,
                pieces=lambda _: baca.select.clparts(_, [1]),
            )
            baca.dynamic(o.rleaf(-1), "niente")
    for name in ["va", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(9, 11)) as o:
            # excluded cb2 because of gliss / trill order contention
            baca.trill_spanner(
                baca.select.tleaves(o, rleak=True),
                # large right padding because open-volta follows in next section
                abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 11)) as o:
            baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, signatures = make_empty_score()
    baca.section.set_up_score(
        score,
        signatures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(voices("bfl"), signatures)
    PERC1(voices("perc1"), signatures)
    PERC2(voices("perc2"), signatures)
    HP(voices("hp"), signatures)
    VA(voices("va"), signatures)
    VC1(voices("vc1"), signatures)
    VC2(voices("vc2"), signatures)
    CB1(voices("cb1"), signatures)
    CB2(voices("cb2"), signatures)
    baca.section.reapply(
        voices,
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(signatures()),
        library.voice_abbreviations,
    )
    bfl(cache["bfl"])
    perc1(cache)
    perc2(cache)
    perc1_perc2(cache)
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
