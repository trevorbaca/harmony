import abjad
import baca

from harmony import library

#########################################################################################
########################################### 01 ##########################################
#########################################################################################


def GLOBALS(skips, first_measure_number):
    stage_markup = (
        ("[A.1]", 1),
        ("[A.2]", 2),
        ("[>C.1]", 3, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (3 - 1, "57 3/5"),
        (3 - 1, "3:5(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.open_volta(skips[2 - 1], first_measure_number)
    baca.close_volta(skips[3 - 1], first_measure_number, site="after")


def BFL(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 2),
        weights=[16, 8, 12, 8],
        counts=[9, 6, 8, 4],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        library.cerulean()[1:],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        ["-", 3, 1],
        written=[((1, 4), True)],
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(2),
        [3, 1, "-", 3, 1],
        written=[((1, 4), True)],
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        time_signatures(3),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest_most=True,
    )
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        time_signatures(3),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest_most=True,
        rest_pleaves=[0, 1, 2, 3],
    )
    voice.extend(music)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [10, "-"],
    )
    voice.extend(music)


def VA(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 2),
        weights=[16, 8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        library.cerulean()[1:],
        extra_counts=[2],
        tuplet_ratio_denominator=None,
    )
    voice.extend(music)


def VC1(voice, time_signatures):
    music = baca.parse(
        r"c4 \times 5/3 { c4 c4 c4 } \times 5/3 { c4 c4 c4 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [5, -5, 1, -4],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 2),
        weights=[16, 8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [10, "-"],
        untie=True,
    )
    voice.extend(music)
    library.after_grace_each_run(music)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 2),
        [18, 6, 10, 4, 6],
    )
    voice.extend(music)
    music = baca.parse(
        r"r4 \times 4/5 { r4. c16 r16 c16 r16 }",
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    music = library.make_appoggiato_rhythm(
        time_signatures(1, 2),
        weights=[16, 8, 12, 8],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [10, "-"],
        untie=True,
    )
    voice.extend(music)
    library.after_grace_each_run(music)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "BassFlute", library.manifests)
        baca.clef(o.leaf(0), "treble")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Bfl.", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-bass-flute-markup")
        mutated_score = baca.pitch(baca.select.plts(o, grace=False), "A3")
        mutated_score = baca.pitches(
            baca.select.plts(o, grace=True),
            library.appoggiato_pitches_a(),
            allow_obgc_mutation=True,
        )
        assert mutated_score
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.dynamic(
            abjad.select.get(baca.select.pheads(o, grace=False), [0, 2]),
            "f-mp",
        )
        baca.dynamic(
            abjad.select.get(baca.select.pheads(o, grace=False), [1, 3]),
            "mf-mp",
        )
        baca.dls_staff_padding(o, 5)
        baca.text_spanner(
            baca.select.tleaves(o, grace=False, rleak=True),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            bookend=False,
            direction=abjad.DOWN,
        )
        baca.dots_x_extent_false(baca.select.leaves(o, grace=False))
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F3")
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 3)
        baca.covered_spanner(
            baca.select.rleak(baca.select.ltleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
        )


def perc1(m):
    with baca.scope(m.leaves()) as o:
        baca.instrument(o.leaf(0), "Percussion", library.manifests)
        baca.dls_staff_padding(o.leaves(), 6)
    with baca.scope(m[1]) as o:
        baca.short_instrument_name(o.leaf(0), "Perc. I", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-percussion-i-markup")
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        baca.hairpin(o.leaves()[-2:], "o<| f")
        baca.markup(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.laissez_vibrer(o.ptail(0))
        baca.hairpin(baca.select.rleak(o.leaves()[:1]), "o<| mf")
        baca.hairpin(o.leaves()[-2:], "o<| f")
    for n in [1, 2]:
        with baca.scope(m[n]) as o:
            baca.breathe(o.pleaf(-1))
    with baca.scope(m.get(1, 2)) as o:
        library.bass_drum_staff_position(o)
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(o.tleaves(), "f > p")
        baca.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
        )


def perc2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Percussion", library.manifests)
        baca.clef(o.leaf(0), "percussion")
        baca.short_instrument_name(o.leaf(0), "Perc. II", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-percussion-ii-markup")
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(o.tleaves(), "f > p")
        baca.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(rf"- \tweak staff-padding {5 + 1}"),
        )


def hp(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Harp", library.manifests)
        baca.clef(o.leaf(0), "percussion")
        baca.short_instrument_name(o.leaf(0), "Hp.", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-harp-markup")
        baca.staff_lines(o.leaf(0), 1)
        library.whisk_staff_position(o)
        baca.dynamic(o.phead(0), "mf")
        baca.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G1")
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(
            o.phead(0),
            "mf-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 6)


def va(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Viola", library.manifests)
        baca.clef(o.leaf(0), "alto")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Va.", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-viola-markup")
        baca.pitch(o, "Gqf4")
        baca.markup(
            o.pleaf(0),
            r"\baca-seven-a",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.dynamic(o.phead(0), "mp")
        baca.dls_staff_padding(o, 4)
        for plt in baca.select.plts(o):
            baca.damp_spanner(
                baca.select.rleak(plt),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "sfp")
        baca.dls_staff_padding(o, 6)


def vc1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Cello", library.manifests)
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Vc. I", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-cello-i-markup")
        baca.repeat_tie(abjad.select.get(o.leaves(), [1, 4]))
        baca.tuplet_bracket_down(o)
        leaves = baca.select.rleaves(o, count=2)
        baca.hairpin(
            leaves,
            "o< f >o niente",
            pieces=baca.select.lparts(leaves, [4, 5]),
        )
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.scp_spanner(
            leaves,
            "P1 -> P3 -> P2 -> P4 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=baca.select.plts(leaves),
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(1), "percussion")
        baca.staff_lines(o.leaf(1), 1)
        with baca.scope(o.pleaf(-1)) as u:
            library.bridge_staff_position(u)
            baca.accent(u)
            baca.stem_tremolo(u)
            baca.dynamic(u, "sfp")
    with baca.scope(m.get(1, 3)) as o:
        with baca.scope(o.pheads()[:-1]) as u:
            baca.pitch(u, "A2")
            baca.accent(u)
            baca.stem_tremolo(u)
            baca.dls_staff_padding(u, 6)
        baca.dls_staff_padding(o.pheads()[-1:], 6)
        baca.metric_modulation_spanner(
            o.leaves()[2:-2],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )


def vc2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Cello", library.manifests)
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Vc. II", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-cello-ii-markup")
        baca.pitch(o, "B3")
        baca.dynamic(o.phead(0), "mp")
        for plt in baca.select.plts(o):
            baca.damp_spanner(
                baca.select.rleak(plt),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[3]) as o:
        baca.interpolate_pitches(o, "G2", "F2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(baca.select.pleaves(o, grace=False))
        baca.hairpin(o, "mf >o niente")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.dls_staff_padding(o, 4)


def cb1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Contrabass", library.manifests)
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Cb. I", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-contrabass-i-markup")
        baca.pitch(o, "A1")
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            o.rleaves(),
            "o< f >o niente",
            pieces=baca.select.lparts(o.rleaves(), [4, 7]),
        )
        baca.dls_staff_padding(o, 4)
        leaves = baca.select.rleak(baca.select.ltleaves(o))
        baca.scp_spanner(
            leaves,
            "P1 -> P3 -> P2 -> P4 ->",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            final_piece_spanner=False,
            pieces=baca.select.plts(leaves),
        )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.clef(o.leaf(0), "percussion")
        baca.tuplet_number_text(o, r"\markup 5:4")
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "sfp")
        baca.dls_staff_padding(o, 6)
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[-4:]),
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
            right_broken=True,
        )


