import abjad
import baca

from harmony import library

#########################################################################################
######################################### 23 [W] ########################################
#########################################################################################

stage_markup = (
    ("[W.1]", 1),
    ("[>Y.1]", 2, "#darkgreen"),
    ("[W.2-3]", 4),
    ("[W.4]", 6),
    ("[<V.6]", 7, "#darkgreen"),
    ("[<T.3]", 8, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    time_signatures=[
        (5, 4),
        (6, 4),
        (1, 4),
        (5, 4),
        (5, 4),
        (6, 4),
        (3, 4),
        (4, 4),
    ],
    _voice_abbreviations=library.voice_abbreviations,
    _voice_names=voice_names,
)

first_measure_number = baca.interpret.set_up_score(
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
    (1 - 1, "4.=4"),
    (2 - 1, "57 3/5"),
    (2 - 1, "3:5(4)=4"),
    (4 - 1, "96"),
    (4 - 1, "5:3(4)=4"),
    (7 - 1, "72"),
    (7 - 1, "3:4(4)=4"),
    (8 - 1, "144"),
    (8 - 1, "8=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

rests = score["Rests"]
for index, string in ((3 - 1, "fermata"),):
    baca.global_fermata_function(rests[index], string)


def BFL(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0, 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 6),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 8, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 6),
        [4, -16, 4, -16, 4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice):
    music = baca.make_mmrests(accumulator.get(1, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-2, 2, -8, 2, "-"],
        extra_counts=[1],
    )
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 8))
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 6),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-6, 2, -4, 2, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [4],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4, 0],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-7, 3, -7, 3],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_tuplet(
        accumulator.get(1),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-10, 3, -5, 2],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 5))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (4, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-8, 4, 4, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -4, 0],
        denominator=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, -14, 1],
    )
    voice.extend(music)


def CB2(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 6),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8))
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", 2),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -6),
        ),
        baca.new(
            baca.note_head_font_size(-3),
            baca.accidental_font_size(-3),
            baca.accidental_x_offset(0),
            baca.accidental_y_offset(-2),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (4, 5)
            ),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", (4, 6)),
        baca.pitch("<B3 Dqf4>"),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("bfl", 8),
        baca.pitch("Eb3"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            map=lambda _: baca.select.rleak_runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", (1, 8)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 6)),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc1", 7),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 7"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 8),
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
        ("perc1", (1, 8)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "E4",
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 7),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 8),
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
        ("perc2", (7, 8)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.pitch("F#4"),
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
        ("hp", 6),
        baca.pitch("E4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-xyl-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E3"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.scp_spanner(
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("va", 2),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("va", (4, 6)),
        baca.pitch("E3"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.scp_spanner(
            "T -> P -> T",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.mgroups(_, [2, 1]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("va", 7),
        baca.pitches("D4 C#4"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "pp >o niente",
        ),
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E2"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.scp_spanner(
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc1", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<A4 B4 C5>"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("vc1", (4, 5)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E2"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.scp_spanner(
            "T -> P",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc1", (6, 7)),
        baca.tuplet_bracket_down(),
        baca.pitch("E2"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
        ),
        baca.scp_spanner(
            "T -> P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.mgroups(_, [1, 2]),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Dqf3"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("vc2", (4, 6)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Dqf3"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 7),
        baca.pitches("D3 C#3"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "pp >o niente",
        ),
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E1"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.scp_spanner(
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb1", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<A4 B4 C5>",
            do_not_transpose=True,
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("cb1", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("cb1", (6, 7)),
        baca.tuplet_bracket_down(),
        baca.pitch("E1"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
        ),
        baca.scp_spanner(
            "T -> P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.mgroups(_, [1, 2]),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("cb2", 2),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            do_not_transpose=True,
        ),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("cb2", (5, 6)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E1"),
        baca.flat_glissando(),
        baca.hairpin(
            "ff >o",
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "P3 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", 7),
        baca.pitches("D2 C#2"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
        baca.hairpin(
            "pp >o niente",
        ),
        baca.scp_spanner(
            "T2 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 1),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 7)),
        baca.dls_staff_padding(4),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 2),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 8),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
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
