import abjad
import baca

from harmony import library

#########################################################################################
######################################### 08 [H] ########################################
#########################################################################################

stage_markup = (
    ("[H.1-6]", 1),
    ("[H.7-8]", 8),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    manifests=library.manifests,
    time_signatures=[
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (3, 4),
    ],
    _voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator,
    library.manifests,
    accumulator.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

skips = score["Skips"]
manifests = library.manifests

for index, item in (
    (1 - 1, "96"),
    (1 - 1, "5:3(4)=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

baca.open_volta_function(skips[8 - 1], accumulator.first_measure_number)

rests = score["Rests"]
for index, string in ((7 - 1, "short"),):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[7 - 1],
    r"\harmony-text-seven",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = baca.make_mmrests(accumulator.get(1, 7))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (2, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(8, 9),
        [-8, -4, 8, -4, 8],
        preprocessor=preprocessor,
        extra_counts=[0, 4, 4],
        denominator=None,
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [1, -11, -1, 1, -14],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 9))
    voice.extend(music)


def PERC2(voice):
    music = baca.make_notes(accumulator.get(1, 6))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [6, 6, 16],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2, 6),
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def VC2(voice):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (4, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 2),
        ["+", 1],
        preprocessor=preprocessor,
        do_not_rewrite_meter=True,
        written_wholes=[1],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [4, 4, 8, 4, 4, 8, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 6),
        [8, 8, 12],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([0, 1], 3),
        invisible=([1], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [12, 16, 12, 15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[-2],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 6),
        [12, 8, 8],
        do_not_rewrite_meter=True,
        fuse=True,
        written_wholes=([1, 2], 3),
        invisible=([2], 3),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(8, 9))
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", (8, 9)),
        baca.pitch("Ab3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.new(
            baca.covered_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                right_broken=True,
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
            ),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[1:]),
        ),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 6)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak X-extent #'(0 . 0)"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 6)),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
            left_broken=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        ("perc2", (8, 9)),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", (1, 6)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<B5 C6 D6>"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "p < mf > p",
            measures=1,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < f > p",
            measures=3,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < ff > p",
            measures=5,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (8, 9)),
        baca.pitch("<C6 Db6 Eb6>"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", (1, 9)),
        baca.dls_staff_padding(4),
    )


def va(m):
    accumulator(
        ("va", (1, 6)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.hairpin(
            "(p) < mf > p",
            measures=2,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < f > p",
            measures=4,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < ff >o niente",
            measures=6,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("va", (1, 9)),
        baca.pitch(
            "<B4 C5 D5>",
            selector=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        ),
        baca.dls_staff_padding(4),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        # TODO: promote into rhythm:
        baca.repeat_tie(
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("Bb4"),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc1", (2, 6)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
        ),
        baca.hairpin(
            "p < mf > p",
            measures=2,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < f > p",
            measures=4,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < ff >o niente",
            measures=6,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", (2, 9)),
        baca.pitch(
            "<C5 Db5 Eb5>",
            selector=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        ),
    )
    accumulator(
        ("vc1", (1, 9)),
        baca.dls_staff_padding(4),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        # TODO: promote into rhythm:
        baca.repeat_tie(
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("B2"),
        baca.hairpin(
            "(p) >o",
            bookend=False,
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc2", (3, 6)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
        ),
        baca.dynamic(
            "p",
            measures=3,
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.hairpin(
            "(p) < f > p",
            measures=4,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < ff >o niente",
            measures=6,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", (3, 9)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "<B4 C5 D5>",
            selector=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        ),
    )
    accumulator(
        ("vc2", (1, 9)),
        baca.dls_staff_padding(4),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 3)),
        # TODO: promote into rhythm:
        baca.repeat_tie(
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch(
            "Bb4",
            do_not_transpose=True,
        ),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
    )
    accumulator(
        ("cb1", (4, 6)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
        ),
        baca.hairpin(
            "p < f > p",
            measures=4,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(p) < ff >o niente",
            measures=6,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", (4, 9)),
        baca.pitch(
            "<C5 Db5 Eb5>",
            selector=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
            do_not_transpose=True,
        ),
    )
    accumulator(
        ("cb1", (1, 9)),
        baca.dls_staff_padding(4),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 4)),
        baca.pitch("Bb2"),
        baca.hairpin(
            "(p) >o",
            bookend=False,
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 4.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb2", (5, 6)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, exclude=baca.enums.HIDDEN),
        ),
        baca.dynamic(
            "p",
            measures=5,
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.hairpin(
            "(p) < ff >o niente",
            measures=6,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", (5, 9)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "<B4 C5 D5>",
            selector=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
            do_not_transpose=True,
        ),
    )
    accumulator(
        ("cb2", (1, 9)),
        baca.dls_staff_padding(4),
    )


def composites(cache):
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (8, 9)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-quasi-bisb-ancora-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
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
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        library.voice_abbreviations,
    )
    bfl(cache["bfl"])
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)


if __name__ == "__main__":
    main()
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
