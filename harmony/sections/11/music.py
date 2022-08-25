import abjad
import baca

from harmony import library

#########################################################################################
######################################### 11 [K] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (3, 4),
            (4, 4),
            (1, 4),
            (4, 4),
            (4, 4),
            (6, 4),
            (3, 4),
            (3, 4),
            (1, 4),
            (4, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[>L.1]", 1, "#darkgreen"),
        ("[K.1]", 2),
        ("[K.2-3]", 4),
        ("[<I.1]", 6, "#darkgreen"),
        ("[>L.4]", 7, "#darkgreen"),
        ("[>L.6]", 8, "#darkgreen"),
        ("[K.4]", 10),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "8=4"),
        (2 - 1, "72"),
        (2 - 1, "3:4(4)=4"),
        (6 - 1, "144"),
        (6 - 1, "8=4"),
        (7 - 1, "96"),
        (7 - 1, "4.=4"),
        (10 - 1, "72"),
        (10 - 1, "3:4(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    for index, string in (
        (3 - 1, "fermata"),
        (9 - 1, "fermata"),
    ):
        baca.global_fermata_function(rests[index], string)
    wrappers = baca.markup_function(
        skips[3 - 1],
        r"\harmony-text-nine",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup_function(
        skips[9 - 1],
        r"\harmony-text-ten",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 4), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        ["-", 4, -2, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [6, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        ["-", 4, 4],
        fuse=True,
        do_not_rewrite_meter=True,
        written_quarters=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, 10, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [14, -4, 12, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-12, -6, 3, -3],
        fuse=True,
        do_not_rewrite_meter=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [6, -6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [6, -4, 4, -2],
    )
    voice.extend(music)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-2, 10, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [14, -4, 12, -2],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (1, 4), (1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, -2, 4, -4, -6, 3, -3],
        preprocessor=preprocessor,
        extra_counts=[0, 2, 0, 0],
        do_not_rewrite_meter=True,
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [3, 1, 1, 1, -6],
        tie_all=True,
        written_quarters=[0],
        written_eighths=[2],
        invisible=[1, 3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [6, -4, 4, -2],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["+"],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 3, 6],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice, accumulator):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([0], 1),
        invisible=([1], 2),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, 8, -6, 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [14, 8, 8],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["+"],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, 8, -6, 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 8, 14],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice, accumulator):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=([0], 1),
        invisible=([1], 2),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, 8, -6, 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [12, 7, 8],
        extra_counts=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["+"],
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, 2, 4, 4, 2, 2, 2, 2, 4, 4, 2, -2],
        written_quarters=[0, 1],
        invisible=[1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-4, 8, -6, 6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 7, 12],
        extra_counts=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [2, 2, 4, 2, 2, 2, 2],
        written_quarters=[0, 1, 3, 4, 5, 6],
        invisible=[1, 4, 6],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m, accumulator):
    accumulator(
        ("bfl", 1),
        baca.pitch("<Eb3 Eb4 Bb4>"),
        baca.hairpin(
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            baca.levine_multiphonic(5),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("bfl", 5),
        baca.pitch("Ab3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("bfl", 6),
        baca.pitch("G3"),
    )
    accumulator(
        ("bfl", (5, 6)),
        baca.new(
            baca.covered_spanner(
                abjad.Tweak(r"- \tweak staff-padding 3"),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            ),
            selector=lambda _: baca.select.leaves(_)[1:9],
        ),
    )
    accumulator(
        ("bfl", 7),
        baca.breathe(
            selector=lambda _: baca.select.pleaf(_, -1, exclude=baca.enums.HIDDEN),
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

    def selector(argument):
        result = baca.select.cmgroups(argument, [1])
        return [baca.select.pleaf(_, -1) for _ in result]

    accumulator(
        ("bfl", 8),
        baca.breathe(
            selector,
        ),
        baca.text_spanner(
            "T -> A =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            map=lambda _: baca.select.clparts(_, [4]),
            pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", (7, 8)),
        baca.pitch("Dtqf5"),
        baca.hairpin(
            'o< "f" >o niente o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 3]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("bfl", 10),
        baca.pitch("<Eb3 Eb4 Bb4>"),
        baca.hairpin(
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.new(
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                right_broken=True,
            ),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[-1:]),
        ),
    )
    accumulator(
        ("bfl", (1, 10)),
        baca.dls_staff_padding(4),
    )


def perc1(m, accumulator):
    accumulator(
        ("perc1", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eb4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 5)),
        library.triangle_staff_position(),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< p > pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.hairpin(
            "pp < mp > pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.leaves(_)[5:8],
        ),
    )
    accumulator(
        ("perc1", 6),
        library.slate_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 7),
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
        ("perc1", 8),
        library.bass_drum_staff_position(),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
        ),
    )
    accumulator(
        ("perc1", 10),
        library.triangle_staff_position(),
        baca.flat_glissando(
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.hairpin(
            "o< p > pp pp < p > pp < p >o niente",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (2, 10)),
        baca.dls_staff_padding(6),
    )


def perc2(m, accumulator):
    accumulator(
        ("perc2", 1),
        library.bass_drum_staff_position(),
        baca.flat_glissando(
            left_broken=True,
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.hairpin(
            "(p) >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("perc2", 2),
        library.tam_tam_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (4, 5)),
        library.tam_tam_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic(
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc2", 6),
        library.brake_drum_staff_position(),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 7),
        library.brake_drum_staff_position(),
    )
    accumulator(
        ("perc2", (6, 7)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[2:]),
        ),
    )
    accumulator(
        ("perc2", 8),
        library.slate_staff_position(),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 10),
        library.tam_tam_staff_position(),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (1, 10)),
        baca.dls_staff_padding(6),
    )


def hp(m, accumulator):
    accumulator(
        ("hp", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eb4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 2),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("C1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", (4, 5)),
        baca.pitch("C1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("hp", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.new(
            baca.pitch("<B5 C#6>"),
            baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
            baca.dynamic(
                "f-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
                selector=lambda _: baca.select.phead(_, 0),
            ),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.new(
            baca.pitch("E4"),
            baca.dynamic(
                "f-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
                selector=lambda _: baca.select.phead(_, 0),
            ),
            baca.snap_pizzicato(),
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("hp", 7),
        baca.pitch("E4"),
        baca.snap_pizzicato(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("hp", (6, 7)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[5:]),
        ),
    )
    accumulator(
        ("hp", (1, 7)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", 8),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.whisk_staff_position(),
        baca.hairpin(
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 3]),
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.dls_staff_padding(6),
        baca.dynamic_text_x_offset(
            -1.5,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 10),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("C1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.damp(
            selector=lambda _: baca.select.leaf_after_each_ptail(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
    )
    accumulator(
        ("hp", (1, 10)),
        baca.ottava_bracket_staff_padding(8),
    )


def va(m, accumulator):
    accumulator(
        ("va", 1),
        baca.pitch("D3"),
        baca.hairpin(
            "ff >o niente",
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("va", 6),
        baca.pitch("C#4"),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\harmony-match-harp-decay-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", 8),
        baca.clef("alto", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eb3"),
    )
    accumulator(
        ("va", [2, (4, 5), 10]),
        baca.new(
            baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
            match=[0, 2],
        ),
        baca.pitch(
            "A5",
            allow_hidden=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def vc1(m, accumulator):
    accumulator(
        ("vc1", 1),
        baca.tuplet_bracket_up(),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o<| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.dynamic_text_x_offset(
            -1.5,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
        ),
    )
    accumulator(
        ("vc1", (1, 2)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 12.0"),
            autodetect_right_padding=False,
            # TODO: pitched trill suppresses start of text spanner
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc1", 6),
        baca.clef(
            "bass",
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("vc1", (6, 8)),
        baca.pitch(
            "B4",
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.pitch(
            "Aqf3",
            selector=lambda _: abjad.select.run(_, 1),
        ),
        baca.markup(
            r"\baca-eleven-e-flat",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: abjad.select.run(_, 1)[0],
        ),
    )
    accumulator(
        ("vc1", [(1, 2), (4, 5), 10]),
        baca.new(
            baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
            match=[0, 2],
        ),
        baca.pitch(
            "Gqs6",
            selector=lambda _: baca.select.rleaves(_),
            allow_hidden=True,
        ),
        baca.markup(
            r"\baca-eleven-d",
            abjad.Tweak(r"- \tweak X-offset 2.5"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def vc2(m, accumulator):
    accumulator(
        ("vc2", 1),
        baca.pitch("D2"),
        baca.hairpin(
            "ff >o niente",
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc2", 6),
        baca.clef(
            "bass",
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        ("vc2", [2, (4, 5), 10]),
        baca.new(
            baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
            match=[0, 2],
        ),
        baca.pitch(
            "F#5",
            selector=lambda _: baca.select.rleaves(_),
            allow_hidden=True,
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", (6, 8)),
        baca.pitch(
            "Dqs4",
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.pitch(
            "F3",
            selector=lambda _: abjad.select.run(_, 1),
        ),
    )


def cb1(m, accumulator):
    accumulator(
        ("cb1", 1),
        baca.tuplet_bracket_up(),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o<| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.dynamic_text_x_offset(
            -1.5,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
        ),
    )
    accumulator(
        ("cb1", (1, 2)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            autodetect_right_padding=False,
            # TODO: pitched trill suppresses start of text spanner
            # selector=lambda _: baca.select.tleaves(_, rleak=True),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("cb1", [(1, 2), (4, 5), 10]),
        baca.new(
            baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
            match=[0, 2],
        ),
        baca.pitch(
            "C#6",
            selector=lambda _: baca.select.rleaves(_),
            allow_hidden=True,
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-fifteen-d",
            abjad.Tweak(r"- \tweak X-offset 2.5"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", (6, 8)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.pitch(
            "E3",
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.pitch(
            "Dtqf3",
            selector=lambda _: abjad.select.run(_, 1),
        ),
        baca.markup(
            r"\baca-seven-e-flat",
            direction=abjad.DOWN,
            selector=lambda _: abjad.select.run(_, 1)[0],
        ),
    )


def cb2(m, accumulator):
    accumulator(
        ("cb2", 1),
        baca.pitch("D2"),
        baca.hairpin(
            "ff >o niente",
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb2", [2, (4, 5), 10]),
        baca.new(
            baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
            match=[0, 2],
        ),
        baca.pitch(
            "Cqf6",
            selector=lambda _: baca.select.rleaves(_),
            allow_hidden=True,
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-fourteen-d",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\baca-string-ii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            match=[0, 2],
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", (6, 8)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "A1",
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.pitch(
            "Eb2",
            selector=lambda _: abjad.select.run(_, 1),
        ),
    )


def composites(cache, accumulator):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 2),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o<| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.trill_spanner(selector=lambda _: baca.select.tleaves(_, rleak=True)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (4, 5)),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "o<| p |> pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.hairpin(
            "pp <| mp |> pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            selector=lambda _: baca.select.leaves(_)[5:8],
        ),
        baca.trill_spanner(selector=lambda _: baca.select.tleaves(_, rleak=True)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 8),
        baca.tuplet_bracket_up(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "sfp",
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 10),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.flat_glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o<| mp |> pp pp <| mp |> ! <| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 1 + 1]),
            right_broken=True,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.trill_spanner(
            right_broken=True,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
        baca.dls_staff_padding(4),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 6),
        baca.stop_on_string(
            selector=lambda _: baca.select.rest(_, 1),
        ),
        baca.hairpin(
            "o<| ff",
            selector=lambda _: baca.select.leaves(_)[1:3],
        ),
        baca.accent(
            selector=lambda _: baca.select.phead(_, -1),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.plt(_, -1),
        ),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.phead(_, -1),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 7),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], (6, 7)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[4:]),
        ),
    )


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"])
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
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
    bfl(cache["bfl"], accumulator)
    perc1(cache["perc1"], accumulator)
    perc2(cache["perc2"], accumulator)
    hp(cache["hp"], accumulator)
    va(cache["va"], accumulator)
    vc1(cache["vc1"], accumulator)
    vc2(cache["vc2"], accumulator)
    cb1(cache["cb1"], accumulator)
    cb2(cache["cb2"], accumulator)
    composites(cache, accumulator)
    return score, accumulator


def main():
    previous_metadata = baca.previous_metadata(__file__)
    first_measure_number = previous_metadata["final_measure_number"] + 1
    previous_persist = baca.previous_persist(__file__)
    score, accumulator = make_score(
        first_measure_number, previous_persist["persistent_indicators"]
    )
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
        first_measure_number=first_measure_number,
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


if __name__ == "__main__":
    main()
