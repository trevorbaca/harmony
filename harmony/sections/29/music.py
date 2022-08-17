import abjad
import baca

from harmony import library

#########################################################################################
######################################## 29 [CC] ########################################
#########################################################################################

stage_markup = (("[CC.1-2]", 1),)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (6, 4),
        (6, 4),
        (1, 4),
    ],
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator,
    accumulator.manifests(),
    accumulator.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

skips = score["Skips"]
manifests = accumulator.manifests()

for index, item in (
    (1 - 1, "72"),
    (1 - 1, "3:2(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark_function(skip, indicator, manifests)

baca.bar_line_function(skips[3 - 1], "|.")

rests = score["Rests"]
for index, string in ((3 - 1, "very_long"),):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-twenty-eight",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [1, -22, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 1],
        invisible=[-1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 16],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [16, 4, 2, 2],
        written_dotted_wholes=[0],
        invisible=[1, 2, 3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3), head=voice.name)
    voice.extend(music)


def bfl(m):
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


def perc1(m):
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


def perc2(m):
    accumulator(
        ("perc2", 1),
        baca.damp(
            selector=lambda _: abjad.select.leaf(_, -1),
        ),
    )


def hp(m):
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


def cb1(m):
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


def cb2(m):
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


def composites(cache):
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


def main():
    BFL(accumulator.voice("bfl"))
    PERC1(accumulator.voice("perc1"))
    PERC2(accumulator.voice("perc2"))
    HP(accumulator.voice("hp"))
    VA(accumulator.voice("va"))
    VC1(accumulator.voice("vc1"))
    VC2(accumulator.voice("vc2"))
    CB1(accumulator.voice("cb1"))
    CB2(accumulator.voice("cb2"))
    previous_persist = baca.previous_persist(__file__)
    previous_persistent_indicators = previous_persist["persistent_indicators"]
    baca.reapply(
        accumulator.voices(),
        accumulator.manifests(),
        previous_persistent_indicators,
    )
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        accumulator.voice_abbreviations,
    )
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)


if __name__ == "__main__":
    main()
    metadata, persist, score, timing = baca.build.section(
        score,
        accumulator.manifests(),
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
        fermata_measure_empty_overrides=[3],
        final_section=True,
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
