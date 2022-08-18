import abjad
import baca

from harmony import library

#########################################################################################
######################################### 09 [I] ########################################
#########################################################################################

stage_markup = (
    ("[I.1]", 1),
    ("[I.2]", 2),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments,
    short_instrument_names=library.short_instrument_names,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (6, 4),
        (6, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
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
    (1 - 1, "144"),
    (1 - 1, "3:2(4)=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

baca.open_volta_function(skips[1 - 1], accumulator.first_measure_number)
baca.close_volta_function(skips[2 - 1], accumulator.first_measure_number, site="after")
baca.double_volta_function(skips[2 - 1], accumulator.first_measure_number)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [3, 6, 3, 3, 6, 3],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, -2, -4, -4, 2, -2, 2, -2, -4],
    )
    voice.extend(music)


def PERC2(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [3, -6, 3, 3, -6, 3],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-6, -2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, "+"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [-12, 12, -4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-9, 3, -9, 3],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitch_function(o, "G3")
        with baca.scope(baca.select.rleak(o.leaves()[:2])) as u:
            baca.covered_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                left_broken=True,
            )
            baca.metric_modulation_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                left_broken=True,
            )
    with baca.scope(m[2]) as o:
        baca.pitch_function(o, "Gb3")
        baca.color_fingerings_function(o.pheads(), [0, 1, 2])
        baca.dynamic_function(o.phead(0), "mp")
        baca.covered_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("perc1", (1, 2)),
        library.slate_staff_position(),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 2),
        baca.new(
            library.bass_drum_staff_position(allow_hidden=True),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[:-1],
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-bd-sponge-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.flat_glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[-1:]),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.markup(
            r"\baca-bd-fingertips-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        ("perc2", (1, 2)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.pitch("<B5 C#6>"),
        baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.pitch("C#4"),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\harmony-match-harp-decay-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", 2),
        baca.pitch("C4"),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 2)),
        baca.pitch("B4"),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        baca.pitch("Dqs4"),
        baca.markup(
            r"\baca-eleven-a",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E3"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 2),
        baca.pitch("F3"),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("A1"),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitches(
            "Fqs5 Gqf5",
            do_not_transpose=True,
        ),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.pizzicato_spanner(
            abjad.Tweak(r"- \tweak staff-padding 6.5"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.markup(
            r"\baca-thirteen-a",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\baca-fourteen-a",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )


def composites(cache):
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 2),
        baca.tuplet_bracket_up(),
        baca.hairpin(
            "mp >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.new(
            baca.bow_speed_spanner(
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
                right_broken=True,
                selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
            ),
            match=[0, 1, 2],
        ),
        baca.new(
            baca.bow_speed_spanner(
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 8"),
                selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 10.5"),
                right_broken=True,
                selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
            ),
            match=[3],
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 1),
        baca.stop_on_string(
            selector=lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
        ),
        baca.hairpin(
            "o<| ff",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
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
        library.manifests,
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
