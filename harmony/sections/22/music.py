import abjad
import baca

from harmony import library

#########################################################################################
######################################### 22 [V] ########################################
#########################################################################################

stage_markup = (
    ("[V.1-3]", 1),
    ("[<T.1]", 4, "#darkgreen"),
    ("[V.4-5]", 5),
    ("[V.6]", 12),
    ("[<T.2]", 13, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (3, 4),
        (3, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
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
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark_function(skip, indicator, manifests)

rests = score["Rests"]
for index, string in ((11 - 1, "fermata"),):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[11 - 1],
    r"\harmony-text-twenty-one",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-12, 4, "-"],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5, 10))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [4, -8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [2, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -20, 2, -24],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [4, -8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        ["-", 6],
        fuse=True,
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [32],
        extra_counts=[1],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [18, 13, 9, 6, 3, 2, 2, 2, 2, 2, 3, 3, 6, "+"],
        extra_counts=[1],
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(12),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-20, 2, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -7, 3, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [46],
        extra_counts=[2],
        denominator=None,
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [18, 14, 12, 6, 4, 2, 2, 2, 2, 4, 6, 12, "+"],
        extra_counts=[2],
        after_graces=[1],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(12),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-4, 3, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [27],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11, 12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-4, 3, -7, 2],
    )
    voice.extend(music)


def CB2(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = baca.make_skeleton(
        "r4 c16. r32 r8 c16. r32 r8",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, "+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(12),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -5, 3, -5],
    )
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", 3),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("Eb3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            map=lambda _: baca.select.rleak_runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", (5, 10)),
        baca.pitch("Gqs5"),
        baca.hairpin(
            "niente o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.dynamic(
            "niente",
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="A5",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", 13),
        baca.pitch("Eb3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            map=lambda _: baca.select.rleak_runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", (1, 13)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 3),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 4),
        library.slate_staff_position(),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (5, 10)),
        library.triangle_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 12),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc1", 13),
        library.slate_staff_position(),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (1, 13)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 3),
        library.tam_tam_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p-ancora", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 4),
        library.slate_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (5, 10)),
        library.tam_tam_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 13),
        library.slate_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (1, 13)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.pitch("D5"),
        baca.flageolet(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
    )
    accumulator(
        ("hp", 3),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("D1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", 4),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("F#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (3, 10)),
        baca.ottava_bracket_staff_padding(8),
    )
    accumulator(
        ("hp", (5, 10)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("D1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("hp", 13),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("F#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("p-ancora", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-1:]),
        ),
    )
    accumulator(
        ("hp", (1, 13)),
        baca.dls_staff_padding(4),
    )


def va(m):
    accumulator(
        ("va", (1, 3)),
        baca.tuplet_bracket_up(),
        baca.pitches("D4 C#4"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "o< f",
        ),
        baca.scp_spanner(
            "T4 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("va", (5, 10)),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.tuplet_bracket_up(),
        baca.pitches("D4 C#4"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.new(
            baca.hairpin(
                "o< ff >o niente",
            ),
            baca.scp_spanner(
                "T4 -> O -> T4",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=False,
                bookend=-1,
            ),
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (4, 3)
            ),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("va", 12),
        baca.pitches("D4 C#4"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "pp >o niente",
        ),
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 3),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", (5, 10)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("F#5"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "niente o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.dynamic(
            "niente",
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", (4, 5)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[:9],
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 3)),
        baca.tuplet_bracket_up(),
        baca.tuplet_bracket_staff_padding(1.5),
        baca.pitches("Gb4 F4"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "o< f",
        ),
        baca.scp_spanner(
            "T4 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc2", 4),
        baca.tuplet_bracket_staff_padding(3),
        baca.rest_extra_offset(
            (-2, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("vc2", (5, 10)),
        baca.clef("tenor", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.tuplet_bracket_up(),
        baca.tuplet_bracket_staff_padding(3),
        baca.pitches("Gb4 F4"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.new(
            baca.hairpin(
                "o< ff >o niente",
            ),
            baca.scp_spanner(
                "T4 -> O -> T4",
                abjad.Tweak(r"- \tweak staff-padding 7.5"),
                autodetect_right_padding=False,
                bookend=-1,
            ),
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (4, 3)
            ),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc2", 12),
        baca.pitches("D3 C#3"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "pp >o niente",
        ),
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc2", 13),
        baca.tuplet_bracket_staff_padding(3),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 3)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitches("D2 C#2"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "o< f",
        ),
        baca.scp_spanner(
            "T4 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", (5, 10)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("Cqf5"),
        baca.hairpin(
            "niente o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.dynamic(
            "niente",
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(r"\baca-seven-d", selector=lambda _: baca.select.pleaf(_, 0)),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 3),
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
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("cb2", (3, 4)),
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
        ),
    )
    accumulator(
        ("cb2", (5, 10)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitches("D2 C#2"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.new(
            baca.hairpin(
                "o< ff >o niente",
            ),
            baca.scp_spanner(
                "T4 -> O -> T4",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
                bookend=-1,
            ),
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (4, 3)
            ),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("cb2", 12),
        baca.pitches("D2 C#2"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "pp >o niente",
        ),
        baca.dls_staff_padding(4),
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1
    accumulator(
        (["va", "vc1", "vc2", "cb1"], [(1, 3), (5, 12)]),
        baca.dls_staff_padding(4),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 4),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 4),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.new(
            baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
            baca.dls_staff_padding(6),
            match=[0, 1, 2, 3],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 5),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 13),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
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
        fermata_measure_empty_overrides=[11],
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
