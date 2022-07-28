import abjad
import baca

from harmony import library

#########################################################################################
######################################## 27 [AA] ########################################
#########################################################################################

stage_markup = (
    ("[AA.1]", 1),
    ("[<X.6]", 3, "#darkgreen"),
    ("[AA.2-3]", 4),
    ("[<Y.2]", 6, "#darkgreen"),
    ("[>BB.5]", 7, "#darkgreen"),
    ("[AA.4]", 9),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (7, 4),
        (1, 4),
        (5, 4),
        (7, 4),
        (6, 4),
        (6, 4),
        (2, 4),
        (1, 4),
        (7, 4),
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
    (1 - 1, "3:2(4)=4"),
    (3 - 1, "48"),
    (3 - 1, "2.=4"),
    (4 - 1, "144"),
    (4 - 1, "3:2(8)=4"),
    (6 - 1, "57 3/5"),
    (6 - 1, "4:5(2)=4"),
    (7 - 1, "48"),
    (7 - 1, "5:6(4)=4"),
    (9 - 1, "144"),
    (9 - 1, "3:2(8)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

baca.markup_function(
    skips[4 - 1],
    r"\harmony-repeat-three-markup",
    abjad.Tweak(r"- \tweak extra-offset #'(0 . 17)"),
    abjad.Tweak(r"- \tweak font-size 10"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
),

baca.markup_function(
    skips[4 - 1],
    r"\harmony-repeat-three-markup",
    abjad.Tweak(r"- \tweak extra-offset #'(0 . 9)"),
    abjad.Tweak(r"- \tweak font-size 4"),
    allow_rests=True,
    tags=[baca.tags.ONLY_PARTS],
)

baca.text_script_extra_offset_function(skips[:-1], (1.5, 12))

baca.open_volta(skips[4 - 1], accumulator.first_measure_number)
baca.close_volta(skips[6 - 1], accumulator.first_measure_number)

rests = score["Rests"]
for index, string in (
    (2 - 1, "fermata"),
    (8 - 1, "fermata"),
):
    baca.global_fermata(rests[index], string)

# text

baca.markup_function(
    skips[2 - 1],
    r"\harmony-text-twenty-five",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[8 - 1],
    r"\harmony-text-twenty-six",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)


def BFL(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-2, 2, 2],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 5),
        divisions=[28, 24],
        counts=[9, 6],
        incise=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(6),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4],
        written_halves=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [4, "-"],
    )
    voice.extend(music)


def PERC1(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(4, 5))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(6),
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [1, -23],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8))
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(9))
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, -20, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(3),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(6),
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [1, -23],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 9))
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-24, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [4, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(6),
        [-12, -2, 1, "-"],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [1, -23],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 9))
    voice.extend(music)


def VA(voice):
    music = baca.make_notes(accumulator.get(1))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [6, 3, 11],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(4))
    voice.extend(music)
    music = baca.make_skeleton(
        r"c2. c8 \times 5/4 { c2 }",
    )
    for pleaf in baca.select.pleaves(music)[:2]:
        baca.repeat_tie_function(pleaf)
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(6),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 8))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


_sixteenths = [6, -2, 4, -2, 4, -2, 2, -2]


