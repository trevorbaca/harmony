import abjad
import baca

from harmony import library

#########################################################################################
######################################### 18 [R] ########################################
#########################################################################################

stage_markup = (
    ("[R.1-2]", 1),
    ("[>S.1]", 3, "#darkgreen"),
    ("[<P.7-8]", 4, "#darkgreen"),
    ("[<Q.1]", 6, "#darkgreen"),
    ("[R.3]", 8),
    ("[R.4-6]", 9),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (6, 4),
        (1, 4),
        (4, 4),
        (3, 4),
        (4, 4),
        (3, 4),
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
    (1 - 1, "3:2(4)=4"),
    (3 - 1, "96"),
    (3 - 1, "4:3(4)=4"),
    (6 - 1, "48"),
    (6 - 1, "2=4"),
    (8 - 1, "72"),
    (8 - 1, "3:2(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in ((7 - 1, "fermata"),):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[7 - 1],
    r"\harmony-text-seventeen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)


def BFL(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(3),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -1, 8, -8, 3, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [4, 4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 11))
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, "-"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [21, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(6))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(10),
        [(1, -1, -8)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, "-"],
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, "-"],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [21, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(6))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9, 10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 4, 4],
        fuse=True,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [21, "-"],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(6))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [3, 3, "-"],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [3, 3, "-"],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, 3, "-"],
        untie=True,
    )
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(6))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(10),
        [10 * (1,)],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(6),
        3,
        rest_plts=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9, 11),
        [3, -7],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        library.damp_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(6),
        2,
        rest_plts=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(10),
        [10 * (1,)],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, "+", -1],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(6),
        1,
        rest_plts=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [1, 4, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 3, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [1, 3, 2, "-"],
    )
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        ["-", 2, 2, 2, 2],
        fuse=True,
        extra_counts=[4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        library.glissando_counts_curtailed(),
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(6),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 4, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(10),
        [10 * (1,)],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2],
        written_quarters=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    accumulator(
        ("bfl", 3),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -4),
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
                abjad.select.leaves(_),
                (3, 4),
            ),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("D4"),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", (5, 6)),
        baca.pitch("D4"),
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
        ),
    )
    accumulator(
        ("bfl", (1, 6)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.staff_lines(1),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.dynamic("mp"),
        baca.hairpin(
            "o< mf",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
        ),
        baca.markup(
            r"\baca-bd-struck-then-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 2),
        library.bass_drum_staff_position(),
        baca.dynamic("mp"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.hairpin(
            "o< mf",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
        ),
    )
    accumulator(
        ("perc1", (1, 2)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc1", 3),
        baca.clef("percussion"),
        baca.staff_lines(3),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 2),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 2, grace=False),
        ),
    )
    accumulator(
        ("perc1", (4, 5)),
        baca.staff_lines(1),
        library.brake_drum_staff_position(),
        baca.flat_glissando(
            do_not_hide_middle_note_heads=True,
        ),
        baca.dynamic("p"),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 6),
        baca.clef("treble"),
        baca.staff_lines(5),
        baca.pitch("E4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f"),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        ),
    )
    accumulator(
        ("perc1", 8),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.hairpin(
            "o< mf",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
        ),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 9),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.hairpin(
            "o< mp",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
        ),
    )
    accumulator(
        ("perc1", 10),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.hairpin(
            "o< mp",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
        ),
    )
    accumulator(
        ("perc1", 11),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.hairpin(
            "o< mp",
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
        ),
    )
    accumulator(
        ("perc1", (8, 11)),
        baca.tuplet_bracket_up(),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        library.brake_drum_staff_position(),
        baca.damp(),
        baca.dynamic("p"),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", 2),
        library.brake_drum_staff_position(),
        baca.chunk(
            baca.dynamic("p"),
            baca.damp(),
        ),
        baca.new(
            baca.laissez_vibrer(
                selector=lambda _: baca.select.ptails(_),
            ),
            baca.dynamic("f"),
            selector=lambda _: baca.select.phead(_, 1),
        ),
    )
    accumulator(
        ("perc2", (1, 2)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", 3),
        baca.staff_lines(3),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 2),
        ),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 2, grace=False),
        ),
    )
    accumulator(
        ("perc2", (4, 5)),
        baca.staff_lines(1),
        library.tam_tam_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("pp"),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", 6),
        library.tam_tam_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp"),
    )
    accumulator(
        ("perc2", 8),
        library.brake_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f"),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", (4, 10)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", 11),
        baca.staff_lines(3),
        baca.tuplet_bracket_up(),
        library.purpleheart_staff_positions([0]),
        baca.dynamic("ff"),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
    )


