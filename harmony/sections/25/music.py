import abjad
import baca

from harmony import library

#########################################################################################
######################################### 25 [Y] ########################################
#########################################################################################

stage_markup = (
    ("[>AA.1]", 1, "#darkgreen"),
    ("[Y.1]", 2),
    ("[<X.8]", 3, "#darkgreen"),
    ("[Y.2]", 5),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (7, 4),
        (6, 4),
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
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
    (1 - 1, "144"),
    (1 - 1, "3:2(8)=4"),
    (2 - 1, "57 3/5"),
    (2 - 1, "4:5(2)=4"),
    (3 - 1, "48"),
    (3 - 1, "5:6(4)=4"),
    (5 - 1, "57 3/5"),
    (5 - 1, "6:5(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (4 - 1, "fermata"),
    (11 - 1, "fermata"),
):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[4 - 1],
    r"\harmony-text-twenty-two",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[11 - 1],
    r"\harmony-text-twenty-three",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)


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
    music = library.make_sixteenths(
        accumulator.get(3),
        [-2, 2, 2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(5, 10),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def PERC1(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [1, -23, -1, 1, -22],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(10),
        [-1, 1, -2, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, -20, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-10, "+"],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(3),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [2, -22, -1, 2, -21],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(10),
        [-1, 1, 1, -1, -8, -12, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-24, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        ["-", 3, -3, 3, -1],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [-24, -1, 3, -20],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def VA(voice):
    music = baca.make_notes(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [6, 3, 11],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5, 10),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def VC1(voice):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [4, 2, 7, 7],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5, 10),
        3,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def VC2(voice):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [9, 11],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5, 10),
        2,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def CB1(voice):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [4, 9, 7],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5, 10),
        1,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def CB2(voice):
    music = baca.make_skeleton(
        r"r1 r8 \times 5/4 { c2 }",
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [9, 11],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5, 10),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(11))
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", 2),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -7),
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
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", 3),
        baca.pitch("F#5"),
        baca.hairpin(
            "niente o< p >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.text_spanner(
            "A -> T -> A",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    accumulator(
        ("bfl", (5, 10)),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -8),
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
        ("bfl", (1, 10)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 2),
        library.slate_staff_position(),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 3),
        library.slate_staff_position(),
    )
    accumulator(
        ("perc1", (2, 3)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.leaves(_)[1:8],
        ),
    )
    accumulator(
        ("perc1", (5, 9)),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 10),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc1", (1, 10)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        baca.staff_position(2),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
    )
    accumulator(
        ("perc2", 2),
        baca.staff_lines(1),
    )
    accumulator(
        ("perc2", (2, 3)),
        library.tam_tam_staff_position(),
        baca.flat_glissando(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("p"),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", (5, 9)),
        library.slate_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "f >o niente",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", 10),
        library.slate_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[:2],
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_)[:2],
        ),
        baca.hairpin(
            "f >o niente",
            map=lambda _: baca.select.rleak_runs(_, None, 1),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 2),
        ),
    )
    accumulator(
        ("perc2", (2, 10)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.clef("treble"),
        baca.staff_lines(5),
        baca.pitch("Ab4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp"),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-pince-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("hp", 2),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            baca.dynamic("p"),
            baca.dls_staff_padding(6),
            baca.markup(
                r"\baca-whisk-markup",
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (2, 3)),
        library.whisk_staff_position(),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.leaves(_)[1:8],
        ),
    )
    accumulator(
        ("hp", (5, 10)),
        baca.clef("bass"),
        baca.staff_lines(5),
        baca.pitch("G1"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(4 + 3),
        baca.markup(
            r"\baca-lv-into-fermata-markup",
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )


def va(m):
    accumulator(
        ("va", (1, 2)),
        baca.pitch("Ab4"),
        baca.flat_glissando(),
        baca.dynamic("mp"),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("va", 3),
        baca.pitch("F#3"),
        baca.scp_spanner(
            "P2 -> P1 -> P3 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("va", (5, 10)),
        baca.chunk(
            baca.hairpin(
                "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
                " < ff-scratch -- niente",
                pieces=lambda _: abjad.select.partition_by_counts(
                    baca.plts(_),
                    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
                ),
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.untie(
                selector=lambda _: baca.select.leaves(_),
            ),
            baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
            baca.pitch(
                "<G4 Ab4 Bb4>",
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            baca.pitch(
                "<G4 Ab4 Bb4>",
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            baca.note_head_transparent(
                selector=lambda _: baca.select.leaves(_)[1:-1],
            ),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("vc1", (1, 2)),
        baca.clef("treble"),
        baca.pitch("<A4 B4 C5>"),
    )
    accumulator(
        ("vc1", 3),
        baca.clef("bass"),
        baca.pitch("F#2"),
        baca.scp_spanner(
            "P2 -> O -> P2 -> P1 -> P3",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc1", (5, 10)),
        baca.clef("treble"),
        baca.chunk(
            baca.hairpin(
                "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! >"
                " mf < ff-scratch -- niente",
                pieces=lambda _: abjad.select.partition_by_counts(
                    baca.plts(_),
                    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
                ),
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.untie(
                selector=lambda _: baca.select.leaves(_),
            ),
            baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
            baca.pitch(
                "<A4 B4 C5>",
                selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
            ),
            baca.note_head_transparent(
                selector=lambda _: baca.select.leaves(_)[1:-1],
            ),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("vc2", (1, 2)),
        baca.clef("treble"),
        baca.pitch("<G4 Ab4 Bb4>"),
    )
    accumulator(
        ("vc2", 3),
        baca.clef("bass"),
        baca.pitch("F#2"),
        baca.scp_spanner(
            "O -> P2 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc2", (5, 10)),
        baca.clef("treble"),
        baca.chunk(
            baca.hairpin(
                "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
                " < ff-scratch -- niente",
                pieces=lambda _: abjad.select.partition_by_counts(
                    baca.plts(_),
                    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
                ),
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.untie(
                selector=lambda _: baca.select.leaves(_),
            ),
            baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
            baca.pitch(
                "<G4 Ab4 Bb4>",
                selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
            ),
            baca.pitch(
                "C5",
                selector=lambda _: baca.select.pleaves(_)[1:-1],
            ),
            baca.note_head_transparent(
                selector=lambda _: baca.select.leaves(_)[1:-1],
            ),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("cb1", (1, 2)),
        baca.clef("treble"),
        baca.pitch(
            "<A4 B4 C5>",
            do_not_transpose=True,
        ),
    )
    accumulator(
        ("cb1", 3),
        baca.clef("bass"),
        baca.pitch("F#1"),
        baca.scp_spanner(
            "P1 -> P2 -> O -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", (5, 10)),
        baca.clef("treble"),
        baca.chunk(
            baca.hairpin(
                "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
                " < ff-scratch -- niente",
                pieces=lambda _: abjad.select.partition_by_counts(
                    baca.plts(_),
                    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
                ),
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.untie(
                selector=lambda _: baca.select.leaves(_),
            ),
            baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
            baca.pitch(
                "<A4 B4 C5>",
                selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
                do_not_transpose=True,
            ),
            baca.note_head_transparent(
                selector=lambda _: baca.select.leaves(_)[1:-1],
            ),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("cb2", (1, 2)),
        baca.clef("treble"),
        baca.pitch(
            "<G4 Ab4 Bb4>",
            do_not_transpose=True,
        ),
    )
    accumulator(
        ("cb2", 3),
        baca.clef("bass"),
        baca.pitch("F#1"),
        baca.scp_spanner(
            "P1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", (5, 10)),
        baca.clef("treble"),
        baca.chunk(
            baca.hairpin(
                "pp -- ! < mp -- ! > p < mf -- ! > mp < f-scratch -- ! > mf"
                " < ff-scratch -- niente",
                pieces=lambda _: abjad.select.partition_by_counts(
                    baca.plts(_),
                    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
                ),
                selector=lambda _: baca.select.rleaves(_),
            ),
            baca.untie(
                selector=lambda _: baca.select.leaves(_),
            ),
            baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
            baca.pitch(
                "<G4 Ab4 Bb4>",
                selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
                do_not_transpose=True,
            ),
            baca.pitch(
                "C5",
                selector=lambda _: baca.select.pleaves(_)[1:-1],
                do_not_transpose=True,
            ),
            baca.note_head_transparent(
                selector=lambda _: baca.select.leaves(_)[1:-1],
            ),
        ),
    )


def composites(cache):
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], (1, 2)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("pp"),
        baca.markup(r"\baca-quasi-bisb-markup"),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 3),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
        baca.flat_glissando(),
        baca.dynamic("f"),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (5, 10)),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.markup(r"\baca-quasi-bisb-markup"),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
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
        fermata_measure_empty_overrides=[4, 11],
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
