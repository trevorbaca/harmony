import abjad
import baca

from harmony import library

#########################################################################################
######################################### 17 [Q] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (6, 4),
            (4, 4),
            (1, 4),
            (3, 4),
            (5, 4),
            (1, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[Q.1]", 1),
        ("[>S.1]", 2, "#darkgreen"),
        ("[<O.4]", 4, "#darkgreen"),
        ("[Q.2]", 5),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2=4"),
        (2 - 1, "96"),
        (2 - 1, "8=4"),
        (5 - 1, "48"),
        (5 - 1, "2=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in (
        (3 - 1, "short"),
        (6 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[6 - 1],
        r"\harmony-text-sixteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, "-"],
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def PERC1(voice, accumulator):
    music = baca.make_notes_function(accumulator.get(1))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(2),
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def PERC2(voice, accumulator):
    music = baca.make_notes_function(accumulator.get(1))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(2),
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def HP(voice, accumulator):
    music = baca.make_notes_function(accumulator.get(1))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def VA(voice, accumulator):
    music = baca.make_notes_function(accumulator.get(1, 2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes_function(accumulator.get(5))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_tessera_2(
        accumulator.get(1),
        3,
        rest_plts=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        3,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_tessera_2(
        accumulator.get(1),
        2,
        rest_plts=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        2,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_tessera_2(
        accumulator.get(1),
        1,
        rest_plts=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        1,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_tessera_2(
        accumulator.get(1),
        0,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        0,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D5")
        with baca.scope(o.leaves()[:3]) as u:
            baca.text_spanner(
                u,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                left_broken=True,
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 8"),
                left_broken=True,
            )
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -3),
        )
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
        baca.hairpin(
            o.tleaves(),
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_),
                (3, 4),
            ),
        )
        baca.trill_spanner(
            o.tleaves(),
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F#5")
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[5]) as o:
        baca.pitch(o.run(0), "F#5")
    with baca.scope(m.get(4, 5)) as o:
        with baca.scope(baca.select.rleak(baca.select.runs(o)[:1])) as u:
            baca.trill_spanner(
                u,
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            )
            baca.metric_modulation_spanner(
                u,
                abjad.Tweak(r"- \tweak staff-padding 9"),
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
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
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.dynamic(o.rest(2), "ff")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[5]) as o:
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


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding(o, 6)


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            rests = [
                _
                for _ in abjad.select.rests(o)
                if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ]
            with baca.scope(rests) as u:
                baca.dots_extra_offset(u, (2, 0))
                baca.dots_x_extent_false(u)
                baca.rest_x_extent_zero(u)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Db1")
        baca.ottava_bassa(o.tleaves())
        baca.ottava_bracket_staff_padding(o, 8)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 5)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f-ancora")
        baca.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Db1")
        baca.ottava_bassa(o.tleaves())
        baca.ottava_bracket_staff_padding(o, 8)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f-ancora")
        baca.dls_staff_padding(o, 5)
    with baca.scope(m.get(1, 5)) as o:
        baca.ottava_bracket_staff_padding(o, 8)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch(o, "D4")
        baca.flat_glissando(o, hide_middle_stems=True, left_broken=True)
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            left_broken=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F4")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run))
            baca.bow_speed_spanner(
                run,
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "D4")
        baca.hairpin(o.rleaves(), "pp >o niente")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E3"),
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "<G#5 A5 Bb5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E3")
        baca.scp_spanner(
            o.leaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D3")
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "<A5 Bb5 Cb6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "D3")
        baca.scp_spanner(
            o.leaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E3"),
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "<B5 C6 Db6>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E3")
        baca.scp_spanner(
            o.leaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D3"),
        baca.scp_spanner(
            o.tleaves(),
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "<A#5 B5 C6>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(o.tleaves(), "f <| fff-scratch")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "D3")
        baca.scp_spanner(
            o.leaves(),
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
            baca.dls_staff_padding(o, 4)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
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
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(o.tleaves(), "p < f")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            baca.hairpin(o.rleaves(), "f >o niente")
        for n in [1, 5]:
            with baca.scope(m[n]) as o:
                baca.triple_staccato(o.pheads())


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
    perc2(cache)
    perc1_perc2(cache)
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
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
