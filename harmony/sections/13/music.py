import abjad
import baca

from harmony import library

#########################################################################################
######################################### 13 [M] ########################################
#########################################################################################

stage_markup = (
    ("[M.1]", 1),
    ("[M.2]", 3),
    ("[<J.6]", 4, "#darkgreen"),
    ("[<L.4]", 5, "#darkgreen"),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments,
    short_instrument_names=library.short_instrument_names,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (5, 4),
        (1, 4),
        (6, 4),
        (6, 4),
        (3, 4),
        (1, 4),
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
    (1 - 1, "144"),
    (1 - 1, "3:2(4)=4"),
    (4 - 1, "48"),
    (4 - 1, "2.=4"),
    (5 - 1, "96"),
    (5 - 1, "8=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

rests = score["Rests"]
for index, string in (
    (2 - 1, "fermata"),
    (6 - 1, "short"),
):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[2 - 1],
    r"\harmony-text-twelve",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)

wrappers = baca.markup_function(
    skips[6 - 1],
    r"\harmony-text-thirteen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        ["-", 2, 2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4),
        counts=[9],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4, 8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def PERC1(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        divisions=[20, 8],
        counts=[0, 3],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def PERC2(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        divisions=[20, 8],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [20, "-", 1, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 4, 8, -4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3, 4),
        [-12, 2, -10, 2, -2, 2, -2, "-", 1, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VA(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 12, 4],
        counts=[0, 7, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(4, 5))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VC1(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [7, -1, 12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def CB1(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 12, 4],
        counts=[0, 6, 0],
        rest_from=1,
        suffix_talea=[-1],
        suffix_counts=[1, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [7, -1, 12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", 2],
        unbeam=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", 1),
        # TODO: promote into music = library.make_sixteenths():
        baca.repeat_tie(
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.pitch("B4"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("bfl", 3),
        baca.pitch("B4"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitches(
            "A3",
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_a(), -9),
            selector=lambda _: baca.select.leaves(_, grace=True),
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
        ("bfl", 5),
        baca.pitch("Dtqf5"),
        baca.markup(
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.breathe(
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.hairpin(
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.text_spanner(
            "T -> A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.clparts(_, [2]),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", (1, 5)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(
            -2,
            selector=lambda _: baca.select.runs(_)[:1],
        ),
        baca.staff_position(
            0,
            selector=lambda _: baca.select.runs(_)[1:],
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.rest(_, 1),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
    )
    accumulator(
        ("perc1", 3),
        baca.staff_position(0),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("perc1", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 5),
        library.bass_drum_staff_position(),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
        ),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 5)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(
            -2,
            selector=lambda _: baca.select.runs(_)[:1],
        ),
        baca.staff_position(
            0,
            selector=lambda _: baca.select.runs(_)[1:],
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.rest(_, 1),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
    )
    accumulator(
        ("perc2", 3),
        baca.staff_position(0),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.rest(_, -1),
        ),
    )
    accumulator(
        ("perc2", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            baca.dynamic(
                "p-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
                selector=lambda _: baca.select.phead(_, 0),
            ),
            baca.markup(
                r"\baca-bd-fingertips-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
            ),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.new(
            library.bass_drum_staff_position(),
            baca.flat_glissando(),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.new(
            library.brake_drum_staff_position(),
            baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
            baca.markup(
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 0.5"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            ),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        ("perc2", 5),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc2", (4, 5)),
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:]),
        ),
    )


def percs(cache):
    accumulator(
        (["perc1", "perc2"], 1),
        baca.new(
            baca.dots_extra_offset((1, 0)),
            baca.dots_x_extent_false(),
            baca.rest_x_extent_zero(selector=lambda _: abjad.select.rest(_, 0)),
            map=lambda x: [
                _
                for _ in abjad.select.rests(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ],
        ),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<B2 C3 Db3>"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (3, 4)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitches(
            "Bb5 A5 G#5",
            selector=lambda _: baca.select.plts(_)[:-1],
        ),
        baca.flageolet(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_)[:-1],
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.new(
            baca.pitch("E4"),
            baca.dynamic("f-ancora"),
            baca.snap_pizzicato(),
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("hp", (3, 4)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:8]),
        ),
    )
    accumulator(
        ("hp", 5),
        baca.pitch("E4"),
        baca.snap_pizzicato(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("hp", (4, 5)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[6:]),
        ),
    )
    accumulator(
        ("hp", (1, 5)),
        baca.dls_staff_padding(4),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.repeat_tie(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.hairpin(
            "mp >o niente",
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.leaves(_, grace=False)[2:],
        ),
    )
    accumulator(
        ("va", 3),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("va", (1, 3)),
        baca.new(
            baca.pitch("Bb3"),
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitch("Db3"),
            selector=lambda _: baca.select.plts(_, grace=False)[1:],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitches(
                library.appoggiato_pitches_d_flat_3(),
            ),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
    )
    accumulator(
        ("va", (4, 5)),
        baca.pitch("D3"),
        baca.hairpin(
            "(mp) >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.repeat_tie(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.hairpin(
            "mp >o niente",
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.leaves(_, grace=False)[2:],
        ),
    )
    accumulator(
        ("vc1", 3),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", (1, 3)),
        baca.new(
            baca.pitch("Aqf3"),
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitch("C3"),
            selector=lambda _: baca.select.plts(_, grace=False)[1:],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitches(
                library.appoggiato_pitches_c_3(),
            ),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
    )
    accumulator(
        ("vc1", 4),
        baca.new(
            baca.pitch("D2"),
            baca.hairpin(
                "(mp) >o niente",
            ),
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.scp_spanner(
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc1", 5),
        baca.pitch(
            "Aqf3",
            selector=lambda _: baca.select.lleak(baca.select.leaves(_)),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.repeat_tie(
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.new(
            baca.pitch("F3"),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.pitch(
            "C3",
            selector=lambda _: baca.select.plts(_)[1:],
        ),
        baca.hairpin(
            "mp >o niente",
            left_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
        ),
        baca.dynamic(
            "mp",
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.plts(_)[1:]),
        ),
    )
    accumulator(
        ("vc2", 3),
        baca.dynamic(
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("vc2", 4),
        baca.repeat_tie(
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.hairpin(
            "(mp) >o niente",
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )
    accumulator(
        ("vc2", (3, 5)),
        baca.pitch(
            "C3",
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.pitch(
            "F3",
            selector=lambda _: baca.select.plts(_)[1:],
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.repeat_tie(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.hairpin(
            "mp >o niente",
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:2],
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.leaves(_, grace=False)[2:],
        ),
    )
    accumulator(
        ("cb1", 3),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\harmony-half-harm-pressure-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", (1, 3)),
        baca.new(
            baca.pitch("Dtqf3"),
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitch("B2"),
            selector=lambda _: baca.select.plts(_, grace=False)[1:],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitches(
                library.appoggiato_pitches_b_2(),
            ),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.new(
            baca.pitch("D2"),
            baca.hairpin(
                "(mp) >o niente",
            ),
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", 5),
        baca.pitch(
            "Dtqf2",
            selector=lambda _: baca.select.lleak(baca.select.leaves(_)),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.repeat_tie(
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.new(
            baca.pitch("Eb2"),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.pitch(
            "B2",
            selector=lambda _: baca.select.plts(_)[1:],
        ),
        baca.hairpin(
            "mp >o niente",
            left_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
        ),
        baca.dynamic(
            "mp",
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.plts(_)[1:]),
        ),
    )
    accumulator(
        ("cb2", 3),
        baca.dynamic(
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("cb2", 4),
        baca.repeat_tie(
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.hairpin(
            "(mp) >o niente",
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )
    accumulator(
        ("cb2", (3, 5)),
        baca.pitch(
            "B2",
            selector=lambda _: baca.select.plts(_)[:1],
        ),
        baca.pitch(
            "Eb2",
            selector=lambda _: baca.select.plts(_)[1:],
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.plts(_)[:1]),
        ),
    )


def composites(cache):
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 4),
        baca.new(
            baca.accent(selector=lambda _: baca.select.phead(_, 0)),
            baca.stem_tremolo(),
            baca.dynamic("p"),
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 5),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], (4, 5)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-4:]),
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
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
        fermata_measure_empty_overrides=[2, 6],
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
