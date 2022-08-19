import abjad
import baca

from harmony import library

#########################################################################################
######################################### 01 [A] ########################################
#########################################################################################

stage_markup = (
    ("[A.1]", 1),
    ("[A.2]", 2),
    ("[>C.1]", 3, "#darkgreen"),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)
instruments = library.instruments

accumulator = baca.CommandAccumulator(
    instruments=library.instruments,
    short_instrument_names=library.short_instrument_names,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (6, 4),
        (5, 4),
        (3, 4),
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
    (1 - 1, "96"),
    (3 - 1, "57 3/5"),
    (3 - 1, "3:5(4)=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

baca.open_volta_function(skips[2 - 1], accumulator.first_measure_number)
baca.close_volta_function(skips[3 - 1], accumulator.first_measure_number, site="after")


def BFL(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 2),
        divisions=[16, 8, 12, 8],
        counts=[9, 6, 8, 4],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        library.cerulean()[1:],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [3, 1, "-", 3, 1],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(3),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(3),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    )
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [10, "-"],
    )
    voice.extend(music)


def VA(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 2),
        divisions=[16, 8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        library.cerulean()[1:],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice):
    music = baca.make_skeleton(
        r"c4 \times 5/3 { c4 c4 c4 } \times 5/3 { c4 c4 c4 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [5, -5, 1, -4],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 2),
        divisions=[16, 8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [10, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [18, 6, 10, 4, 6],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"r4 \times 4/5 { r4. c16 r16 c16 r16 }",
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1, 2),
        divisions=[16, 8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [10, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", (1, 2)),
        baca.instrument(
            instruments["BassFlute"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Bfl."),
        baca.instrument_name(
            r"\harmony-bass-flute-markup",
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch(
            "A3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_a(),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "f-mp",
            selector=lambda _: abjad.select.get(
                baca.select.pheads(_, grace=False), [0, 2]
            ),
        ),
        baca.dynamic(
            "mf-mp",
            selector=lambda _: abjad.select.get(
                baca.select.pheads(_, grace=False), [1, 3]
            ),
        ),
        baca.dls_staff_padding(5),
        baca.text_spanner(
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.dots_x_extent_false(
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
    )
    accumulator(
        ("bfl", 3),
        baca.pitch("F3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(3),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def perc1(m):
    accumulator(
        "perc1",
        baca.instrument(
            instruments["Percussion"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc1", 1),
        library.short_instrument_name("Perc. I"),
        baca.instrument_name(
            r"\harmony-percussion-i-markup", selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "o<| f",
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptail(_, 0),
        ),
        baca.hairpin(
            "o<| mf",
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[:1]),
        ),
        baca.hairpin(
            "o<| f",
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
    )
    accumulator(
        ("perc1", [1, 2]),
        baca.breathe(
            selector=lambda _: baca.select.pleaf(_, -1, exclude=baca.enums.HIDDEN),
        ),
    )
    accumulator(
        ("perc1", (1, 2)),
        library.bass_drum_staff_position(),
    )
    accumulator(
        ("perc1", 3),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 2)),
        baca.instrument(
            instruments["Percussion"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Perc. II"),
        baca.instrument_name(
            r"\harmony-percussion-ii-markup",
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.slate_staff_position(),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 3),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([0, 0, -2, 0, -2]),
        baca.hairpin(
            "f > p",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def hp(m):
    accumulator(
        ("hp", (1, 2)),
        baca.instrument(
            instruments["Harp"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Hp."),
        baca.instrument_name(
            r"\harmony-harp-markup", selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.whisk_staff_position(),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 3),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("G1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic(
            "mf-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(6),
    )


def va(m):
    accumulator(
        ("va", (1, 2)),
        baca.instrument(
            instruments["Viola"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Va."),
        baca.instrument_name(
            r"\harmony-viola-markup", selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.pitch("Gqf4"),
        baca.markup(
            r"\baca-seven-a",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("va", 3),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("sfp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 2)),
        baca.instrument(
            instruments["Cello"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Vc. I"),
        baca.instrument_name(
            r"\harmony-cello-i-markup", selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.repeat_tie(
            selector=lambda _: abjad.select.get(baca.select.leaves(_), [1, 4]),
        ),
        baca.tuplet_bracket_down(),
        baca.hairpin(
            "o< f >o niente",
            pieces=lambda _: baca.select.lparts(_, [4, 5]),
            selector=lambda _: baca.select.rleaves(_, count=2),
        ),
        baca.scp_spanner(
            "P1 -> P3 -> P2 -> P4 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc1", 3),
        baca.clef(
            "percussion",
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        baca.staff_lines(
            1,
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        baca.new(
            library.bridge_staff_position(),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.stem_tremolo(),
            baca.dynamic("sfp"),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        ("vc1", (1, 3)),
        baca.new(
            baca.pitch("A2"),
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.stem_tremolo(),
            baca.dls_staff_padding(6),
            selector=lambda _: baca.select.pheads(_)[:-1],
        ),
        baca.new(
            baca.dls_staff_padding(6),
            selector=lambda _: baca.select.pheads(_)[-1:],
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[2:-2],
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        baca.instrument(
            instruments["Cello"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Vc. II"),
        baca.instrument_name(
            r"\harmony-cello-ii-markup", selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.pitch("B3"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 3),
        baca.interpolate_pitches("G2", "F2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", (1, 3)),
        baca.dls_staff_padding(4),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 2)),
        baca.instrument(
            instruments["Contrabass"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Cb. I"),
        baca.instrument_name(
            r"\harmony-contrabass-i-markup",
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("A1"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "o< f >o niente",
            pieces=lambda _: baca.select.lparts(_, [4, 7]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dls_staff_padding(4),
        baca.scp_spanner(
            "P1 -> P3 -> P2 -> P4 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            final_piece_spanner=False,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb1", 3),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.tuplet_number_text(r"\markup 5:4"),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("sfp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-4:]),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 2)),
        baca.instrument(
            instruments["Contrabass"], selector=lambda _: abjad.select.leaf(_, 0)
        ),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        library.short_instrument_name("Cb. II"),
        baca.instrument_name(
            r"\harmony-contrabass-ii-markup",
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("Dqs3"),
        baca.markup(
            r"\baca-eleven-a",
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
            map=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("cb2", 3),
        baca.interpolate_pitches("G2", "F#2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            selector=lambda _: baca.select.tleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.hairpin(
            "mf >o niente",
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", (1, 3)),
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
        includes=["../stylesheet.ily", "header.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
