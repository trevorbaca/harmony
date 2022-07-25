import abjad
import baca

from harmony import library

#########################################################################################
######################################### 10 [J] ########################################
#########################################################################################

stage_markup = (
    ("[J.1]", 1),
    ("[>K.1]", 2, "#darkgreen"),
    ("[<I.1]", 3, "#darkgreen"),
    ("[J.2-5]", 4),
    ("[<I.1]", 8, "#darkgreen"),
    ("[J.6]", 10),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (6, 4),
        (4, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
        (6, 4),
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
    (1 - 1, "48"),
    (1 - 1, "2.=4"),
    (2 - 1, "72"),
    (2 - 1, "3:2(4)=4"),
    (3 - 1, "144"),
    (3 - 1, "8=4"),
    (4 - 1, "48"),
    (4 - 1, "2.=4"),
    (8 - 1, "144"),
    (8 - 1, "3:2(8)=4"),
    (10 - 1, "48"),
    (10 - 1, "2.=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

baca.close_volta(skips[2 - 1], accumulator.first_measure_number)

rests = score["Rests"]
for index, string in ((9 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[9 - 1],
    r"\harmony-text-eight",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, 4, -2, -4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        ["-", 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(10),
        counts=[9, 0],
        divisions=[12, 12],
        prefix_talea=[-1],
        prefix_counts=[1, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11, 13),
        [12],
        written_dotted_wholes=([0], 2),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(14),
        [12, 8, 3, 1],
        written_dotted_wholes=([0], 2),
        invisible=[1, 2, 3],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(15),
        counts=[9],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        ["-", 2, -2, 2, -2],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(10, 14))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(15), head=voice.name)
    voice.extend(music)


def PERC2(voice):
    music = baca.make_notes(accumulator.get(1, 7))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 9))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(10, 15))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2, 8))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(10, 12))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(13, 15), head=voice.name)
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4, 7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [12, 1, 1, 1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(11, 14),
        [11 * (1,)],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(15))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4, 7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 11),
        [13, 1, 1, 1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12, 14),
        [10 * (1,)],
        denominator=(1, 4),
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(15))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4, 7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 12),
        [14, 1, 1, 1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(13, 14),
        [9 * (1,)],
        denominator=(1, 4),
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(15))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(2, 8))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(10, 15))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4, 7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 12),
        [16, 1, 1, 1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(13, 14),
        [7 * (1,)],
        denominator=(1, 4),
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(15))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    accumulator(
        ("bfl", 1),
        baca.pitch("Eb3"),
        baca.dynamic("mf"),
    )
    accumulator(
        ("bfl", (1, 2)),
        baca.new(
            baca.covered_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            selector=lambda _: baca.select.leaves(_)[2:8],
        ),
    )
    accumulator(
        ("bfl", (2, 3)),
        baca.pitch("E3"),
        baca.new(
            baca.covered_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            selector=lambda _: baca.select.leaves(_)[4:9],
        ),
    )
    accumulator(
        ("bfl", 7),
        baca.pitch("F3"),
        baca.dynamic("mf"),
    )
    accumulator(
        ("bfl", 8),
        baca.pitch("E3"),
    )
    accumulator(
        ("bfl", (7, 8)),
        baca.new(
            baca.covered_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            selector=lambda _: baca.select.leaves(_)[1:8],
        ),
    )
    accumulator(
        ("bfl", 10),
        baca.pitch(
            "G3",
            lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_g(),
            lambda _: baca.select.leaves(_, grace=True),
        ),
        baca.hairpin(
            "o< mp >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: abjad.select.partition_by_counts(
                baca.pleaves(_, grace=False), [2, 1]
            ),
        ),
        baca.text_spanner(
            r"\harmony-g-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("bfl", (11, 13)),
        baca.hairpin(
            "o< mf >o",
            forbid_al_niente_to_bar_line=True,
            measures=11,
            pieces=lambda _: baca.select.lparts(_, [1, 1]),
        ),
        baca.hairpin(
            "o< f >o",
            forbid_al_niente_to_bar_line=True,
            measures=12,
            pieces=lambda _: baca.select.lparts(_, [1, 1]),
        ),
        baca.hairpin(
            "o< mf >o",
            forbid_al_niente_to_bar_line=True,
            measures=13,
            pieces=lambda _: baca.select.lparts(_, [1, 1]),
        ),
    )
    accumulator(
        ("bfl", (11, 12)),
        baca.pitch(
            "G4",
            lambda _: baca.select.leaves(_, grace=False),
        ),
    )
    accumulator(
        ("bfl", 14),
        baca.hairpin(
            "o< mp >o niente",
            measures=14,
            pieces=lambda _: baca.select.lparts(_, [1, 3]),
        ),
    )
    accumulator(
        ("bfl", (13, 14)),
        baca.pitch(
            "G#4",
            lambda _: baca.select.leaves(_, grace=False),
        ),
    )
    accumulator(
        ("bfl", 15),
        baca.pitches(
            "A3",
            lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            lambda _: baca.select.leaves(_, grace=True),
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.pleaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("bfl", (1, 15)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 2),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dynamic_text_x_offset(
            -0.75,
            lambda _: baca.select.pleaf(_, 1),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 3),
        baca.accent(
            lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 7),
        baca.accent(
            lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            lambda _: baca.select.pleaves(_),
        ),
    )
    accumulator(
        ("perc1", 8),
        baca.accent(
            lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("perc1", (3, 8)),
        library.slate_staff_position(),
    )
    accumulator(
        ("perc1", (7, 8)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[2:]),
        ),
    )
    accumulator(
        ("perc1", (10, 14)),
        library.triangle_staff_position(),
        baca.flat_glissando(),
        baca.stem_tremolo(
            lambda _: abjad.select.get(baca.select.pheads(_), [0, -1]),
        ),
        baca.dynamic("p"),
        baca.hairpin(
            "(p) >o niente",
            measures=14,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", (1, 15)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 7)),
        library.bass_drum_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(
            lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("perc2", (10, 15)),
        baca.new(
            library.bass_drum_staff_position(allow_hidden=True),
            baca.flat_glissando(
                right_broken=True,
            ),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.stem_tremolo(
            lambda _: baca.select.phead(_, 0),
        ),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
    )


def hp(m):
    accumulator(
        ("hp", (2, 12)),
        baca.clef("bass"),
        baca.new(
            baca.pitch("F#3"),
            baca.flat_glissando(
                hide_middle_stems=True,
            ),
            measures=(2, 3),
        ),
        baca.new(
            baca.pitch("<F#3 Gb3>"),
            baca.flat_glissando(
                hide_middle_stems=True,
            ),
            measures=(4, 11),
        ),
        baca.new(
            baca.pitch("F#3"),
            measures=12,
        ),
        baca.dynamic("mf"),
        baca.text_spanner(
            "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
            " -> 0 pul. / beat",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            measures=(4, 7),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.text_spanner(
            "0 pul. / beat -> 8 pul. / beat -> 0 pul. / beat",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            measures=(10, 11),
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(mf) >o niente",
            measures=12,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\harmony-rh-bow-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.markup(
            r"\harmony-rh-bow-plus-lh-bow-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            measures=4,
        ),
        baca.markup(
            r"\harmony-rh-bow-only-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            measures=12,
        ),
    )
    accumulator(
        ("hp", (1, 13)),
        baca.dls_staff_padding(4),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.pitch("C4"),
    )
    accumulator(
        ("va", 2),
        baca.clef("treble"),
        baca.pitch("A5"),
        baca.trill_spanner(),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("va", [3, 8]),
        baca.new(
            baca.clef("alto"),
            match=[0],
        ),
        baca.pitch("C#4"),
        baca.flat_glissando(),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("va", (10, 15)),
        baca.untie(
            lambda _: baca.select.pleaves(_),
        ),
        baca.tuplet_bracket_up(),
        baca.repeat_tie(
            lambda _: abjad.select.leaf(_, 1),
        ),
        baca.pitches(
            "F#4 D3",
            lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
        ),
        baca.staff_positions(
            [
                0,
                2,
                -1,
                1,
                -2,
                1,
                0,
                2,
                -1,
                1,
                -2,
                1,
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
            ],
            lambda _: baca.select.plts(_)[1:-1],
        ),
        baca.glissando(),
        baca.hairpin(
            "o< ff >o niente",
            pieces=lambda _: baca.mgroups(_, [3, 4]),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.mgroups(_, [3, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.pitch("B4"),
    )
    accumulator(
        ("vc1", 2),
        baca.pitch("Gqs6"),
        baca.trill_spanner(),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc1", [3, 8]),
        baca.pitch("B4"),
    )
    accumulator(
        ("vc1", (10, 15)),
        baca.untie(
            lambda _: baca.select.pleaves(_),
        ),
        baca.repeat_tie(
            lambda _: abjad.select.leaf(_, 1),
        ),
        baca.clef("bass"),
        baca.pitches(
            "F#3 D2",
            lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
        ),
        baca.staff_positions(
            [
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
            ],
            lambda _: baca.select.plts(_)[1:-1],
        ),
        baca.glissando(),
        baca.hairpin(
            "o< ff >o niente",
            pieces=lambda _: baca.mgroups(_, [3, 4]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.mgroups(_, [3, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.pitch("Dqs4"),
    )
    accumulator(
        ("vc2", 2),
        baca.pitch("F#5"),
        baca.trill_spanner(),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc2", [3, 8]),
        baca.pitch("Dqs4"),
        baca.markup(
            r"\baca-eleven-a",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
        ),
    )
    accumulator(
        ("vc2", (10, 15)),
        baca.untie(
            lambda _: baca.select.pleaves(_),
        ),
        baca.repeat_tie(
            lambda _: abjad.select.leaf(_, 1),
        ),
        baca.clef("bass"),
        baca.pitches(
            "F#3 D2",
            lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
        ),
        baca.staff_positions(
            [
                -1,
                1,
                -2,
                0,
                -3,
                0,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -2,
                0,
                -3,
                -1,
                -4,
                -1,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -3,
                -1,
                -4,
                -2,
                -5,
                -2,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
                -4,
                -2,
                -5,
                -3,
                -6,
                -3,
            ],
            lambda _: baca.select.plts(_)[1:-1],
        ),
        baca.glissando(),
        baca.hairpin(
            "o< ff >o niente",
            pieces=lambda _: baca.mgroups(_, [3, 4]),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.mgroups(_, [3, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.pitch("F3"),
    )
    accumulator(
        ("cb1", (2, 12)),
        baca.pitch("F#1"),
        baca.flat_glissando(),
        baca.dynamic("pp"),
        baca.hairpin(
            "(pp) >o niente o< mf >o niente",
            measures=(12, 15),
            pieces=lambda _: baca.mgroups(_, [1, 1, 3]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 =| (T1) -> T2 -> T1 -> T3 -> T1 =| (T1) -> P2 -> T3 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.mgroups(_, [2, 1, 1, 1, 1, 2, 1, 1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb1", (13, 15)),
        baca.interpolate_pitches("F#2", "D2"),
        baca.glissando(
            hide_middle_note_heads=True,
        ),
        baca.scp_spanner(
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.mgroups(_, [1, 2]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 2),
        baca.pitch(
            "Dqf6",
            do_not_transpose=True,
        ),
        baca.trill_spanner(),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb2", [3, 8]),
        baca.new(
            baca.clef("bass"),
            match=[0],
        ),
        baca.pitch("A1"),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb2", (10, 15)),
        baca.repeat_tie(
            lambda _: abjad.select.leaf(_, 1),
        ),
        baca.tuplet_bracket_up(),
        baca.pitches(
            "F#3 D2",
            lambda _: abjad.select.get(baca.select.plts(_), [0, -1]),
        ),
        baca.staff_positions(
            [
                5,
                6,
                3,
                5,
                2,
                5,
                3,
                5,
                2,
                4,
                1,
                4,
                3,
                5,
                2,
                4,
                1,
                4,
                2,
                4,
                1,
                3,
                0,
                3,
                2,
                4,
                1,
                3,
                0,
                3,
                1,
                3,
                0,
                2,
                -1,
                2,
                1,
                3,
                0,
                2,
                -1,
                2,
            ],
            lambda _: baca.select.plts(_)[1:-1],
        ),
        baca.glissando(),
        baca.hairpin(
            "o< ff >o niente",
            pieces=lambda _: baca.mgroups(_, [3, 4]),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T4 -> P1 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.mgroups(_, [3, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def composites(cache):
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 1),
        baca.new(
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
                left_broken=True,
            ),
            baca.bow_speed_spanner(
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            ),
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
            match=[0, 1, 2],
        ),
        baca.new(
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 10.5"),
                left_broken=True,
            ),
            baca.bow_speed_spanner(
                "XFB =|",
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            selector=lambda _: baca.rleak(abjad.select.leaves(_)[:2]),
            match=[3],
        ),
        baca.hairpin(
            "mp >o niente",
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb2"], 2),
        baca.note_head_style_harmonic(),
        baca.hairpin(
            "o<| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb2"], [3, 8]),
        baca.stop_on_string(
            lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
        ),
        baca.hairpin(
            "o<| ff",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 15)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb2"], (10, 15)),
        baca.tuplet_bracket_staff_padding(2),
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
        fermata_measure_empty_overrides=[9],
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