def cb2(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Contrabass", library.manifests)
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Cb. II", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-contrabass-ii-markup")
        baca.pitch(o, "Dqs3")
        baca.markup(
            o.pleaf(0),
            r"\baca-eleven-a",
            abjad.Tweak(rf"- \tweak staff-padding {5.5 + 1}"),
        )
        baca.dynamic(o.phead(0), "mp")
        for plt in baca.select.plts(o):
            baca.damp_spanner(
                baca.select.rleak(plt),
                abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
            )
    with baca.scope(m[3]) as o:
        baca.interpolate_pitches(o, "G2", "F#2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(baca.select.pleaves(o, grace=False))
        baca.hairpin(o, "mf >o niente")
        baca.scp_spanner(
            baca.select.tleaves(o, rleak=True),
            "P1 =|",
            abjad.Tweak(rf"- \tweak staff-padding {3 + 1}"),
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.dls_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    pairs = [(6, 4), (5, 4), (3, 4)]
    time_signatures = baca.section.wrap(pairs)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        manifests=library.manifests,
    )
    GLOBALS(score["Skips"], first_measure_number)
    BFL(voices("bfl"), time_signatures)
    PERC1(voices("perc1"), time_signatures)
    PERC2(voices("perc2"), time_signatures)
    HP(voices("hp"), time_signatures)
    VA(voices("va"), time_signatures)
    VC1(voices("vc1"), time_signatures)
    VC2(voices("vc2"), time_signatures)
    CB1(voices("cb1"), time_signatures)
    CB2(voices("cb2"), time_signatures)
    cache = baca.section.cache_leaves(
        score,
        len(time_signatures()),
        library.voice_abbreviations,
    )
    bfl(cache)
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
        first_section=True,
        global_rests_in_topmost_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        transpose_score=True,
    )
    baca.tags.deactivate(
        score,
        *baca.tags.instrument_color_tags(),
        *baca.tags.short_instrument_name_color_tags(),
        baca.tags.RHYTHM_ANNOTATION_SPANNER,
    )
    baca.tags.activate(
        score,
        baca.tags.LOCAL_MEASURE_NUMBER,
        baca.tags.STAGE_NUMBER,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily", "header.ily"],
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


def make_layout():
    distances = [18, (26), (21, 21, 26), (21, 21, 21, 21, 26)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=90, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space(3, (1, 64)),),
    )
    baca.section.make_layout_ly(spacing)


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    if environment.score():
        score = make_score(environment.first_measure_number, environment.timing)
        persist_score(score, environment)
    if environment.arguments.layout:
        make_layout()


if __name__ == "__main__":
    main()
