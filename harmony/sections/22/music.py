import abjad
import baca

from harmony import library

#########################################################################################
########################################### 22 ##########################################
#########################################################################################


def GLOBALS(skips, rests):
    stage_markup = (
        ("[V.1-3]", 1),
        ("[<T.1]", 4, "#darkgreen"),
        ("[V.4-5]", 5),
        ("[V.6]", 12),
        ("[<T.2]", 13, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "72"),
        (1 - 1, "5:4(4)=4"),
        (4 - 1, "144"),
        (4 - 1, "8=4"),
        (5 - 1, "72"),
        (5 - 1, "2=4"),
        (13 - 1, "144"),
        (13 - 1, "8=4"),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    for index, string in ((11 - 1, "fermata"),):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[11 - 1],
        r"\harmony-text-twenty-one",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [-12, 4, "-"],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def PERC1(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_notes(time_signatures(5, 10))
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11))
    voice.extend(music)
    music = baca.make_notes(time_signatures(12))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [4, -8],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [2, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [2, -20, 2, -24],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [4, -8],
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        ["-", 6],
        durations="measures",
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def VA(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 3),
        [32],
        extra_counts=[1],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [18, 13, 9, 6, 3, 2, 2, 2, 2, 2, 3, 3, 6, "+"],
        extra_counts=[1],
        after_grace=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(12),
        ["+"],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [-20, 2, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(3),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [3, -7, 3, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 3),
        [46],
        extra_counts=[2],
        denominator=None,
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [18, 14, 12, 6, 4, 2, 2, 2, 2, 4, 6, 12, "+"],
        extra_counts=[2],
        after_grace=True,
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(12),
        ["+"],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [-4, 3, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice, time_signatures):
    music = library.make_sixteenths(
        time_signatures(1, 3),
        [27],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [-4, 3, -7, 2],
    )
    voice.extend(music)


def CB2(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 2))
    voice.extend(music)
    music = baca.parse(
        "r4 c16. r32 r8 c16. r32 r8",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(4),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(5, 10),
        [9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, "+"],
        after_grace=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(time_signatures(11))
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(12),
        ["+"],
        after_grace=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        time_signatures(13),
        [3, -5, 3, -5],
    )
    voice.extend(music)


def bfl(m):
    with baca.scope(m[3]) as o:
        baca.pitch(o, "Gqs5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="A5",
            )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run), count=2)
            baca.covered_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
    with baca.scope(m.get(5, 10)) as o:
        baca.pitch(o, "Gqs5")
        baca.hairpin(
            o.leaves(),
            "niente o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(o.leaves(), [1]),
        )
        baca.dynamic(o.rleaf(-1), "niente")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="A5",
        )
    with baca.scope(m[13]) as o:
        baca.pitch(o, "Eb3")
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(baca.select.ltleaves(run), count=2)
            baca.covered_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
    with baca.scope(m.get(1, 13)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(m):
    with baca.scope(m[3]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< pp >o niente",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m[4]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m.get(5, 10)) as o:
        library.triangle_staff_position(o)
        baca.flat_glissando(o, hide_middle_stems=True)
        baca.stem_tremolo(abjad.select.get(o.pleaves(), [0, -1]))
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
        )
    with baca.scope(m[12]) as o:
        library.triangle_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m[13]) as o:
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
    with baca.scope(m.get(1, 13)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(m):
    with baca.scope(m[3]) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(o.phead(0), "p-ancora")
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[4]) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(5, 10)) as o:
        library.tam_tam_staff_position(o)
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[13]) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "pp")
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(1, 13)) as o:
        baca.dls_staff_padding(o, 6)


def hp(m):
    with baca.scope(m[1]) as o:
        baca.pitch(o, "D5")
        baca.flageolet(o.pheads())
        baca.laissez_vibrer(o.ptails())
        baca.metric_modulation_spanner(
            o.leaves()[:2],
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
        )
    with baca.scope(m[3]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D1")
        baca.ottava_bassa(o.tleaves())
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(
            o.phead(0),
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(3, 10)) as o:
        baca.ottava_bracket_staff_padding(o, 8)
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "D1")
        baca.ottava_bassa(o.tleaves())
        baca.laissez_vibrer(o.pheads())
        baca.dynamic(
            o.phead(0),
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[13]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#4")
        baca.laissez_vibrer(o.ptails())
        baca.dynamic(o.phead(0), "p-ancora")
        baca.markup(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[-1:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 13)) as o:
        baca.dls_staff_padding(o, 4)


def va(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.tuplet_bracket_up(o)
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "o< f")
        baca.scp_spanner(
            o.leaves(),
            "T4 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=True,
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "alto")
        baca.tuplet_bracket_up(o)
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(
            o.leaves(),
            "o< ff >o niente",
            pieces=abjad.select.partition_by_ratio(
                abjad.select.leaves(o.leaves()), (4, 3)
            ),
        )
        baca.scp_spanner(
            o.leaves(),
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=-1,
            pieces=abjad.select.partition_by_ratio(
                abjad.select.leaves(o.leaves()), (4, 3)
            ),
        )
    with baca.scope(m[12]) as o:
        baca.pitches(o, "D4 C#4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
        )


def vc1(m):
    with baca.scope(m[3]) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "F#5")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.hairpin(
                run,
                "o< mp >o niente",
                pieces=baca.select.lparts(run, [1, 1 + 1]),
            )
            baca.trill_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "F#5")
        baca.note_head_style_harmonic(o.pleaves())
        baca.hairpin(
            o.leaves(),
            "niente o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(o.leaves(), [1]),
        )
        baca.dynamic(o.rleaf(-1), "niente")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[:9],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )


