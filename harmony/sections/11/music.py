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


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.pitch_function(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.hairpin_function(
            o.rleaves(),
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        baca.markup_function(o.pleaf(0), baca.levine_multiphonic(5))
    with baca.scope(m[5]) as o:
        baca.pitch_function(o, "Ab3")
        baca.dynamic_function(o.phead(0), "mf")
    with baca.scope(m[6]) as o:
        baca.pitch_function(o, "G3")
    with baca.scope(m.get(5, 6)) as o:
        with baca.scope(o.leaves()[1:9]) as u:
            baca.covered_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
            baca.metric_modulation_spanner_function(
                u,
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
    with baca.scope(m[7]) as o:
        baca.breathe_function(o.pleaf(-1))
        for clpart in baca.select.clparts(o, [2]):
            baca.text_spanner_function(
                o.rleaves(),
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )

    def selector(argument):
        result = baca.select.cmgroups(argument, [1])
        return [baca.select.pleaf(_, -1) for _ in result]

    with baca.scope(m[8]) as o:
        baca.breathe_function(selector(o))
        for clpart in baca.select.clparts(o, [4]):
            clpart = baca.select.rleak(clpart)
            baca.text_spanner_function(
                clpart,
                "T -> A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
                pieces=lambda _: baca.select.lparts(_, [2, 2 + 1]),
            )
    with baca.scope(m.get(7, 8)) as o:
        baca.pitch_function(o, "Dtqf5")
        baca.hairpin_function(
            o.rleaves(),
            'o< "f" >o niente o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 3]),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m[10]) as o:
        baca.pitch_function(o, "<Eb3 Eb4 Bb4>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[10]) as o:
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.runs()[-1:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(m):
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "Eb4")
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mf")
        baca.dls_staff_padding_function(o, 4)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.triangle_staff_position_function(o)
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o< p >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        library.triangle_staff_position_function(o)
        baca.flat_glissando_function(o.pleaves())
        baca.stem_tremolo_function(o.pleaves()),
        baca.hairpin_function(
            o.leaves()[:3],
            "o< p > pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        ),
        baca.hairpin_function(
            o.leaves()[5:8],
            "pp < mp > pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
    with baca.scope(m[6]) as o:
        library.slate_staff_position_function(o)
        baca.accent_function(o.pheads())
        baca.stem_tremolo_function(o.pheads())
        baca.dynamic_function(
            o.phead(0),
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.bass_drum_staff_position_function(o)
        for run in baca.select.runs(o):
            baca.hairpin_function(run, "o<| f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[8]) as o:
        library.bass_drum_staff_position_function(o)
        for run in baca.select.runs(o):
            baca.hairpin_function(run, "o<| f")
    with baca.scope(m[10]) as o:
        library.triangle_staff_position_function(o)
        baca.flat_glissando_function(o.leaves()[:-1])
        baca.stem_tremolo_function(o.pheads())
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o< p > pp pp < p > pp < p >o niente",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 1 + 1]),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(2, 10)) as o:
        baca.dls_staff_padding_function(o, 6)


def perc2(m):
    with baca.scope(m[1]) as o:
        library.bass_drum_staff_position_function(o)
        baca.flat_glissando_function(o, left_broken=True)
        baca.stem_tremolo_function(o.pleaf(-1))
        baca.hairpin_function(o.rleaves(), "(p) >o niente")
    with baca.scope(m[2]) as o:
        library.tam_tam_staff_position_function(o)
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "mp")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 5)) as o:
        library.tam_tam_staff_position_function(o)
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(
            o.phead(0),
            "mp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[6]) as o:
        library.brake_drum_staff_position_function(o)
        baca.dynamic_function(o.phead(0), "f")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[7]) as o:
        library.brake_drum_staff_position_function(o)
    with baca.scope(m.get(6, 7)) as o:
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.leaves()[2:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
        )
    with baca.scope(m[8]) as o:
        library.slate_staff_position_function(o)
        baca.dynamic_function(o.phead(0), '"f"')
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[10]) as o:
        library.tam_tam_staff_position_function(o)
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "mp")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(1, 10)) as o:
        baca.dls_staff_padding_function(o, 6)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.pitch_function(o, "Eb4")
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mf")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-sons-xylophoniques-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "C1")
        baca.ottava_bassa_function(o.tleaves())
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "f")
    with baca.scope(m.get(4, 5)) as o:
        baca.pitch_function(o, "C1")
        baca.ottava_bassa_function(o.tleaves())
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        )
    with baca.scope(m[6]) as o:
        baca.clef_function(o.leaf(0), "treble")
        with baca.scope(o.pleaf(0)) as u:
            baca.pitch_function(u, "<B5 C#6>")
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[6]) as o:
        with baca.scope(o.pleaf(0)) as u:
            baca.double_flageolet_function(u)
            baca.dynamic_function(
                u,
                "f-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            )
        with baca.scope(o.phead(-1)) as u:
            baca.pitch_function(u, "E4")
            baca.dynamic_function(
                u,
                "f-ancora",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            )
            baca.snap_pizzicato_function(u)
    with baca.scope(m[7]) as o:
        baca.pitch_function(o, "E4")
        baca.snap_pizzicato_function(o.pheads())
    with baca.scope(m.get(6, 7)) as o:
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.leaves()[5:]),
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(1, 7)) as o:
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m[8]) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.whisk_staff_position_function(o)
        baca.hairpin_function(
            o.run(0),
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 3]),
        )
        baca.dls_staff_padding_function(o, 6)
        baca.dynamic_text_x_offset_function(o.pleaf(1), -1.5)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[10]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.staff_lines_function(o.leaf(0), 5)
        baca.pitch_function(o, "C1")
        baca.ottava_bassa_function(o.tleaves())
        baca.damp_function(baca.select.leaf_after_each_ptail(o))
        baca.dynamic_function(o.phead(0), "f")
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m.get(1, 10)) as o:
        baca.ottava_bracket_staff_padding_function(o, 8)


