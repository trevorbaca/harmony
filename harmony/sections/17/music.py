import abjad
import baca

from harmony import library

#########################################################################################
########################################### 17 ##########################################
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
        ("[Q.1]", 1),
        ("[>S.1]", 2, "#darkgreen"),
        ("[<O.4]", 4, "#darkgreen"),
        ("[Q.2]", 5),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "48"),
        (1 - 1, "2=4"),
        (2 - 1, "96"),
        (2 - 1, "8=4"),
        (5 - 1, "48"),
        (5 - 1, "2=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (3 - 1, "short"),
        (6 - 1, "fermata"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[6 - 1],
        r"\harmony-text-sixteen",
        baca.tweak.extra_offset((4, -30)),
    )
    baca.tags.tag(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [4, 4, "-"],
        time_signatures(1),
    )
    library.make_warble_rhythm(
        voice,
        time_signatures(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest=[1],
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        [-4, 8],
        time_signatures(4),
    )
    rhythm(
        voice,
        [4, "-"],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))


def PERC1(voice, time_signatures):
    music = baca.make_notes(time_signatures(1))
    voice.extend(music)
    rhythm(
        voice,
        [-4, -1, OBGC(5 * [2], [-3, -8])],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        ["+"],
        time_signatures(4),
    )
    rhythm(
        voice,
        [-16, 4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))


def PERC2(voice, time_signatures):
    music = baca.make_notes(time_signatures(1))
    voice.extend(music)
    rhythm(
        voice,
        [-4, -1, OBGC(4 * [2], [-3, -8])],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(3, 4))
    rhythm(
        voice,
        [-16, 4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))


def HP(voice, time_signatures):
    music = baca.make_notes(time_signatures(1))
    voice.extend(music)
    mmrests(voice, time_signatures(2, 3))
    library.make_one_beat_tuplets(
        voice,
        time_signatures(4),
        ["-", 4],
        extra_counts=[2],
    )
    rhythm(
        voice,
        [-16, 4],
        time_signatures(5),
    )
    mmrests(voice, time_signatures(6))


def VA(voice, time_signatures):
    music = baca.make_notes(time_signatures(1, 2))
    voice.extend(music)
    mmrests(voice, time_signatures(3), head=True)
    rhythm(
        voice,
        ["+"],
        time_signatures(4),
    )
    music = baca.make_repeat_tied_notes(time_signatures(5))
    voice.extend(music)
    mmrests(voice, time_signatures(6), head=True)


def VC1(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1),
        *(2, 3),
        rest_plt=0,
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        ["+", -1],
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(2, 3),
        advance=24,
    )
    mmrests(voice, time_signatures(6))


def VC2(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1),
        *(2, 2),
        rest_plt=0,
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        ["+", -1],
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(2, 2),
        advance=24,
    )
    mmrests(voice, time_signatures(6))


def CB1(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1),
        *(2, 1),
        rest_plt=0,
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        ["+", -1],
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(2, 1),
        advance=24,
    )
    mmrests(voice, time_signatures(6))


