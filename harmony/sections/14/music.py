import abjad
import baca

from harmony import library

#########################################################################################
######################################### 14 [N] ########################################
#########################################################################################

stage_markup = (
    ("[N.1-2]", 1),
    ("[>O.1]", 4, "#darkgreen"),
    ("[<M.1]", 5, "#darkgreen"),
    ("[N.3-6]", 6),
    ("[>P.1]", 11, "#darkgreen"),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (1, 4),
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
    (1 - 1, "57 3/5"),
    (1 - 1, "3:5(4)=4"),
    (4 - 1, "96"),
    (4 - 1, "5:3(4)=4"),
    (5 - 1, "144"),
    (5 - 1, "3:2(4)=4"),
    (6 - 1, "57 3/5"),
    (6 - 1, "4:5(2)=4"),
    (11 - 1, "96"),
    (11 - 1, "5:3(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (3 - 1, "fermata"),
    (10 - 1, "short"),
):
    baca.global_fermata(rests[index], string)

cerulean = [1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"]

# text

baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-fourteen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    allow_rests=True,
    tags=[baca.tags.NOT_PARTS],
)

baca.markup_function(
    skips[10 - 1],
    r"\harmony-text-fifteen",
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
        rest_tuplets=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-1, 3, 4, -4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, 2, 4, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(6),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 8))
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(9),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[0],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -1, 8],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [2, "-", 2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-1, 3, 4, -4, 4],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        divisions=[6, 14],
        counts=[5, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7, 8))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        ["-", 2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [41, -7, "+"],
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-22, 1, -3, 1, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 4))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        divisions=[6, 14],
        counts=[4, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 9),
        cerulean,
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [21, -14, 18, "-"],
    )
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [22, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-4, 4, 8, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 9),
        [54, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [21, -14, 18, "-"],
    )
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(4),
        ["-", 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        divisions=[4, 12, 4],
        counts=[0, 7],
        rest_from=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 9),
        [16, -12, 4, -16, 4, -8, 4],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, 1, -1, 4, 2, 1, -1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-16, 1, -16, 1, -6],
        extra_counts=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -1, -4, 7, -1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 8),
        cerulean,
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [-4, 3, -1, 3, -1, -8, 3, -1],
        extra_counts=[0, 8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -1, 7, -1],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-9, 1, -11, 1, -3, 1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -1, -4, 7, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-8, 2, -6],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 9),
        cerulean,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -1, 7, -1],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -1, -4, 7, -1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        divisions=[4, 12, 4],
        counts=[6],
        rest_to=1,
        rest_from=1,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 9),
        [16, -8, 4, -16, 4, -12, 4],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, 1, -1, 4, 2, 1, -1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-8, 4, "-"],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, -1, -4, 7, -1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-8, 12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 9),
        [16, -12, 4, -8, 4, -16, 4],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, 1, -1, 4, 2, 1, -1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    accumulator(
        ("bfl", 2),
        baca.pitches(
            library.warble_pitches(),
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
                abjad.select.leaves(_), (3, 4)
            ),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("E3"),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("mf"),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", 5),
        # TODO: promote to music = library.make_sixteenths():
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
    )
    accumulator(
        ("bfl", 6),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -1),
        ),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (3, 4)
            ),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", 9),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -2),
        ),
        baca.hairpin(
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (3, 4)
            ),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", (6, 9)),
        baca.new(
            baca.note_head_font_size(-3),
            baca.accidental_font_size(-3),
            baca.accidental_x_offset(0),
            baca.accidental_y_offset(-2),
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("bfl", 11),
        baca.pitch("D5"),
        baca.dynamic("p"),
        baca.text_spanner(
            "A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", (1, 11)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 2)),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 4),
        library.slate_staff_position(),
        baca.dynamic('"f"'),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", (1, 4)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc1", 5),
        baca.staff_lines(3),
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
        ("perc1", 6),
        baca.staff_lines(1),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 9),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc1", 11),
        library.brake_drum_staff_position(),
        baca.dynamic("p"),
        baca.markup(
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", (6, 11)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 2)),
        library.slate_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            '"ff"',
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", (1, 4)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", 5),
        baca.staff_lines(3),
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
        ("perc2", (6, 9)),
        baca.staff_lines(1),
        library.slate_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.hairpin(
            # '"ff" "ff" "ff" "f" "f" mf mp p pp',
            '"ff" "ff" "f" "f" mf mp p pp',
            pieces=lambda _: baca.select.plts(_)[1:],
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", 11),
        library.tam_tam_staff_position(),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", (6, 11)),
        baca.dls_staff_padding(6),
    )