def va(m):
    with baca.scope(m[1]) as o:
        baca.pitch_function(o, "D3")
        baca.hairpin_function(
            o.rleaves(),
            "ff >o niente",
            left_broken=True,
        )
    with baca.scope(m[6]) as o:
        baca.pitch_function(o, "C#4")
        baca.flat_glissando_function(o.pleaves())
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "mf >o niente",
        )
        baca.markup_function(
            o.pleaf(0),
            r"\harmony-match-harp-decay-markup",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
        baca.bow_speed_spanner_function(
            baca.select.rleak(baca.select.ltleaves(o)),
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[8]) as o:
        baca.clef_function(o.leaf(0), "alto")
        baca.pitch_function(o, "Eb3")
    for item in [2, (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o.rleaves(), "A5", allow_hidden=True)
    for item in [2, 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef_function(o.leaf(0), "treble")
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )


def vc1(m):
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up_function(o)
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.hairpin_function(
            baca.select.rleak(o.leaves()[-2:]),
            "o<| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        baca.dynamic_text_x_offset_function(o.pleaf(1), -1.5)
        baca.trill_spanner_function(
            baca.select.rleak(o.leaves()[-2:]),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.tleaves()),
            abjad.Tweak(r"- \tweak staff-padding 12.0"),
            autodetect_right_padding=False,
            # TODO: pitched trill suppresses start of text spanner
        )
    with baca.scope(m[6]) as o:
        baca.clef_function(o.phead(1), "bass")
    with baca.scope(m.get(6, 8)) as o:
        baca.pitch_function(o.run(0), "B4")
        baca.pitch_function(o.run(1), "Aqf3")
        baca.markup_function(
            o.run(1)[0],
            r"\baca-eleven-e-flat",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
        )
    for item in [(1, 2), (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o.rleaves(), "Gqs6", allow_hidden=True)
    for item in [(1, 2), 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef_function(o.leaf(0), "treble")
            baca.markup_function(
                o.pleaf(0),
                r"\baca-eleven-d",
                abjad.Tweak(r"- \tweak X-offset 2.5"),
                direction=abjad.DOWN,
            )
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )


def vc2(m):
    with baca.scope(m[1]) as o:
        baca.pitch_function(o, "D2")
        baca.hairpin_function(o.rleaves(), "ff >o niente", left_broken=True)
    with baca.scope(m[6]) as o:
        baca.clef_function(o.phead(-1), "bass")
    for item in [2, (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o.rleaves(), "F#5", allow_hidden=True)
    for item in [2, 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef_function(o.leaf(0), "treble")
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.pitch_function(o.run(0), "Dqs4")
        baca.pitch_function(o.run(1), "F3")


def cb1(m):
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up_function(o)
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.hairpin_function(
            baca.select.rleak(abjad.select.leaves(o)[-2:]),
            "o<| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
        )
        baca.dynamic_text_x_offset_function(o.pleaf(1), -1.5)
        baca.trill_spanner_function(
            baca.select.rleak(abjad.select.leaves(o)[-2:]),
            abjad.Tweak(r"- \tweak bound-details.right.padding 2.75"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.metric_modulation_spanner_function(
            # TODO: pitched trill suppresses start of text spanner
            baca.select.rleak(o.tleaves()),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            autodetect_right_padding=False,
        )
    for item in [(1, 2), (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(
                o.rleaves(),
                "C#6",
                allow_hidden=True,
                do_not_transpose=True,
            )
    for item in [(1, 2), 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef_function(o.leaf(0), "treble")
            baca.markup_function(
                o.pleaf(0),
                r"\baca-fifteen-d",
                abjad.Tweak(r"- \tweak X-offset 2.5"),
                direction=abjad.DOWN,
            )
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.note_head_style_harmonic_function(o.run(0))
        baca.pitch_function(o.run(0), "E3")
        baca.pitch_function(o.run(1), "Dtqf3")
        baca.markup_function(
            o.run(1)[0],
            r"\baca-seven-e-flat",
            direction=abjad.DOWN,
        )


def cb2(m):
    with baca.scope(m[1]) as o:
        baca.pitch_function(o, "D2")
        baca.hairpin_function(
            o.rleaves(),
            "ff >o niente",
            left_broken=True,
        )
    for item in [2, (4, 5), 10]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(
                o.rleaves(),
                "Cqf6",
                allow_hidden=True,
                do_not_transpose=True,
            )
    for item in [2, 10]:
        with baca.scope(m.get(item)) as o:
            baca.clef_function(o.leaf(0), "treble")
            baca.markup_function(
                o.pleaf(0),
                r"\baca-fourteen-d",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            )
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-ii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
                direction=abjad.DOWN,
            )
    with baca.scope(m.get(6, 8)) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o.run(0), "A1")
        baca.pitch_function(o.run(1), "Eb2")


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.hairpin_function(
                baca.select.tleaves(o, rleak=True),
                "o<| mp |>o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            baca.trill_spanner_function(baca.select.tleaves(o, rleak=True))
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 5)) as o:
            baca.flat_glissando_function(o.pleaves())
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.hairpin_function(
                o.leaves()[:3],
                "o<| p |> pp",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            baca.hairpin_function(
                o.leaves()[5:8],
                "pp <| mp |> pp",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            )
            baca.trill_spanner_function(baca.select.tleaves(o, rleak=True))
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[8]) as o:
            baca.tuplet_bracket_up_function(o)
            baca.stem_tremolo_function(o.pleaves())
            baca.accent_function(o.pheads())
            baca.dynamic_function(o.pheads()[1:], "sfp")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[10]) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.flat_glissando_function(o.rleaves(), right_broken=True)
            baca.hairpin_function(
                baca.select.tleaves(o, rleak=True),
                "o<| mp |> pp pp <| mp |> ! <| mp |>o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 1 + 1]),
                right_broken=True,
            )
            baca.trill_spanner_function(
                baca.select.tleaves(o, rleak=True),
                right_broken=True,
            )
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 10)) as o:
            baca.dls_staff_padding_function(o, 4)
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[6]) as o:
            baca.stop_on_string_function(o.rest(1))
            baca.hairpin_function(o.leaves()[1:3], "o<| ff")
            baca.accent_function(o.phead(-1))
            baca.stem_tremolo_function(o.plt(-1))
            baca.dynamic_function(o.phead(-1), "p")
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[7]) as o:
            baca.stem_tremolo_function(o.pleaves())
            baca.accent_function(o.pheads())
    for name in ["vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(6, 7)) as o:
            baca.metric_modulation_spanner_function(
                baca.select.rleak(o.leaves()[4:]),
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
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
    bfl(cache)
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache)
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)
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
        activate=[
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ],
        always_make_global_rests=True,
        deactivate=[
            *baca.tags.instrument_color_tags(),
            *baca.tags.short_instrument_name_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ],
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
