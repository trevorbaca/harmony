import abjad
import baca

from harmony import library

#########################################################################################
########################################### 01 ##########################################
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


def GLOBALS(skips, first_measure_number):
    stage_markup = (
        ("[A.1]", 1),
        ("[A.2]", 2),
        ("[>C.1]", 3, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    baca.metronome_mark(skips[1 - 1], "96", manifests=library.manifests)
    baca.metronome_mark(skips[3 - 1], "57 3/5", manifests=library.manifests)
    baca.metronome_mark(skips[3 - 1], "3:5(4)=4", manifests=library.manifests)
    baca.open_volta(skips[2 - 1], first_measure_number)
    baca.close_volta(skips[3 - 1], first_measure_number, site="after")


def BFL(voice, time_signatures):
    rhythm(
        voice,
        [-1, OBGC(9 * [2], [15]), -1, OBGC(6 * [2], [7])],
        time_signatures(1),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [-1, OBGC(8 * [2], [3, rt(8)]), -1, OBGC(4 * [2], [7])],
        time_signatures(2),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        abjad.sequence.truncate(library.cerulean_counts()[1:], weight=12),
        time_signatures(3),
    )
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    rhythm(
        voice,
        ["-", w(3, 4), h(w(1, 4))],
        time_signatures(1),
    )
    rhythm(
        voice,
        [w(3, 4), h(w(1, 4)), "-", w(3, 4), h(w(1, 4))],
        time_signatures(2),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(3),
        [2, 1, 1],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[2],
        rest=slice(None, -1),
    )


def PERC2(voice, time_signatures):
    rhythm(
        voice,
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
        time_signatures(1, 2),
    )
    library.make_phjc_rhythm(
        voice,
        time_signatures(3),
        [1, 2],
        [2, 2, 2, 2, 2, 2, 2, 1],
        extra_counts=[0, 6],
        rest=slice(None, -1),
        rest_pleaves=[0, 1, 2, 3],
    )


def HP(voice, time_signatures):
    rhythm(
        voice,
        [4, -14, 4, -2, 4, -6, 4, 4, -2],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        [10, "-"],
        time_signatures(3),
    )


def VA(voice, time_signatures):
    rhythm(
        voice,
        [-1, 15, -1, 7, -1, 3, rt(8), -1, 7],
        time_signatures(1, 2),
        do_not_rewrite_meter=True,
    )
    library.make_one_beat_tuplets(
        voice,
        time_signatures(3),
        library.cerulean_counts()[1:],
        extra_counts=[2],
    )


def VC1(voice):
    rhythm(
        voice,
        [4, T([4, 4, 4], 8), T([4, 4, 4], 8)],
    )
    rhythm(
        voice,
        [4, -4, T([1, -4], -1)],
    )


def VC2(voice, time_signatures):
    rhythm(
        voice,
        [-1, 15, -1, 7, -1, 3, rt(8), -1, 7],
        time_signatures(1, 2),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [8, AG([2], 2), "-"],
        time_signatures(3),
    )


def CB1(voice, time_signatures):
    rhythm(
        voice,
        [18, 6, 10, 4, 6],
        time_signatures(1, 2),
    )
    rhythm(
        voice,
        [-4, T([-6, 1, -1, 1, -1], -2)],
        time_signatures(3),
    )
    baca.section.append_anchor_note(voice)


def CB2(voice, time_signatures):
    rhythm(
        voice,
        [-1, 15, -1, 7, -1, 3, rt(8), -1, 7],
        time_signatures(1, 2),
        do_not_rewrite_meter=True,
    )
    rhythm(
        voice,
        [8, AG([2], 2), "-"],
        time_signatures(3),
    )


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
        baca.override.dls_staff_padding(o, 5)
        baca.mspanners.text(
            baca.select.tleaves(o, grace=False),
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            direction=abjad.DOWN,
            staff_padding=8,
        )
        baca.override.dots_x_extent_false(abjad.select.leaves(o, grace=False))
    with baca.scope(m[3]) as o:
        baca.pitch(o, "F3")
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 3)
        baca.rspanners.covered(
            baca.select.ltleaves(o),
            descriptor=r"\baca-cov-markup =|",
            staff_padding=3,
        )


def perc1(m):
    with baca.scope(m.leaves()) as o:
        baca.instrument(o.leaf(0), "Percussion", library.manifests)
        baca.override.dls_staff_padding(o.leaves(), 6)
    with baca.scope(m[1]) as o:
        baca.short_instrument_name(o.leaf(0), "Perc. I", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-percussion-i-markup")
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        baca.hairpin(
            o[-2:],
            "o<|f",
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[2]) as o:
        baca.laissez_vibrer(o.ptail(0))
        baca.hairpin(
            o[:1],
            "o<|mf",
            rleak=True,
        )
        baca.hairpin(
            o[-2:-1],
            "o<|f",
            rleak=True,
        )
    for n in [1, 2]:
        with baca.scope(m[n]) as o:
            baca.breathe(o.pleaf(-1))
    with baca.scope(m.get(1, 2)) as o:
        library.bass_drum_staff_position(o)
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
        baca.override.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
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
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 3)
        library.purpleheart_staff_positions(o, [0, 0, -2, 0, -2])
        baca.hairpin(
            o.tleaves(),
            "f>p",
        )
        baca.override.dls_staff_padding(o, 5.5)
        baca.markup(
            o.pleaf(0),
            r"\baca-boxed-purpleheart-markup",
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
        baca.staff_position(o, 0)
        baca.dynamic(o.phead(0), "mf")
        baca.override.dls_staff_padding(o, 6)
        baca.markup(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G1")
        library.damp_rest_after_each_ptail(o)
        baca.dynamic(
            o.phead(0),
            "mf-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.override.dls_staff_padding(o, 6)


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
        baca.override.dls_staff_padding(o, 4)
        for plt in baca.select.plts(o):
            baca.rspanners.damp(
                plt,
                staff_padding=3,
            )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "sfp")
        baca.override.dls_staff_padding(o, 6)


def vc1(m):
    with baca.scope(m.get(1, 2)) as o:
        baca.instrument(o.leaf(0), "Cello", library.manifests)
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.short_instrument_name(o.leaf(0), "Vc. I", library.manifests)
        baca.instrument_name(o.leaf(0), r"\harmony-cello-i-markup")
        baca.repeat_tie(abjad.select.get(o.leaves(), [1, 4]))
        baca.override.tuplet_bracket_direction_down(o)
        leaves = baca.select.rleaves(o, count=2)
        baca.hairpin(
            baca.select.lparts(leaves, [4, 5]),
            "o< f>o!",
        )
        baca.mspanners.scp(
            o.plts(),
            "P1 -> P3 -> P2 -> P4 ->",
            staff_padding=3,
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
            baca.override.dls_staff_padding(u, 6)
        baca.override.dls_staff_padding(o.pheads()[-1:], 6)
        baca.rspanners.metric_modulation(
            o.leaves()[2:-3],
            staff_padding=5.5,
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
            baca.rspanners.damp(
                plt,
                staff_padding=3,
            )
    with baca.scope(m[3]) as o:
        baca.glissando(
            o.tleaves(),
            "G2 F2",
        )
        baca.stem_tremolo(baca.select.pleaves(o, grace=False))
        baca.hairpin(
            o,
            "mf>o!",
        )
        baca.mspanners.scp(
            o.tleaves(),
            "P1 =|",
            staff_padding=3,
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.override.dls_staff_padding(o, 4)


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
            baca.select.lparts(o, [4, 6]),
            "o< f>o!",
            rleak=True,
        )
        baca.override.dls_staff_padding(o, 4)
        baca.mspanners.scp(
            o.plts(),
            "P1 -> P3 -> P2 -> P4 -> P1 =|",
            do_not_bookend=True,
            staff_padding=4.25,
        )
    with baca.scope(m[3]) as o:
        baca.staff_lines(o.leaf(0), 1)
        baca.clef(o.leaf(0), "percussion")
        baca.override.tuplet_number_text(o, r"\markup 5:4")
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), "sfp")
        baca.override.dls_staff_padding(o, 6)
        baca.rspanners.metric_modulation(
            o.leaves()[-4:],
            right_broken=True,
            staff_padding=5.5 + 1,
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
            baca.rspanners.damp(
                plt,
                staff_padding=3 + 1,
            )
    with baca.scope(m[3]) as o:
        baca.glissando(
            o.tleaves(),
            "G2 F#2",
        )
        baca.stem_tremolo(baca.select.pleaves(o, grace=False))
        baca.hairpin(
            o,
            "mf>o!",
        )
        baca.mspanners.scp(
            o.tleaves(),
            "P1 =|",
            staff_padding=3 + 1,
        )
    with baca.scope(m.get(1, 3)) as o:
        baca.override.dls_staff_padding(o, 4)


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
    VC1(voices("vc1"))
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
    )
    baca.section.deactivate_tags(
        score,
    )
    baca.section.activate_tags(
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
