import abjad
import baca

from harmony import library

#########################################################################################
######################################## 29 [CC] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = [
        (6, 4),
        (6, 4),
        (1, 4),
    ]
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips, rests):
    stage_markup = (("[CC.1-2]", 1),)
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    baca.bar_line(skips[3 - 1], "|.")
    for index, string in ((3 - 1, "very_long"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-twenty-eight",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3), head=voice.name)
    voice.extend(music)


def PERC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [1, -22, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3))
    voice.extend(music)


def PERC2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        ["-", 1],
        invisible=[-1],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3))
    voice.extend(music)


def HP(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3))
    voice.extend(music)


def VA(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3), head=voice.name)
    voice.extend(music)


def VC1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3), head=voice.name)
    voice.extend(music)


def VC2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3), head=voice.name)
    voice.extend(music)


def CB1(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3), head=voice.name)
    voice.extend(music)


def CB2(voice, measures):
    music = library.make_sixteenths(
        measures(1),
        [16, 4, 2, 2],
        written_dotted_wholes=[0],
        invisible=[1, 2, 3],
    )
    voice.extend(music)
    music = baca.make_mmrests(measures(2, 3), head=voice.name)
    voice.extend(music)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Bb4")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o.leaves(), 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "f")
        with baca.scope(o.phead(-1)) as u:
            baca.dynamic(u, "mf")
            baca.damp(u)
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o.leaves(), 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        baca.damp(o.leaf(-1))


def hp(m):
    with baca.scope(m[1]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "Bb4")
        baca.snap_pizzicato(o.phead(0))
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding(o.leaves(), 4)


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "Bb4", do_not_transpose=True)
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
        )


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "A1")
        baca.flat_glissando(o.leaves()[:1], left_broken=True)
        baca.hairpin(
            o.rleaves(),
            "ff >o niente",
            left_broken=True,
        )
        baca.scp_spanner(
            o.leaves(),
            "T1 -> T4+",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        with baca.scope(o.rleaf(-1)) as u:
            wrappers = []
            wrappers.extend(baca.mark(u, r"\harmony-colophon-markup"))
            wrappers.extend(baca.rehearsal_mark_down(u))
            wrappers.extend(baca.rehearsal_mark_extra_offset(u, (92, 8)))
            wrappers.extend(baca.rehearsal_mark_padding(u, 12))
            wrappers.extend(baca.rehearsal_mark_self_alignment_x(u, abjad.RIGHT))
            baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def composites(cache):
    for name in ["bfl", "va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(
                o,
                "pp < p >o niente",
                pieces=lambda _: baca.select.lparts(baca.select.rleaves(_), [1, 3]),
            )
    for name in ["va", "vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.pitch(o, "Bb4")
            baca.trill_spanner(
                baca.select.tleaves(o, rleak=True),
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                alteration="Cb5",
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 2)) as o:
            baca.dls_staff_padding(o.leaves(), 4)


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
    hp(cache["hp"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)
    return score, measures


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score, measures = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata, persist = baca.section.postprocess_score(
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
        final_section=True,
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
        lilypond_file,
        metadata,
        persist,
        environment.timing,
        environment.arguments,
    )


if __name__ == "__main__":
    main()