def percs(cache):
    accumulator(
        (["perc1", "perc2"], 5),
        baca.new(
            baca.dots_extra_offset((1, 0)),
            baca.dots_x_extent_false(),
            baca.rest_x_extent_zero(),
            map=lambda x: [
                _
                for _ in abjad.select.rests(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ],
        ),
    )


def hp(m):
    accumulator(
        ("hp", (1, 2)),
        baca.clef("bass"),
        baca.pitch("E1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f"),
        baca.dls_staff_padding(7),
    )
    accumulator(
        ("hp", 4),
        baca.clef("treble"),
        baca.pitch("<B4 C5>"),
        baca.double_flageolet(),
        baca.dynamic("f-ancora"),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        ),
    )
    accumulator(
        ("hp", 5),
        baca.clef("bass"),
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
        ),
    )
    accumulator(
        ("hp", (4, 5)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", (6, 9)),
        baca.pitch("E1"),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f"),
    )
    accumulator(
        ("hp", 11),
        baca.pitch("F1"),
        baca.dynamic("p"),
    )
    accumulator(
        ("hp", (6, 11)),
        baca.dls_staff_padding(7),
    )


def va(m):
    accumulator(
        ("va", (1, 2)),
        baca.note_head_style_harmonic(),
        baca.interpolate_pitches("D#3", "E3"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("va", (4, 5)),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitch("Db3"),
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[:3],
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitches(
                library.appoggiato_pitches_d_flat_3(),
            ),
            selector=lambda _: baca.select.leaves(_, grace=True),
        ),
        baca.hairpin(
            "f >o niente",
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaves(_, grace=False)[:4],
        ),
    )
    accumulator(
        ("va", (6, 9)),
        baca.note_head_style_harmonic(),
        baca.new(
            baca.interpolate_pitches("D#3", "E3"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("va", 11),
        baca.pitches("D4 Eb4"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("va", (1, 11)),
        baca.dls_staff_padding(4),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 2)),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            '"ff" "ff"',
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("vc1", 4),
        baca.clef("bass"),
        baca.staff_lines(5),
        baca.pitch("A2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc1", 5),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitch("C3"),
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitches(
                library.appoggiato_pitches_c_3(),
            ),
            selector=lambda _: baca.select.leaves(_, grace=True),
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("vc1", (4, 5)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc1", (6, 8)),
        baca.clef("percussion"),
        baca.staff_lines(1),
        baca.tuplet_bracket_staff_padding(3),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            '"ff" "ff" "f" "f" mf mp p',
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("vc1", 9),
        baca.clef("bass"),
        baca.staff_lines(5),
        baca.dynamic("pp"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("vc1", 11),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
    )
    accumulator(
        ("vc1", [9, 11]),
        baca.pitch("D#3"),
    )
    accumulator(
        ("vc1", (9, 11)),
        baca.dls_staff_padding(4),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            '"ff" "ff"',
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("vc2", 4),
        baca.clef("bass"),
        baca.staff_lines(5),
        baca.pitch("G2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc2", 5),
        baca.tuplet_bracket_up(),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            library.bridge_staff_position(),
            selector=lambda _: abjad.select.leaf(_, 1),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic('"ff"'),
    )
    accumulator(
        ("vc2", (6, 9)),
        library.bridge_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            '"ff" "ff" "f" mf mp p pp',
            pieces=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("vc2", (5, 6)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[1:-3],
        ),
    )
    accumulator(
        ("vc2", (5, 9)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("vc2", 11),
        baca.clef("bass"),
        baca.staff_lines(5),
        baca.pitch("C#3"),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(4),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 2)),
        baca.note_head_style_harmonic(),
        baca.interpolate_pitches("F2", "E2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.pitch("G#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb1", 5),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitch("B2"),
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
        baca.new(
            baca.note_head_style_harmonic_black(),
            baca.pitches(
                library.appoggiato_pitches_b_2(),
            ),
            selector=lambda _: baca.select.leaves(_, grace=True),
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("cb1", (6, 9)),
        baca.note_head_style_harmonic(),
        baca.new(
            baca.interpolate_pitches("F2", "E2"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb1", 11),
        baca.pitches("E3 D#3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("cb1", (1, 11)),
        baca.dls_staff_padding(4),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 2)),
        baca.note_head_style_harmonic(),
        baca.interpolate_pitches("D#2", "E2"),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb2", 4),
        baca.pitch("F#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb2", 5),
        baca.pitch("B2"),
        baca.dynamic("mp"),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
    )
    accumulator(
        ("cb2", (6, 9)),
        baca.note_head_style_harmonic(),
        baca.new(
            baca.interpolate_pitches("D#2", "E2"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.glissando(
            allow_repeats=True,
            hide_middle_note_heads=True,
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.markup(
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        ),
    )
    accumulator(
        ("cb2", 11),
        baca.pitches("C#3 D3"),
        baca.glissando(
            allow_repeats=True,
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("cb2", (1, 11)),
        baca.dls_staff_padding(4),
    )


def composites(cache):
    # va, cb1, cb2
    accumulator(
        (["va", "cb1", "cb2"], 1),
        baca.hairpin(
            "o< mp",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
        baca.scp_spanner(
            "T1 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        (["va", "cb1", "cb2"], (6, 9)),
        baca.hairpin(
            "o< mp",
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.hairpin(
            "o< mf",
            selector=lambda _: abjad.select.run(_, 1),
        ),
        baca.hairpin(
            "o< f",
            selector=lambda _: abjad.select.run(_, 2),
        ),
        baca.hairpin(
            "o< ff",
            selector=lambda _: abjad.select.run(_, 3),
        ),
        baca.scp_spanner(
            "T1 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        (["va", "cb1", "cb2"], 11),
        baca.alternate_bow_strokes(
            abjad.Tweak(r"- \tweak staff-padding 4"),
            full=True,
            selector=lambda x: [
                _
                for _ in baca.pheads(x)
                if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ],
        ),
        baca.dynamic(
            "ppp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.half_clt_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
        ),
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
        fermata_measure_empty_overrides=[3, 10],
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
