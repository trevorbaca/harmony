import abjad
import baca

from harmony import library

#########################################################################################
######################################### 20 [T] ########################################
#########################################################################################

stage_markup = (
    ("[>U.1]", 1, "#darkgreen"),
    ("[>V.3]", 2, "#darkgreen"),
    ("[T.1-8]", 3),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
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
    (1 - 1, "57 3/5"),
    (1 - 1, "4:5(2)=4"),
    (2 - 1, "72"),
    (2 - 1, "5:4(4)=4"),
    (3 - 1, "144"),
    (3 - 1, "8=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 2, 2],
        written_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = library.make_phjc_rhythm(
        accumulator.get(1),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1, 1, 2, 2],
        rest_cyclic=([1], 2),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 4, 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [2, -20, 2, -24],
    )
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, "+"],
        extra_counts=[1],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 8),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 10),
        [-4, 2, -4, 6, 6, 6, 6],
        extra_counts=[2, 0, 0, 0, 0, 0, 0, 0],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [10, "+"],
        extra_counts=[2],
        denominator=None,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [3, "+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 3, -1],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        "r4 c16. r32 r8 c16. r32 r8",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 10),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", 1),
        baca.pitch("E5"),
        baca.hairpin(
            "o< f >o niente",
            map=lambda _: baca.select.runs(_),
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.trill_spanner(
            alteration="m2",
            map=lambda _: baca.select.runs(_)[:1],
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="m2",
            map=lambda _: baca.select.runs(_)[1:2],
        ),
    )
    accumulator(
        ("bfl", 2),
        baca.pitch("Gqs5"),
        baca.hairpin(
            "o< mp >o niente",
            map=lambda _: baca.select.runs(_),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="A5",
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("bfl", (3, 10)),
        baca.pitch("Eb3"),
        baca.dynamic("pp-sempre"),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
    )
    accumulator(
        ("bfl", (1, 10)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.staff_lines(3),
        library.purpleheart_staff_positions([2, -2, 0]),
        baca.dynamic("p"),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.staff_lines(1),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< pp >o niente",
            map=lambda _: baca.select.runs(_),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        ),
    )
    accumulator(
        ("perc1", (2, 10)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc1", (3, 10)),
        library.slate_staff_position(),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        library.bass_drum_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("perc2", 2),
        library.tam_tam_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p"),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
    )
    accumulator(
        ("perc2", (3, 10)),
        baca.tuplet_bracket_staff_padding(3),
        library.slate_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
    )
    accumulator(
        ("perc2", (1, 10)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.tuplet_bracket_up(),
        baca.pitches("F5 E5 Eb5"),
        baca.flageolet(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("f"),
    )
    accumulator(
        ("hp", 2),
        baca.clef("bass"),
        baca.pitch("D1"),
        baca.ottava_bassa(),
        baca.ottava_bracket_staff_padding(8),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p"),
    )
    accumulator(
        ("hp", (1, 2)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[1:],
        ),
    )
    accumulator(
        ("hp", (3, 10)),
        baca.clef("treble"),
        baca.pitch("F#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        ),
    )
    accumulator(
        ("hp", (1, 10)),
        baca.dls_staff_padding(4),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.clef("alto"),
        baca.pitch("Bb3"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp"),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("va", 2),
        baca.tuplet_bracket_up(),
        baca.pitches("D4 C#4"),
        baca.glissando(),
        baca.hairpin(
            "o< mf",
        ),
    )
    accumulator(
        ("va", (1, 2)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("va", (3, 8)),
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.new(
            baca.tuplet_bracket_staff_padding(2),
            library.bridge_staff_position(),
            selector=lambda _: baca.rleaves(_, count=2),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("va", (9, 10)),
        baca.accent(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.new(
            baca.clef("alto"),
            baca.staff_lines(5),
            selector=lambda _: abjad.select.leaf(_, 3),
        ),
        baca.new(
            baca.pitch("E3"),
            baca.dls_staff_padding(4),
            selector=lambda _: baca.select.plts(_)[1:],
        ),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.scp_spanner(
            "P4 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:]),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:]),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.clef("treble"),
        baca.pitch("Aqf4"),
        baca.markup(r"\baca-eleven-e-flat"),
    )
    accumulator(
        ("vc1", 2),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("F#5"),
        baca.hairpin(
            "o< mp >o niente",
            map=lambda _: baca.select.runs(_),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc1", (1, 2)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc1", (3, 10)),
        baca.tuplet_bracket_staff_padding(2),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(6),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.clef("treble"),
        baca.pitch("F4"),
    )
    accumulator(
        ("vc2", 2),
        baca.tuplet_bracket_staff_padding(2),
        baca.pitches("Gb4 F4"),
        baca.glissando(),
        baca.hairpin(
            "o< mf",
        ),
    )
    accumulator(
        ("vc2", (1, 2)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc2", (3, 10)),
        baca.tuplet_bracket_staff_padding(2),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(6),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.clef("bass"),
        baca.pitch("Dtqf4"),
    )
    accumulator(
        ("cb1", 2),
        baca.pitches("D2 C#2"),
        baca.glissando(),
        baca.hairpin(
            "o< mf",
        ),
    )
    accumulator(
        ("cb1", (1, 2)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("cb1", (3, 10)),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("cb1", 10),
        baca.rest_extra_offset(
            (-1.5, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.clef("bass"),
        baca.pitch("Eb2"),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("cb2", 2),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
    )
    accumulator(
        ("cb2", (2, 10)),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_)[1:],
        ),
    )
    accumulator(
        ("cb2", (2, 4)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
        ),
    )
    accumulator(
        ("cb2", 10),
        baca.rest_extra_offset(
            (-1.5, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 1),
        baca.staff_lines(5),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 1),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], (3, 10)),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            match=[0, 1, 2],
        ),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
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
    previous_persist = baca.previous_metadata(__file__, file_name="__persist__")
    baca.reapply(accumulator, accumulator.manifests(), previous_persist, voice_names)
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