def CB2(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1),
        *(2, 0),
    )
    rhythm(
        voice,
        3 * [w(2, 4), h(w(2, 4))] + ["-"],
        time_signatures(2),
    )
    mmrests(voice, time_signatures(3))
    rhythm(
        voice,
        ["+", -1],
        time_signatures(4),
    )
    library.make_tessera(
        voice,
        time_signatures(5),
        *(2, 0),
        advance=24,
    )
    mmrests(voice, time_signatures(6))


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D5")
        with baca.scope(o.leaves()) as u:
            baca.spanners.text(
                u[:2],
                "A =|",
                baca.tweak.staff_padding(5.5),
                left_broken=True,
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u[:2],
                baca.tweak.staff_padding(8),
                left_broken=True,
                rleak=True,
            )
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -3),
        )
        with baca.scope(o.tleaves()) as u:
            baca.override.note_head_font_size(u, -3)
            baca.override.accidental_font_size(u, -3)
            baca.override.accidental_x_offset(u, 0)
            baca.override.accidental_y_offset(u, -2)
        baca.hairpin(
            abjad.select.partition_by_ratio(o.tleaves(), (3, 4)),
            "o< mp>o!",
        )
        baca.spanners.trill(
            o.tleaves(),
            baca.tweak.bound_details_left_text(r"\harmony-d-d-sharp-markup"),
            baca.tweak.staff_padding(8),
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F#5")
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[5]) as o:
        baca.pitch(o.run(0), "F#5")
    with baca.scope(m.get(4, 5)) as o:
        with baca.scope(baca.select.runs(o)[:1]) as u:
            baca.spanners.trill(
                u,
                baca.tweak.bound_details_right_padding(2),
                rleak=True,
            )
            baca.spanners.metric_modulation(
                u,
                baca.tweak.staff_padding(9),
                rleak=True,
            )
    with baca.scope(m.get(1, 5)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
            baca.tweak.staff_padding(4),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            '"f"',
            baca.tweak.self_alignment_x(-0.9),
        )
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-glockenspiel-markup",
            baca.tweak.staff_padding(4),
        )


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.dynamic(o.rest(2), "ff")
        baca.override.dls_staff_padding(o, 5)
        baca.markup(
            o.leaf(2, grace=False),
            r"\baca-boxed-purpleheart-markup",
            baca.tweak.staff_padding(5),
        )
    with baca.scope(m[4]) as o:
        baca.staff_lines(o.leaf(0), 1)
    with baca.scope(m[5]) as o:
        library.tam_tam_staff_position(o)
        baca.staff_position(o, 0)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-tam-tam-markup",
            baca.tweak.staff_padding(6),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.override.dls_staff_padding(o, 6)


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
                baca.override.dots_extra_offset(u, (2, 0))
                baca.override.dots_x_extent_false(u)
                baca.override.rest_x_extent_zero(u)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Db1")
        baca.spanners.ottava(o.tleaves(), -1, rleak=True)
        baca.override.ottava_bracket_staff_padding(o, 8)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.override.dls_staff_padding(o, 5)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "B4:C5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f-ancora")
        baca.override.dls_staff_padding(o, 4 + 2)
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            baca.tweak.padding(1.5),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Db1")
        baca.spanners.ottava(o.tleaves(), -1, rleak=True)
        baca.override.ottava_bracket_staff_padding(o, 8)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f-ancora")
        baca.override.dls_staff_padding(o, 5)
    with baca.scope(m.get(1, 5)) as o:
        baca.override.ottava_bracket_staff_padding(o, 8)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.glissando(o, "D4", hide_middle_stems=True, left_broken=True)
        baca.spanners.bow_speed(
            o,
            "poco scr. =|",
            baca.tweak.staff_padding(3),
            left_broken=True,
            rleak=True,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F4")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            baca.spanners.xfb(
                run,
                baca.tweak.staff_padding(3),
                rleak=True,
            )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "D4")
        baca.hairpin(
            o,
            "pp>o!",
            rleak=True,
        )
        baca.spanners.bow_speed(
            o,
            "poco scr. =|",
            baca.tweak.staff_padding(3),
            rleak=True,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E3"),
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "G#5:A5:Bb5")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E3")
        baca.spanners.scp(
            [o.leaves()],
            "P4 -> T4",
            baca.tweak.staff_padding(3),
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D3")
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(3),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "A5:Bb5:Cb6")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-i-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "D3")
        baca.spanners.scp(
            [o.leaves()],
            "P4 -> T4",
            baca.tweak.staff_padding(3),
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "E3"),
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "B5:C6:Db6", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "E3")
        baca.spanners.scp(
            [o.leaves()],
            "P4 -> T4",
            baca.tweak.staff_padding(5.5),
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D3"),
        baca.spanners.scp(
            [o.tleaves()],
            "T4 -> P1",
            baca.tweak.staff_padding(5.5),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.override.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "A#5:B5:C6", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            baca.tweak.staff_padding(1.5),
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
        baca.hairpin(
            o.tleaves(),
            "f<|fff-scratch",
        )
    with baca.scope(m[5]) as o:
        baca.pitch(o, "D3")
        baca.spanners.scp(
            [o.leaves()],
            "P4 -> T4",
            baca.tweak.staff_padding(5.5),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 5)) as o:
            baca.override.dls_staff_padding(o, 4)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.hairpin(
                baca.select.lparts(o.tleaves(), [1, 1, 2, 1, 1]),
                "o<| mp|> pp pp<| mp|>o!",
                rleak=True,
            )
            baca.override.dynamic_text_x_offset(o.pleaf(1), -3)
            baca.override.dynamic_text_x_offset(o.pleaf(-1), -0.25)
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(
                o.tleaves(),
                "p<f",
            )
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            baca.hairpin(
                o,
                "f>o!",
                rleak=True,
            )
        for n in [1, 5]:
            with baca.scope(m[n]) as o:
                baca.triple_staccato(o.pheads())


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [(6, 4), (4, 4), (1, 4), (3, 4), (5, 4), (1, 4)]
    time_signatures = baca.section.wrap(time_signatures)
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
        include_layout_ily=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


def make_layout(environment):
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=40, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        strict_overrides=(baca.layout.Override([6], (1, 288)),),
    )
    return baca.section.make_layout_score(
        breaks,
        environment.metadata["time_signatures"],
        fermata_measure_numbers=environment.metadata.get("fermata_measure_numbers", []),
        first_measure_number=environment.first_measure_number,
        has_anchor_skip=environment.metadata["has_anchor_skip"],
        spacing=spacing,
    )


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
        lilypond_file, bol_measure_numbers = make_layout(environment)
        baca.build.persist_section_layout_ily(
            environment.section_directory, lilypond_file
        )
        baca.build.write_bol_metadata(
            environment.section_directory, bol_measure_numbers
        )


if __name__ == "__main__":
    main()
