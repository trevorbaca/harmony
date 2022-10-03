import abjad
import baca

from harmony import library

#########################################################################################
######################################### 23 [W] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (5, 4),
        (6, 4),
        (1, 4),
        (5, 4),
        (5, 4),
        (6, 4),
        (3, 4),
        (4, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests):
    stage_markup = (
        ("[W.1]", 1),
        ("[>Y.1]", 2, "#darkgreen"),
        ("[W.2-3]", 4),
        ("[W.4]", 6),
        ("[<V.6]", 7, "#darkgreen"),
        ("[<T.3]", 8, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "4.=4"),
        (2 - 1, "57 3/5"),
        (2 - 1, "3:5(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "5:3(4)=4"),
        (7 - 1, "72"),
        (7 - 1, "3:4(4)=4"),
        (8 - 1, "144"),
        (8 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in ((3 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)


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
    music = baca.make_mmrests(measures(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4, 6),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-4, 8, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4, 6),
        [4, -16, 4, -16, 4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(measures(7))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice, measures):
    music = baca.make_mmrests(measures(1, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(6),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-2, 2, -8, 2, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(6),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(7, 8))
    voice.extend(music)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4, 6),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-6, 2, -4, 2, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(4, 5),
        [4],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(6, 7),
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4, 0],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-7, 3, -7, 3],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice, measures):
    music = library.make_tuplet(
        measures(1),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = baca.make_mmrests(measures(3))
    voice.extend(music)
    music = library.make_tuplet(
        measures(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(measures(5, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [-10, 3, -5, 2],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = baca.make_mmrests(measures(3, 5))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        measures(6, 7),
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4, 0],
        denominator=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(8),
        [1, -14, 1],
    )
    voice.extend(music)


def CB2(voice, measures):
    music = baca.make_mmrests(measures(1))
    voice.extend(music)
    music = baca.make_notes(measures(2))
    voice.extend(music)
    music = baca.make_mmrests(measures(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        measures(5, 6),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        measures(7),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(8))
    voice.extend(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -6),
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
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o, "<B3 Dqf4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 6)) as o:
        baca.espressivo(o.pheads())
        baca.dynamic(o.phead(0), "mp")
    with baca.scope(m[8]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run), count=2)
        baca.covered_spanner(
            run,
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 6)) as o:
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[7]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m.get(1, 8)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[6]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o.plt(0), "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 4)
        baca.markup(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bass_drum_staff_position(o)
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "mp")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(7, 8)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.metric_modulation_spanner(
            o.leaves()[:2],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch(o, "E4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "f")
        baca.markup(
            o.pleaf(0),
            r"\baca-xyl-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "alto")
        baca.pitch(o, "E3")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 6)) as o:
        baca.pitch(o, "E3")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.scp_spanner(
            o.leaves(),
            "T -> P -> T",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.mgroups(_, [2, 1]),
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A4 B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 5)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.scp_spanner(
            o.leaves(),
            "T -> P",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m.get(6, 7)) as o:
        baca.tuplet_bracket_down(o)
        baca.pitch(o, "E2")
        baca.triple_staccato(o.pheads())
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T -> P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.mgroups(_, [1, 2]),
        )


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqf3")
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<G4 Ab4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m.get(4, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "Dqf3")
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.dynamic(o.phead(0), "p")
        baca.bow_speed_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D3 C#3")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "ff")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[2]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<A4 B4 C5>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(o.phead(0), "pp")
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
    with baca.scope(m.get(6, 7)) as o:
        baca.tuplet_bracket_down(o)
        baca.pitch(o, "E1")
        baca.triple_staccato(o.pheads())
        baca.dynamic(o.phead(0), "p")
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.scp_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            "T -> P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.mgroups(_, [1, 2]),
        )


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
    with baca.scope(m[2]) as o:
        baca.pitch(o, "<G4 Ab4 Bb4>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_black(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.flat_glissando(o)
        baca.hairpin(
            o.rleaves(),
            "ff >o",
            bookend=False,
        )
        baca.scp_spanner(
            o.leaves(),
            "P3 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )
    with baca.scope(m[7]) as o:
        baca.pitches(o, "D2 C#2")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.staff_lines(o.leaf(0), 5)
        with baca.scope(m.get(1, 7)) as o:
            baca.dls_staff_padding(o, 4)
        with baca.scope(m[2]) as o:
            baca.stem_tremolo(o.pleaves())
            baca.markup(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            baca.clef(o.leaf(0), "percussion")
            baca.staff_lines(o.leaf(0), 1)
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "pp")
            baca.dls_staff_padding(o, 6)


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
    bfl(cache)
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    composites(cache)
    return score, measures


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score, measures = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
        score,
        measures(),
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
        transpose_score=True,
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
