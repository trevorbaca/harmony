import abjad
import baca

from harmony import library

#########################################################################################
######################################### 06 [F] ########################################
#########################################################################################

stage_markup = (
    ("[F.1]", 1),
    ("[>G.1]", 3, "#darkgreen"),
    ("[F.2]", 4),
    ("[>G.1]", 5, "#darkgreen"),
    ("[F.3-4]", 6),
    ("[<C.4]", 8, "#darkgreen"),
    ("[F.5-6]", 10),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (5, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (3, 4),
        (1, 4),
        (5, 4),
        (4, 4),
        (5, 4),
        (4, 4),
        (5, 4),
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
    (1 - 1, "48"),
    (1 - 1, "2=4"),
    (3 - 1, "57 3/5"),
    (3 - 1, "6:5(4)=4"),
    (4 - 1, "48"),
    (4 - 1, "5:6(4)=4"),
    (5 - 1, "57 3/5"),
    (5 - 1, "6:5(4)=4"),
    (6 - 1, "48"),
    (6 - 1, "5:6(4)=4"),
    (8 - 1, "57 3/5"),
    (8 - 1, "6:5(4)=4"),
    (10 - 1, "48"),
    (10 - 1, "5:6(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark_function(skip, indicator, manifests)

rests = score["Rests"]
for index, string in (
    (2 - 1, "fermata"),
    (9 - 1, "fermata"),
):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[2 - 1],
    r"\harmony-text-four",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
for wrapper in wrappers:
    wrapper.tag = wrapper.tag.append(baca.tags.NOT_PARTS)

wrappers = baca.markup_function(
    skips[9 - 1],
    r"\harmony-text-five",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
for wrapper in wrappers:
    wrapper.tag = wrapper.tag.append(baca.tags.NOT_PARTS)


def BFL(voice):
    music = baca.make_mmrests(accumulator.get(1, 2))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, -6, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(5),
        [2, 2, -6, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 8), (5, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7),
        [-6, -4, 1, -5, 1, -1],
        preprocessor=preprocessor,
        extra_counts=[0, 2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 1, -4, 1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9, 15), head=voice.name)
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [16, "-", 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-15, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-3, 6, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-15, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        ["-", 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(8),
        [2, 1],
        [1, 2, 2, 2, 2, 1, 2, 2, 2],
        extra_counts=[2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 3, -4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12, 14))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(15),
        ["-", 5, -1],
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [16, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [9, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-19, 1, "-"],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(8),
        [1, 2],
        [1, 2, 2, 1, 2, 2, 2, 2, 2, 2],
        extra_counts=[0, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 1, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12, 13))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(14),
        ["-", 1, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(15),
        ["-", 1, -5],
    )
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-10, 6, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(11, 16), (5, 16)])
        return result

    music = library.make_sixteenths(
        accumulator.get(4),
        [9, "-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 8), (5, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7),
        ["-", 9, -2],
        preprocessor=preprocessor,
        extra_counts=[0, 2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [10, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(12))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(14),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(11, 16), (5, 16)])
        return result

    music = library.make_sixteenths(
        accumulator.get(15),
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 1],
        written_quarters=[-2, -1],
        invisible=[-1],
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        counts=[9],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 2, -3],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        counts=[9],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-1, 2, "-", 3, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 15),
        [-5, 2, -5, 3, -10, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(3),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 2, -3],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(5),
        counts=[7],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-1, 2, "-", 3, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, -3, 1, "-"],
        extra_counts=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 15),
        [-5, 2, -5, 3, -10 - 2, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [3, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 2, -3],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6, 7),
        [-1, 2, "-", 3, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [10, -2],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10, 15),
        [-5, 2, -5, 3, -10 + 3, 4, -4, 5, -8, 2, -3, 8, -3, 14, -2, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice):
    music = baca.make_repeated_duration_notes(
        accumulator.get(1),
        [(1, 4)],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [8, "-", 5],
        tie=[0],
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(5, 7),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-4, 1, -4, 1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(10, 15),
        [(1, 4)],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice):
    music = baca.make_repeated_duration_notes(
        accumulator.get(1),
        [(1, 4)],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        ["-", 4, 4, 4],
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(4, 7),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [10, -2],
        untie=True,
        after_graces=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(10, 15),
        [(1, 4)],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    accumulator(
        ("bfl", 3),
        baca.pitch(
            "Bb5",
            selector=lambda _: baca.select.runs(_)[:1],
        ),
        baca.pitch(
            "E5",
            selector=lambda _: baca.select.runs(_)[1:],
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.hairpin(
            "o<| f |>o niente",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-2:]),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("E5"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("bfl", (3, 4)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:7]),
        ),
    )
    accumulator(
        ("bfl", 5),
        baca.pitch(
            "Bb5",
            selector=lambda _: baca.select.runs(_)[:1],
        ),
        baca.pitch(
            "E5",
            selector=lambda _: baca.select.runs(_)[1:],
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.hairpin(
            "o<| f |>o niente",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-2:]),
        ),
    )
    accumulator(
        ("bfl", 6),
        baca.pitch("E5"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("bfl", (5, 6)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[3:7]),
        ),
    )
    accumulator(
        ("bfl", (3, 6)),
        baca.tuplet_bracket_up(),
    )
    accumulator(
        ("bfl", (1, 8)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("bfl", (7, 8)),
        baca.pitch("F3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.new(
            library.triangle_staff_position(),
            baca.flat_glissando(
                left_broken=True,
            ),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.pleaves(_)[:1],
        ),
        baca.damp(
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.new(
            library.bass_drum_staff_position(),
            baca.damp(selector=lambda _: baca.select.phead(_, 0)),
            baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
            baca.dls_staff_padding(6),
            baca.markup(
                r"\baca-bd-struck-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            ),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        ("perc1", 3),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(2),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 5),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(2),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 6),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 8),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([-2, 0, -2, 0, 0]),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 10),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.hairpin(
            "o< mf",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 11),
        library.bass_drum_staff_position(),
        baca.hairpin(
            "o< f",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("perc1", 15),
        library.bass_drum_staff_position(),
        baca.hairpin(
            "o< ff",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("perc1", (10, 15)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        baca.new(
            library.tam_tam_staff_position(),
            baca.flat_glissando(
                left_broken=True,
            ),
            baca.stem_tremolo(),
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.damp(
            selector=lambda _: baca.select.rest(_, 0),
        ),
    )
    accumulator(
        ("perc2", 3),
        library.tam_tam_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc2", 4),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        library.tam_tam_staff_position(),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("perc2", 5),
        library.tam_tam_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("perc2", (6, 7)),
        library.brake_drum_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.ptail(_, -1),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (1, 7)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", 8),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([-2, 0, 0, -2, 0]),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5.5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 10),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 11),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc2", 14),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc2", 15),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc2", (10, 15)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E1"),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
    )
    accumulator(
        ("hp", 3),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.whisk_staff_position(),
        baca.hairpin(
            'o< "f" >o niente',
            map=lambda _: baca.select.clparts(_, [3]),
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("hp", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "E1",
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.damp(
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(
            7,
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=lambda _: baca.select.rest(_, -1),
        ),
        baca.new(
            library.whisk_staff_position(),
            selector=lambda _: baca.select.pleaves(_)[-2:],
        ),
        baca.hairpin(
            'o< "f" >o',
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.pleaves(_)[-2:],
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, -2),
        ),
    )
    accumulator(
        ("hp", 5),
        library.whisk_staff_position(),
        baca.hairpin(
            'o< "f" >o niente',
            map=lambda _: baca.select.clparts(_, [3]),
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.lleaves(_, count=2),
        ),
    )
    accumulator(
        ("hp", (4, 5)),
        baca.tuplet_bracket_up(),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[4:8]),
        ),
    )
    accumulator(
        ("hp", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitches("F#4 G#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.text_spanner(
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", 7),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("hp", (7, 8)),
        baca.pitch("G1"),
        baca.new(
            baca.damp(
                abjad.Tweak(r"- \tweak direction #down"),
                selector=lambda _: baca.select.rest(_, -1),
            ),
            measures=7,
        ),
        baca.new(
            baca.damp(
                selector=lambda _: baca.select.rest(_, -1),
            ),
            measures=8,
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.rleak(baca.tleaves(_), count=2),
        ),
    )
    accumulator(
        ("hp", 10),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("hp", (10, 11)),
        baca.pitches("F#4 G#4"),
    )
    accumulator(
        ("hp", (10, 14)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_, exclude=baca.enums.HIDDEN),
        ),
        baca.text_spanner(
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("hp", (13, 14)),
        baca.pitches("F#4 G#4"),
    )
    accumulator(
        ("hp", (10, 14)),
        baca.hairpin(
            "mf f ff fff",
            bookend=False,
            pieces=lambda _: baca.select.plts(_, exclude=baca.enums.HIDDEN),
        ),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", 15),
        baca.tuplet_bracket_up(),
        baca.new(
            baca.clef("percussion"),
            baca.staff_lines(1),
            selector=lambda _: baca.select.rest(_, -1),
        ),
        baca.new(
            library.whisk_staff_position(),
            selector=lambda _: baca.select.pleaves(_)[-2:],
        ),
        #    baca.hairpin(
        #        'o< "f" >o niente',
        #        forbid_al_niente_to_bar_line=True,
        #        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        #        right_broken=True,
        #        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[-2:]),
        #    ),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_)[-3:],
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, -2),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
        ),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("va", 3),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_b_flat(),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.rleak(baca.tleaves(_, grace=False), count=2),
        ),
    )
    accumulator(
        ("va", 4),
        baca.new(
            baca.pitch("Eb3"),
            baca.bow_speed_spanner(
                "scr. =|",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
            ),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("va", 5),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -9),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
    )
    accumulator(
        ("va", (6, 7)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("va", 8),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("va", 10),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("va", (10, 15)),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.hairpin(
            "f >o niente",
            selector=lambda _: baca.select.rleak(
                baca.select.plts(_)[-1:],
            ),
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_)[:-1],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_)[-1:],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("va", [1, (6, 15)]),
        baca.pitch(
            "Eb3",
            selector=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("va", (1, 15)),
        baca.dls_staff_padding(4),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc1", 3),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.rleak(baca.tleaves(_, grace=False), count=2),
        ),
    )
    accumulator(
        ("vc1", 4),
        baca.pitch(
            "E4",
            selector=lambda _: baca.select.plt(_, -1),
        ),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.phead(_, -1),
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
    )
    accumulator(
        ("vc1", 5),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -1 - 7),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
    )
    accumulator(
        ("vc1", (6, 7)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc1", (1, 7)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc1", 8),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("ppp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("vc1", 10),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("vc1", (10, 15)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_)[:-1],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_)[-1:],
            right_broken=True,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.hairpin(
            "f >o niente",
            right_broken=True,
            selector=lambda _: baca.select.rleak(
                baca.select.plts(_)[-1:],
            ),
        ),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("vc1", [1, (6, 7), (10, 15)]),
        baca.pitch(
            "E4",
            selector=lambda _: baca.select.plts(_),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 3),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("vc2", 4),
        baca.clef(
            "treble",
            selector=lambda _: baca.select.phead(_, -1),
        ),
        baca.new(
            baca.pitch("Eqf4"),
            selector=lambda _: baca.select.plt(_, -1),
        ),
        baca.dynamic(
            "f",
            selector=lambda _: baca.select.phead(_, -1),
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
    )
    accumulator(
        ("vc2", (3, 4)),
        baca.new(
            baca.pitch("B2"),
            baca.damp_spanner(
                abjad.Tweak(r"- \tweak staff-padding 3"),
            ),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
        ),
    )
    accumulator(
        ("vc2", 5),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("B2"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", (6, 7)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 8),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            baca.interpolate_pitches("G2", "F2"),
            baca.glissando(
                allow_repeats=True,
                hide_middle_note_heads=True,
                selector=lambda _: baca.select.tleaves(_),
            ),
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", (10, 15)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_)[:-1],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_)[-1:],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.hairpin(
            "f >o niente",
            selector=lambda _: baca.select.rleak(
                baca.select.plts(_)[-1:],
            ),
        ),
    )
    accumulator(
        ("vc2", [1, (6, 7), (10, 15)]),
        baca.pitch(
            "Eqf4",
            selector=lambda _: baca.select.plts(_),
        ),
    )
    accumulator(
        ("vc2", (1, 15)),
        baca.dls_staff_padding(4),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.pitch("E1"),
        baca.flat_glissando(),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 4]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb1", 3),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("cb1", 4),
        baca.note_head_style_harmonic(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", (3, 4)),
        baca.new(
            baca.pitch("Bb2"),
            baca.damp_spanner(
                abjad.Tweak(r"- \tweak staff-padding 3"),
            ),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
        ),
    )
    accumulator(
        ("cb1", (4, 7)),
        baca.new(
            baca.flat_glissando("E1"),
            selector=lambda _: abjad.select.run(_, -1),
        ),
        baca.hairpin(
            "o< mf > p < f",
            pieces=lambda _: baca.select.lparts(_, [6, 5, 3, 2]),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
        baca.scp_spanner(
            "T1 -> P1 -> T1 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.lparts(_, [6, 5, 3, 2]),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
    )
    accumulator(
        ("cb1", (1, 7)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("cb1", 8),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bridge_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "pp ppp",
            bookend=False,
            pieces=lambda _: baca.select.plts(_),
        ),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("cb1", 10),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("cb1", (10, 15)),
        baca.flat_glissando(
            "E1",
            allow_hidden=True,
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o< mf > p < f > p < ff >o niente",
            pieces=lambda _: baca.mgroups(_, [1, 1, 1, 1, 1, 2]),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 -> O -> T1 -> P2 -> T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.cmgroups(_, [1]),
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dls_staff_padding(4),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.pitch("E1"),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [3, 3]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb2", (3, 7)),
        baca.flat_glissando("E1", selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o< mp > p < f",
            bookend=False,
            pieces=lambda _: baca.mgroups(_, [2, 1, 1, 2]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.scp_spanner(
            "T1 -> P1 -> O -> T1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            pieces=lambda _: baca.select.lparts(_, [3, 4, 4, 2, 3, 5]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", 8),
        baca.new(
            baca.interpolate_pitches("G2", "F#2"),
            baca.glissando(
                allow_repeats=True,
                hide_middle_note_heads=True,
                selector=lambda _: baca.select.tleaves(_),
            ),
            map=lambda _: baca.select.runs(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_, grace=False),
        ),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("cb2", (10, 15)),
        baca.flat_glissando("E1", selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o< f > p < ff >o niente",
            pieces=lambda _: baca.mgroups(_, [2, 1, 1, 3]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "T1 -> P2 -> T1 -> P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.mgroups(_, [2, 1, 1, 2]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", (1, 15)),
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
        fermata_measure_empty_overrides=[2, 9],
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
