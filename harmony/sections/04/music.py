import abjad
import baca

from harmony import library

#########################################################################################
########################################### 04 ##########################################
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
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in (
        (7 - 1, "fermata"),
        (10 - 1, "short"),
    ):
        baca.global_fermata(rests[index], string)


def BFL(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 6),
        gap=True,
    )
    mmrests(voice, time_signatures(7))
    library.make_tessera(
        voice,
        time_signatures(8),
        *(1, 6),
        advance=72,
        gap=True,
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), rt(16)],
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10))
    library.make_tessera(
        voice,
        time_signatures(11),
        *(1, 6),
        advance=72 + 12,
        gap=True,
    )


def PERC1(voice, time_signatures):
    library.make_phjc_rhythm(
        voice,
        time_signatures(1, 6),
        [1, 2, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=~abjad.Pattern([0, 1, 2, -4, -3, -2]),
    )
    mmrests(voice, time_signatures(7, 8))
    rhythm(
        voice,
        OBGC(7 * [2], [-20]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10, 11))


def PERC2(voice, time_signatures):
    library.make_phjc_rhythm(
        voice,
        time_signatures(1),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
    )
    mmrests(voice, time_signatures(2, 4))
    rhythm(
        voice,
        [-2, bl(2), 2, 2, 2, 2, 2, 2, 2, 2, 2, br(2)],
        time_signatures(5, 6),
        do_not_rewrite_meter=True,
    )
    mmrests(voice, time_signatures(7))
    rhythm(
        voice,
        [-6, 2, 2, 2],
        time_signatures(8),
    )
    rhythm(
        voice,
        [4, 4, "-"],
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10))
    rhythm(
        voice,
        [-6, 6],
        time_signatures(11),
        do_not_rewrite_meter=True,
    )
    baca.section.append_anchor_note(voice)


def HP(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 5),
    )
    mmrests(voice, time_signatures(7))
    library.make_tessera(
        voice,
        time_signatures(8),
        *(1, 5),
        advance=72,
    )
    rhythm(
        voice,
        [w(2, 4), h(w(2, 4)), 16],
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10))
    library.make_tessera(
        voice,
        time_signatures(11),
        *(1, 5),
        advance=72 + 12,
    )


def VA(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 4),
        gap=True,
    )
    mmrests(voice, time_signatures(7))
    library.make_tessera(
        voice,
        time_signatures(8),
        *(1, 4),
        advance=72,
        gap=True,
    )
    rhythm(
        voice,
        OBGC(7 * [2], [20]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10), head=True)
    library.make_tessera(
        voice,
        time_signatures(11),
        *(1, 4),
        advance=72 + 12,
        gap=True,
    )


def VC1(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 3),
        gap=True,
    )
    mmrests(voice, time_signatures(7), head=True)
    library.make_tessera(
        voice,
        time_signatures(8),
        *(1, 3),
        advance=72,
        gap=True,
    )
    rhythm(
        voice,
        OBGC(7 * [2], [20]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10), head=True)
    library.make_tessera(
        voice,
        time_signatures(11),
        *(1, 3),
        advance=72 + 12,
        gap=True,
    )
    baca.section.append_anchor_note(voice)


def VC2(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 2),
        gap=True,
    )
    mmrests(voice, time_signatures(7), head=True)
    library.make_tessera(
        voice,
        time_signatures(8),
        *(1, 2),
        advance=72,
        gap=True,
    )
    rhythm(
        voice,
        OBGC(7 * [2], [20]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10), head=True)
    library.make_tessera(
        voice,
        time_signatures(11),
        *(1, 2),
        advance=72 + 12,
        gap=True,
    )
    baca.section.append_anchor_note(voice)