def percs(cache):
    accumulator(
        (["perc1", "perc2"], 3),
        baca.new(
            baca.dots_extra_offset((2, 0)),
            baca.dots_x_extent_false(),
            baca.rest_x_extent_zero(selector=lambda _: abjad.select.rest(_, 0)),
            map=lambda _: [
                x
                for x in abjad.select.rests(_)
                if abjad.get.duration(x) >= abjad.Duration((1, 2))
            ],
        ),
    )


def hp(m):
    accumulator(
        ("hp", (4, 5)),
        baca.clef("bass"),
        baca.pitch("F1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("p"),
        baca.dls_staff_padding(7),
    )
    accumulator(
        ("hp", 6),
        baca.pitch("Db1"),
        baca.ottava_bassa(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.ottava_bracket_staff_padding(8),
        baca.dynamic("f"),
        baca.dls_staff_padding(5),
    )
    accumulator(
        ("hp", [(1, 2), 8]),
        baca.clef("treble"),
        baca.pitch("G4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mf"),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        ),
    )
    accumulator(
        ("hp", 9),
        baca.clef("percussion"),
        baca.staff_lines(1),
    )
    accumulator(
        ("hp", [9, 10, 11]),
        library.whisk_staff_position(),
        baca.flat_glissando(),
        baca.hairpin(
            'o< "mf" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            match=0,
        ),
    )
    accumulator(
        ("hp", (9, 11)),
        baca.dls_staff_padding(6),
    )


def va(m):
    accumulator(
        ("va", (1, 2)),
        baca.pitch("C3"),
        baca.rest_extra_offset(
            (-1.5, 0),
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("va", 3),
        baca.clef("treble"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G#5 A5 Bb5>"),
    )
    accumulator(
        ("va", (4, 5)),
        baca.pitches("D4 Eb4"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
        ),
        baca.dynamic("ppp"),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
    )
    accumulator(
        ("va", 6),
        baca.pitch("D4"),
        baca.dynamic("pp"),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("va", 8),
        baca.clef("alto"),
        baca.pitch("C3"),
    )
    accumulator(
        ("va", (9, 11)),
        baca.clef("treble"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("G4"),
        baca.flat_glissando(
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 2)),
        baca.clef("treble"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("D5"),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc1", 3),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G#5 A5 Bb5>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc1", (4, 5)),
        baca.clef("bass"),
        baca.pitch("D#3"),
        baca.dynamic("pp"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("vc1", 6),
        baca.pitch("E3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc1", 8),
        baca.clef("treble"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("D5"),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc1", (9, 11)),
        baca.clef("bass"),
        baca.pitch("D3"),
        baca.hairpin(
            "mp -- niente",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        baca.clef("treble"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("Btqf4"),
        baca.markup(r"\baca-seven-c"),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc2", 3),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<A5 Bb5 Cb6>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc2", (4, 5)),
        baca.clef("bass"),
        baca.pitch("C#3"),
        baca.dynamic("pp"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("vc2", 6),
        baca.pitch("D3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc2", 8),
        baca.clef("treble"),
        baca.markup(
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("vc2", (9, 11)),
        baca.flat_glissando(
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )
    accumulator(
        ("vc2", [8, (9, 11)]),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("Btqf4"),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.clef("treble"),
        baca.pitch("E5", do_not_transpose=True),
        # NOTE: currently glissando must lexically precede trill spanner
        baca.new(
            baca.flat_glissando(),
            map=lambda _: baca.select.runs(_),
        ),
        baca.trill_spanner(
            alteration="Fqs5",
            map=lambda _: baca.select.runs(_),
        ),
        baca.markup(r"\baca-eleven-c"),
    )
    accumulator(
        ("cb1", 2),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<B5 C6 Db6>", do_not_transpose=True),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb1", 3),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<B5 C6 Db6>",
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb1", (4, 5)),
        baca.clef("bass"),
        baca.pitches("E3 D#3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
        ),
        baca.dynamic("ppp"),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
    )
    accumulator(
        ("cb1", 6),
        baca.pitch("E3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", 8),
        baca.clef("treble"),
        baca.pitch("E5", do_not_transpose=True),
        # NOTE: currently glissando must lexically precede trill spanner
        baca.new(
            baca.flat_glissando(),
            map=lambda _: baca.select.runs(_),
        ),
        baca.trill_spanner(
            alteration="Fqs5",
            map=lambda _: baca.select.runs(_),
        ),
        baca.markup(r"\baca-eleven-c"),
    )
    accumulator(
        ("cb1", 9),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.scp_spanner(
            "O -> P4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", 10),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.scp_spanner(
            "O -> P4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", 11),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.scp_spanner(
            "O -> P4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", (9, 11)),
        baca.pitch("E5", do_not_transpose=True),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("G3"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb2", 2),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| mp |>o niente o<| mp |>o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.markup(r"\baca-quasi-bisb-markup"),
    )
    accumulator(
        ("cb2", (2, 3)),
        baca.clef("treble"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<A#5 B5 C6>", do_not_transpose=True),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", (4, 5)),
        baca.clef("bass"),
        baca.pitches("C#3 D3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
        ),
        baca.dynamic("ppp"),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
    )
    accumulator(
        ("cb2", 6),
        baca.pitch("D3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb2", 8),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("G3"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb2", (9, 11)),
        baca.clef("treble"),
        baca.pitch("E5", do_not_transpose=True),
        # NOTE: currently glissando must lexically precede trill spanner
        baca.flat_glissando(
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
        baca.trill_spanner(
            # large right padding because open-volta follows in next section
            abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="Fqs5",
        ),
        baca.markup(r"\baca-eleven-c"),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 1),
        baca.new(
            # excluded cb1 because of current gliss / pitch trill order contention
            baca.flat_glissando(),
            match=[0, 1, 2, 4],
        ),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.new(
            baca.trill_spanner(),
            match=[1, 2],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 2),
        baca.new(
            # excluded cb1 because of gliss / pitch trill order contention
            baca.flat_glissando(),
            match=[0, 1, 2],
        ),
        baca.hairpin(
            "o< f >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.new(
            baca.trill_spanner(),
            match=[1, 2],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 3),
        # TODO: promote to music = library.make_sixteenths()
        baca.invisible_music(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| mp |> pp pp <| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dynamic_text_x_offset(
            -3,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.dynamic_text_x_offset(
            -0.25,
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 8),
        baca.new(
            baca.flat_glissando(),
            # excluded cb1 because of current gliss / trill order contention
            match=[0, 1, 2, 4],
        ),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.new(
            baca.trill_spanner(),
            # excluded cb1 because of current gliss / trill order contention
            match=[1, 2],
        ),
    )
    # va, vc1, vc2, cb1
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 3),
        baca.markup(r"\baca-quasi-bisb-markup"),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 6),
        baca.triple_staccato(lambda _: baca.select.pheads(_)),
        baca.hairpin(
            "p < f",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    # vc1, vc2, cb2
    accumulator(
        (["va", "vc2", "cb2"], (9, 11)),
        # TODO: move invisible command into rhythm-accumulator
        baca.invisible_music(
            selector=lambda _: abjad.select.get(baca.select.leaves(_), ([1], 2)),
        ),
        baca.hairpin(
            "niente o< p >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.dynamic(
            "niente",
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
        baca.new(
            baca.trill_spanner(
                # large right padding because open-volta follows in next section
                abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
                abjad.Tweak(r"- \tweak staff-padding 3"),
            ),
            # excluded cb2 because of gliss / trill order contention
            match=[0, 1],
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 11)),
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
    percs(cache)
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
        fermata_measure_empty_overrides=[7],
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