def VC1(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [4, 2, 7, 7],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        _sixteenths[:4] + ["-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        _sixteenths,
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(6),
        3,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [9, 11],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        abjad.sequence.rotate(_sixteenths, -2)[:4] + ["-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        abjad.sequence.rotate(_sixteenths, -2),
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(6),
        2,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [4, 9, 7],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        abjad.sequence.rotate(_sixteenths, -4)[:4] + ["-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        abjad.sequence.rotate(_sixteenths, -4),
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(6),
        1,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [9, 7, 1, -1, 1, -1, 1, -1],
        extra_counts=[0, 0, 0, 0, 2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -2, 6, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        abjad.sequence.rotate(_sixteenths, -6),
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(6),
        0,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4],
        written_halves=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8), head=voice.name)
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
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
        ("bfl", (4, 5)),
        baca.pitch(
            "Ab3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_a_flat(),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "pp-ppp",
            selector=lambda _: baca.select.pleaf(_, 0, grace=False),
        ),
        baca.dynamic(
            "pp-ppp",
            measures=5,
            selector=lambda _: baca.select.pleaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-a-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            lilypond_id=2,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            autodetect_right_padding=True,
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", 6),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -10),
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
        ("bfl", 7),
        baca.pitch("Bb4"),
        baca.hairpin(
            "pp < p >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        ),
    )
    accumulator(
        ("bfl", 9),
        baca.pitch("G3"),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-jet-whistle-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        ("bfl", (1, 9)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 3),
        library.slate_staff_position(),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 5)),
        library.brake_drum_staff_position(),
        baca.flat_glissando(),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 6),
        baca.tuplet_bracket_up(),
        library.brake_drum_staff_position(),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 7),
        library.brake_drum_staff_position(),
        baca.damp(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("perc1", (6, 7)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
        ),
    )
    accumulator(
        ("perc1", 9),
        library.brake_drum_staff_position(),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (1, 9)),
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
        ("perc2", 3),
        baca.staff_lines(1),
        library.tam_tam_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (1, 3)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", (4, 5)),
        baca.staff_lines(3),
        baca.staff_position(2),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 6),
        baca.staff_lines(1),
        baca.tuplet_bracket_up(),
        baca.new(
            library.slate_staff_position(),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.hairpin(
            "f >o niente",
            map=lambda _: baca.select.rleak_runs(_, None, 1),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 7),
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
        ("perc2", (6, 7)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
        ),
    )
    accumulator(
        ("perc2", (6, 9)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.pitch("Ab4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f-ancora", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-pince-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 3),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1),
        library.whisk_staff_position(),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (4, 5)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5),
        baca.pitch("Ab4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-pince-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 6),
        baca.tuplet_bracket_up(),
        baca.dynamic("f-ancora", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", 7),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", (6, 7)),
        baca.pitch("Bb4"),
        baca.snap_pizzicato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
        ),
    )
    accumulator(
        ("hp", (4, 9)),
        baca.dls_staff_padding(4),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.pitch("Ab4"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
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
        ("va", 5),
        baca.tuplet_bracket_up(),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("va", (4, 5)),
        baca.pitch(
            "Ab4",
            selector=lambda _: baca.select.plts(_)[:-1],
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding 5"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("va", (5, 6)),
        baca.new(
            baca.note_head_style_harmonic_black(
                selector=lambda _: baca.select.pleaves(_)
            ),
            baca.pitch("<G4 Ab4 Bb4>"),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.plts(_),
        ),
        baca.dynamic(
            "pp",
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("va", 9),
        baca.pitch(
            "Gqf3",
            selector=lambda _: baca.select.rleaves(_),
            allow_hidden=True,
        ),
        baca.flat_glissando(
            hide_middle_stems=True,
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        baca.markup(
            r"\baca-seven-a",
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 3),
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
        ("vc1", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.plts(_),
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
            selector=lambda _: baca.select.pleaves(_)[1:-1],
        ),
    )
    accumulator(
        ("vc1", 7),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("C#6"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="E6",
        ),
    )
    accumulator(
        ("vc1", 9),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("vc1", [(4, 5), 9]),
        baca.pitch("G3"),
    )


def vc2(m):
    accumulator(
        ("vc2", 3),
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
        ("vc2", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp -- ! >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2]),
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
            selector=lambda _: baca.select.pleaves(_)[1:-1],
        ),
    )
    accumulator(
        ("vc2", 7),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("A5"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            alteration="C#6",
        ),
    )
    accumulator(
        ("vc2", 9),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        ),
    )
    accumulator(
        ("vc2", [(4, 5), 9]),
        baca.pitch("G3"),
    )


def cb1(m):
    accumulator(
        ("cb1", 3),
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
        ("cb1", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [2, 3, 2]),
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
            selector=lambda _: baca.select.pleaves(_)[1:-1],
        ),
    )
    accumulator(
        ("cb1", 7),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "C#4",
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        ),
    )
    accumulator(
        ("cb1", 9),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("cb1", [(4, 5), 9]),
        baca.pitch("Gb2"),
    )


def cb2(m):
    accumulator(
        ("cb2", 3),
        baca.tuplet_bracket_down(),
        baca.pitch(
            "F#1",
            selector=lambda _: baca.select.leaves(_)[:4],
        ),
        baca.pitch(
            "Gb2",
            selector=lambda _: baca.select.plts(_)[-3:],
        ),
        baca.scp_spanner(
            "P1 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[1:3],
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.plts(_)[:2],
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic(
            "pp",
            selector=lambda _: baca.select.phead(_, 2),
        ),
    )
    accumulator(
        ("cb2", (3, 4)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[4:13],
        ),
    )
    accumulator(
        ("cb2", (3, 5)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:]),
        ),
    )
    accumulator(
        ("cb2", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.lparts(_, [2, 1, 1]),
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
            selector=lambda _: baca.select.pleaves(_)[1:-1],
        ),
    )
    accumulator(
        ("cb2", 7),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("A1"),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", 9),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("cb2", [(4, 5), 9]),
        baca.pitch("Gb2"),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1"], 3),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 6),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1"], 7),
        baca.hairpin(
            "niente o< mp >o niente o< mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1"], (4, 5)),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 9)),
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
        fermata_measure_empty_overrides=[2, 8],
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