def CB1(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 1),
    )
    mmrests(voice, time_signatures(7), head=True)
    library.make_tessera(
        voice,
        time_signatures(8),
        *(1, 1),
        advance=72,
    )
    rhythm(
        voice,
        OBGC(7 * [2], [20]),
        time_signatures(9),
    )
    mmrests(voice, time_signatures(10), head=True)
    library.make_tessera(
        voice,
        time_signatures(11),
        *(1, 1),
        advance=72 + 12,
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    library.make_tessera(
        voice,
        time_signatures(1, 6),
        *(1, 0),
    )
    mmrests(voice, time_signatures(7), head=True)
    music = baca.make_notes(time_signatures(8))
    voice.extend(music)
    rhythm(
        voice,
        T([rt(16)], 4),
        time_signatures(10),
    )
    mmrests(voice, time_signatures(10), head=True)
    music = baca.make_notes(time_signatures(11))
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
            baca.piecewise.hairpin(
                baca.select.clparts(clpart, [1]),
                "o<| ff |> p",
            )
    with baca.scope(m[11]) as o:
        baca.pitch(o, "F#3")
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.spanners.hairpin(
            o.tleaves(),
            "f > p",
            debug=True,
        )
    with baca.scope(m.get(5, 6)) as o:
        library.purpleheart_staff_positions(o, [0, 2, 0, 2, 2])
        baca.spanners.hairpin(
            o.tleaves(),
            "p < f",
        )
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
        baca.override.dls_staff_padding(o, 5.5)


def perc2(m):
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions(o, [0, -2, 0, -2, 0])
        baca.spanners.hairpin(
            o.tleaves(),
            "f > p",
        )
    with baca.scope(m.get(5, 6)) as o:
        library.purpleheart_staff_positions(o, [2])
        baca.spanners.hairpin(
            o.tleaves(),
            "p < f",
        )
    with baca.scope(m[8]) as o:
        baca.dynamic(o.phead(0), "p-sub")
    with baca.scope(m.get(8, 9)) as o:
        library.purpleheart_staff_positions(o, [2])
        baca.rspanners.metric_modulation(
            o.pleaves(),
            staff_padding=3,
        )
    with baca.scope(m[11]) as o:
        library.purpleheart_staff_positions(o, [0])
        baca.dynamic(o.phead(0), "f-sub")
        baca.rspanners.metric_modulation(
            o.pleaves(),
            staff_padding=3,
            right_broken=True,
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 5.5)


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
            baca.piecewise.hairpin(
                baca.select.clparts(clpart, [1]),
                "p < ff > p",
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[11]) as o:
        baca.pitch(o, "C#4")
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


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
        baca.override.dls_staff_padding(o.leaves(grace=False), 4)
        baca.mspanners.text(
            baca.select.rleak(baca.select.tleaves(o, grace=False)),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            direction=abjad.DOWN,
            staff_padding=8,
        )
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
    for item in [(1, 6), 8, 11]:
        with baca.scope(m.get(item)) as o:
            library.bridge_staff_position(o)
    for item in [(1, 8), 11]:
        with baca.scope(m.get(item)) as o:
            baca.override.dls_staff_padding(o, 6)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 6)) as o:
        baca.rspanners.metric_modulation(
            o.leaves()[:2],
            staff_padding=8,
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
        baca.mspanners.text(
            baca.select.rleak(baca.select.tleaves(o, grace=False)),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            direction=abjad.DOWN,
            staff_padding=8,
        )
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


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
        baca.mspanners.text(
            baca.select.rleak(baca.select.tleaves(o, grace=False)),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            direction=abjad.DOWN,
            staff_padding=8,
        )
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "bass")
    for item in [(1, 8), 11]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "F3")
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def vcs(cache):
    for name in ["vc1", "vc2"]:
        for item in [(1, 6), 8, 11]:
            with baca.scope(cache[name].get(item)) as o:
                baca.rspanners.damp(
                    baca.select.ltleaves(o),
                    staff_padding=5.5,
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
        baca.override.dls_staff_padding(o.leaves(grace=False), 6)
        baca.mspanners.text(
            baca.select.rleak(baca.select.tleaves(o, grace=False)),
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            direction=abjad.DOWN,
            staff_padding=10,
        )
    for item in [(1, 6), 8, 11]:
        with baca.scope(m.get(item)) as o:
            baca.pitch(o, "Aqs4", do_not_transpose=True)
            baca.rspanners.pizzicato(
                o,
                staff_padding=5.5,
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
            baca.override.dls_staff_padding(o, 4)


def cb2(m):
    with baca.scope(m.get(1, 6)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4", do_not_transpose=True)
        baca.rspanners.pizzicato(
            o,
            staff_padding=5.5,
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
        baca.piecewise.hairpin(
            baca.select.lparts(o.rleaves(), [1, 2]),
            'o< "mf" >o !',
        )
        baca.mspanners.scp(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T1 =|",
            staff_padding=5.5,
        )
    with baca.scope(m[11]) as o:
        baca.flat_glissando(
            o.rleaves(),
            "E1",
            allow_hidden=True,
            right_broken=True,
        )
        baca.piecewise.hairpin(
            [o.rleaves()],
            "o< !",
            right_broken=True,
        )
        baca.mspanners.scp(
            o.rleaves(),
            "T1 =|",
            staff_padding=5.5,
        )
    with baca.scope(m.get(1, 11)) as o:
        baca.override.dls_staff_padding(o, 4)


def cbs(cache):
    m = cache["cb1"]
    for item in [(1, 6), 8, 11]:
        with baca.scope(m.get(item)) as o:
            baca.override.note_head_style_harmonic(o.pleaves())
    m = cache["cb2"]
    with baca.scope(m.get(1, 6)) as o:
        baca.override.note_head_style_harmonic(o.pleaves())


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
            baca.piecewise.hairpin(
                baca.select.plts(o),
                "pp p mp mf f",
                bookend=False,
            )
    for name in ["bfl", "hp", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 6)) as o:
            baca.piecewise.hairpin(
                baca.select.plts(o),
                "mf mp p pp pp pp",
                bookend=False,
            )
    for name in ["va", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(1, 3)) as o:
            baca.piecewise.hairpin(
                baca.select.plts(o),
                'pp p mp mf "f"',
                bookend=False,
            )
    m = cache["vc1"]
    with baca.scope(m.get(1, 3)) as o:
        baca.piecewise.hairpin(
            baca.select.plts(o)[1:],
            'p mp mf "f"',
            bookend=False,
        )
    for name in ["va", "vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m.get(4, 6)) as o:
            baca.piecewise.hairpin(
                baca.select.plts(o),
                "mf mp p pp pp pp",
                bookend=False,
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
                baca.override.note_head_style_harmonic(run)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [3, 3, 3, 3, 3, 3, 1, 3, 5, 1, 3]
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
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
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


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
    )
    baca.section.make_layout_ly(spacing)


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
