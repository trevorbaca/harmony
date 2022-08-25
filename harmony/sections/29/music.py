import abjad
import baca

from harmony import library

#########################################################################################
######################################## 29 [CC] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (6, 4),
            (6, 4),
            (1, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (("[CC.1-2]", 1),)
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    baca.bar_line_function(skips[3 - 1], "|.")
    for index, string in ((3 - 1, "very_long"),):
        baca.global_fermata_function(rests[index], string)
    wrappers = baca.markup_function(
        skips[3 - 1],
        r"\harmony-text-twenty-eight",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [1, -22, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 1],
        invisible=[-1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [16, 4, 2, 2],
        written_dotted_wholes=[0],
        invisible=[1, 2, 3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def bfl(m, accumulator):
    accumulator(
        ("bfl", 1),
        baca.pitch("Bb4"),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", (1, 2)),
        baca.dls_staff_padding(4),
    )


def perc1(m, accumulator):
    accumulator(
        ("perc1", 1),
        library.brake_drum_staff_position(),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.new(
            baca.dynamic("mf"),
            baca.damp(selector=lambda _: baca.select.phead(_, 0)),
            selector=lambda _: baca.select.phead(_, -1),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (1, 2)),
        baca.dls_staff_padding(6),
    )


def perc2(m, accumulator):
    accumulator(
        ("perc2", 1),
        baca.damp(
            selector=lambda _: abjad.select.leaf(_, -1),
        ),
    )


def hp(m, accumulator):
    accumulator(
        ("hp", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Bb4"),
        baca.snap_pizzicato(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", (1, 2)),
        baca.dls_staff_padding(4),
    )


def cb1(m, accumulator):
    accumulator(
        ("cb1", 1),
        baca.pitch(
            "Bb4",
            do_not_transpose=True,
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )


def cb2(m, accumulator):
    accumulator(
        ("cb2", 1),
        baca.pitch("A1"),
        baca.flat_glissando(
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:1],
        ),
        baca.hairpin(
            "ff >o niente",
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 -> T4+",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            left_broken=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", -1),
        baca.not_parts(
            baca.chunk(
                baca.mark(
                    r"\harmony-colophon-markup",
                    selector=lambda _: abjad.select.leaf(_, 0),
                ),
                baca.rehearsal_mark_down(),
                baca.rehearsal_mark_extra_offset((92, 8)),
                baca.rehearsal_mark_padding(12),
                baca.rehearsal_mark_self_alignment_x(abjad.RIGHT),
                selector=lambda _: baca.select.rleaf(_, -1),
            ),
        ),
    )


def composites(cache, accumulator):
    # bfl, va, vc1, vc2, cb1
    accumulator(
        (["bfl", "va", "vc1", "vc2", "cb1"], 1),
        baca.hairpin(
            "pp < p >o niente",
            pieces=lambda _: baca.select.lparts(baca.select.rleaves(_), [1, 3]),
        ),
    )
    # va, vc1, vc2
    accumulator(
        (["va", "vc1", "vc2"], 1),
        baca.pitch("Bb4"),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
        baca.dls_staff_padding(4),
    )


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
    bfl(cache["bfl"], accumulator)
    perc1(cache["perc1"], accumulator)
    perc2(cache["perc2"], accumulator)
    hp(cache["hp"], accumulator)
    cb1(cache["cb1"], accumulator)
    cb2(cache["cb2"], accumulator)
    composites(cache, accumulator)
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
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=accumulator.commands,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        empty_fermata_measures=True,
        final_section=True,
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