def vc2(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.tuplet_bracket_up(o)
        baca.tuplet_bracket_staff_padding(o, 1.5)
        baca.pitches(o, "Gb4 F4")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "o< f")
        baca.scp_spanner(
            o.leaves(),
            "T4 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=True,
        )
    with baca.scope(m[4]) as o:
        baca.tuplet_bracket_staff_padding(o, 3)
        baca.rest_extra_offset(o.rest(-1), (-2, 0))
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "tenor")
        baca.tuplet_bracket_up(o)
        baca.tuplet_bracket_staff_padding(o, 3)
        baca.pitches(o, "Gb4 F4")
        baca.glissando(o.tleaves())
        baca.hairpin(
            o.leaves(),
            "o< ff >o niente",
            pieces=abjad.select.partition_by_ratio(
                abjad.select.leaves(o.leaves()), (4, 3)
            ),
        )
        baca.scp_spanner(
            o.leaves(),
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 7.5"),
            bookend=-1,
            pieces=abjad.select.partition_by_ratio(
                abjad.select.leaves(o.leaves()), (4, 3)
            ),
        )
    with baca.scope(m[12]) as o:
        baca.pitches(o, "D3 C#3")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
        )
    with baca.scope(m[13]) as o:
        baca.tuplet_bracket_staff_padding(o, 3)


def cb1(m):
    with baca.scope(m.get(1, 3)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitches(o, "D2 C#2")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "o< f")
        baca.scp_spanner(
            o.leaves(),
            "T4 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            bookend=True,
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "treble")
        baca.note_head_style_harmonic(o.pleaves())
        baca.pitch(o, "Cqf5")
        baca.hairpin(
            o.leaves(),
            "niente o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=baca.select.clparts(o.leaves(), [1]),
        )
        baca.dynamic(o.rleaf(-1), "niente")
        baca.trill_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
        baca.markup(o.pleaf(0), r"\baca-seven-d")
        baca.markup(
            o.pleaf(0),
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        )


def cb2(m):
    with baca.scope(m[3]) as o:
        with baca.scope(o.leaf(1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    with baca.scope(m.get(3, 4)) as o:
        baca.dls_staff_padding(o, 6)
        baca.metric_modulation_spanner(
            baca.select.rleak(o.leaves()[1:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(5, 10)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitches(o, "D2 C#2")
        baca.glissando(o.tleaves())
        baca.hairpin(
            o.leaves(),
            "o< ff >o niente",
            pieces=abjad.select.partition_by_ratio(
                abjad.select.leaves(o.leaves()), (4, 3)
            ),
        )
        baca.scp_spanner(
            o.leaves(),
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=-1,
            pieces=abjad.select.partition_by_ratio(
                abjad.select.leaves(o.leaves()), (4, 3)
            ),
        )
        baca.dls_staff_padding(o, 4)
    with baca.scope(m[12]) as o:
        baca.pitches(o, "D2 C#2")
        baca.glissando(o.tleaves())
        baca.hairpin(o, "pp >o niente")
        baca.dls_staff_padding(o, 4)
        baca.scp_spanner(
            o.leaves(),
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            bookend=True,
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        for item in [(1, 3), (5, 12)]:
            with baca.scope(m.get(item)) as o:
                baca.dls_staff_padding(o, 4)
        with baca.scope(m[4]) as o:
            baca.clef(o.leaf(0), "percussion")
            baca.staff_lines(o.leaf(0), 1)
            baca.dynamic(o.phead(0), "pp")
            baca.dls_staff_padding(o, 6)
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[4]) as o:
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
        with baca.scope(m[5]) as o:
            baca.staff_lines(o.leaf(0), 5)
        with baca.scope(m[13]) as o:
            baca.staff_lines(o.leaf(0), 1)
            baca.clef(o.leaf(0), "percussion")
            library.bridge_staff_position(o)
            baca.stem_tremolo(o.pleaves())
            baca.accent(o.pheads())
            baca.dynamic(o.phead(0), "pp")
            baca.dls_staff_padding(o, 6)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    numerators = [3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 1, 3, 4]
    pairs = [(_, 4) for _ in numerators]
    time_signatures = baca.section.wrap(pairs)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        score_persistent_indicators=previous_persistent_indicators["Score"],
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(voices("bfl"), time_signatures)
    PERC1(voices("perc1"), time_signatures)
    PERC2(voices("perc2"), time_signatures)
    HP(voices("hp"), time_signatures)
    VA(voices("va"), time_signatures)
    VC1(voices("vc1"), time_signatures)
    VC2(voices("vc2"), time_signatures)
    CB1(voices("cb1"), time_signatures)
    CB2(voices("cb2"), time_signatures)
    baca.section.reapply_persistent_indicators(
        voices,
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(time_signatures()),
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
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        empty_fermata_measures=True,
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
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


def make_layout():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=40, distances=distances),
        ),
        baca.page(
            2,
            baca.system(measure=8, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([11], (1, 288)),),
    )
    baca.section.make_layout_ly(spacing)


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    if environment.score():
        score = make_score(
            environment.first_measure_number,
            environment.previous_metadata["persistent_indicators"],
            environment.timing,
        )
        persist_score(score, environment)
    if environment.arguments.layout:
        make_layout()


if __name__ == "__main__":
    main()
