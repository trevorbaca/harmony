import abjad
import baca

from harmony import library

#########################################################################################
######################################### 14 [N] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
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
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests):
    stage_markup = (
        ("[N.1-2]", 1),
        ("[>O.1]", 4, "#darkgreen"),
        ("[<M.1]", 5, "#darkgreen"),
        ("[N.3-6]", 6),
        ("[>P.1]", 11, "#darkgreen"),
    )
    baca.section.label_stage_numbers(skips, stage_markup)
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
        baca.metronome_mark(skip, item, library.manifests)
    for index, string in (
        (3 - 1, "fermata"),
        (10 - 1, "short"),
    ):
        baca.global_fermata(rests[index], string)
    wrappers = baca.markup(
        skips[3 - 1],
        r"\harmony-text-fourteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup(
        skips[10 - 1],
        r"\harmony-text-fifteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


cerulean = [1, -3, 1, -5, 1, -7, 1, -9, 1, -11, 1, -13, 1, -15, 1, -17, 1, "-"]


def BFL(voice, accumulator):
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
    baca.section.append_anchor_note(voice)


def PERC1(voice, accumulator):
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


def PERC2(voice, accumulator):
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


def HP(voice, accumulator):
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


def VA(voice, accumulator):
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
    baca.section.append_anchor_note(voice)


def VC1(voice, accumulator):
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


def VC2(voice, accumulator):
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


def CB1(voice, accumulator):
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
    baca.section.append_anchor_note(voice)


def CB2(voice, accumulator):
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
    baca.section.append_anchor_note(voice)


def bfl(cache):
    name = "bfl"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.pitches(o, library.warble_pitches())
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3),
            baca.accidental_font_size(u, -3),
            baca.accidental_x_offset(u, 0),
            baca.accidental_y_offset(u, -2),
        baca.hairpin(
            o.tleaves(),
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (3, 4)
            ),
        )
        baca.trill_spanner(
            o.tleaves(),
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "E3")
        baca.accent(o.pheads())
        baca.dynamic(o.phead(0), "mf")
        baca.covered_spanner(
            baca.select.tleaves(o, rleak=True),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m[5]) as o:
        # TODO: promote to music = library.make_sixteenths():
        baca.repeat_tie(o.pleaf(-1))
        baca.pitch(o, "B4")
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o<| f |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
        )
    with baca.scope(m[6]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -1),
        )
        baca.hairpin(
            o.tleaves(),
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (3, 4)
            ),
        )
        baca.trill_spanner(
            o.tleaves(),
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        )
    with baca.scope(m[9]) as o:
        baca.pitches(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -2),
        )
        baca.hairpin(
            o.tleaves(),
            "o< mp >o niente",
            pieces=lambda _: abjad.select.partition_by_ratio(
                abjad.select.leaves(_), (3, 4)
            ),
        )
        baca.trill_spanner(
            o.tleaves(),
            abjad.Tweak(r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"),
        )
    with baca.scope(m.get(6, 9)) as o:
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size(u, -3)
            baca.accidental_font_size(u, -3)
            baca.accidental_x_offset(u, 0)
            baca.accidental_y_offset(u, -2)
    with baca.scope(m[11]) as o:
        baca.pitch(o, "D5")
        baca.dynamic(o.phead(0), "p")
        for run in baca.select.runs(o):
            run = baca.select.rleaves(run)
            baca.text_spanner(
                run,
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            )
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[4]) as o:
        library.slate_staff_position(o)
        baca.dynamic(o.phead(0), '"f"')
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 4)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[6]) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.brake_drum_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[9]) as o:
        library.brake_drum_staff_position(o)
    with baca.scope(m[11]) as o:
        library.brake_drum_staff_position(o)
        baca.dynamic(o.phead(0), "p")
        baca.markup(
            o.pleaf(0),
            r"\baca-brake-drum-paper-towel-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 11)) as o:
        baca.dls_staff_padding(o, 6)


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(o.pheads(), '"ff"')
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(1, 4)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[5]) as o:
        baca.staff_lines(o.leaf(0), 3)
        baca.staff_position(o.runs()[:1], -2, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.staff_position(o.runs()[1:], 0, allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.dynamic(o.rest(0), "p")
        baca.dynamic(o.rest(1), "f")
        baca.markup(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.staff_lines(o.leaf(0), 1)
        library.slate_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.dynamic(
            o.phead(0),
            '"ff"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.hairpin(
            o,
            # '"ff" "ff" "ff" "f" "f" mf mp p pp',
            '"ff" "ff" "f" "f" mf mp p pp',
            pieces=lambda _: baca.select.plts(_)[1:],
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[11]) as o:
        library.tam_tam_staff_position(o)
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(6, 11)) as o:
        baca.dls_staff_padding(o, 6)


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        with baca.scope(m[5]) as o:
            rests = abjad.select.rests(o)
            rests = [
                _ for _ in rests if abjad.get.duration(_) >= abjad.Duration((1, 2))
            ]
            baca.dots_extra_offset(rests, (1, 0))
            baca.dots_x_extent_false(rests)
            baca.rest_x_extent_zero(rests)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "E1")
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "f")
        baca.dls_staff_padding(o, 7)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.pitch(o, "<B4 C5>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[4]) as o:
        baca.double_flageolet(o.phead(0))
        baca.dynamic(o.phead(0), "f-ancora")
        baca.markup(
            o.pleaf(0),
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
        )
    with baca.scope(m[5]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.pitch(o, "<B2 C3 Db3>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[5]) as o:
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            baca.select.tleaves(o, rleak=True),
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        )
        baca.markup(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding(o, 4)
    with baca.scope(m.get(6, 9)) as o:
        baca.pitch(o, "E1")
        baca.damp(baca.select.leaf_after_each_ptail(o))
        baca.dynamic(o.phead(0), "f")
    with baca.scope(m[11]) as o:
        baca.pitch(o, "F1")
        baca.dynamic(o.phead(0), "p")
    with baca.scope(m.get(6, 11)) as o:
        baca.dls_staff_padding(o, 7)


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.interpolate_pitches(o, "D#3", "E3")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(baca.select.pleaves(o, grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m.get(4, 5)) as o:
        with baca.scope(o.leaves(grace=False)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitch(u, "Db3")
        baca.accent(o.pheads()[:3])
        with baca.scope(o.leaves(grace=True)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_d_flat_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m.get(4, 5)) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False, rleak=True),
            "f >o niente",
        )
        baca.metric_modulation_spanner(
            baca.select.pleaves(o, grace=False)[:4],
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "D#3", "E3")
        for run in baca.select.runs(o):
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.pitches(o, "D4 Eb4")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(o.plts(), '"ff" "ff"')
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "A2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
    with baca.scope(m[5]) as o:
        with baca.scope(o.leaves(grace=False)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitch(u, "C3")
        with baca.scope(o.leaves(grace=True)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_c_3(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[5]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False, rleak=True),
            "mf >o niente",
        )
    with baca.scope(m.get(4, 5)) as o:
        baca.dls_staff_padding(o, 4),
    with baca.scope(m.get(6, 8)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        baca.tuplet_bracket_staff_padding(o, 3)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o,
            '"ff" "ff" "f" "f" mf mp p',
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[9]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.dynamic(o.phead(0), "pp")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
    with baca.scope(m[11]) as o:
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
    for n in [9, 11]:
        with baca.scope(m[n]) as o:
            baca.pitch(o, "D#3")
    with baca.scope(m.get(9, 11)) as o:
        baca.dls_staff_padding(o, 4)


def vc2(cache):
    name = "vc2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.clef(o.leaf(0), "percussion")
        baca.staff_lines(o.leaf(0), 1)
        library.bridge_staff_position(o)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.hairpin(
            o,
            '"ff" "ff"',
            pieces=lambda _: baca.select.plts(_),
        )
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[4]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "G2")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
        baca.dls_staff_padding(o, 4)
    with baca.scope(m[5]) as o:
        baca.tuplet_bracket_up(o)
        with baca.scope(o.leaf(1)) as u:
            baca.clef(u, "percussion")
            baca.staff_lines(u, 1)
            library.bridge_staff_position(u)
        baca.accent(o.pheads())
        baca.stem_tremolo(o.pleaves())
        baca.dynamic(o.phead(0), '"ff"')
    with baca.scope(m.get(6, 9)) as o:
        library.bridge_staff_position(o)
        baca.stem_tremolo(o.pleaves())
        baca.accent(o.pheads())
        baca.hairpin(
            o,
            '"ff" "ff" "f" mf mp p pp',
            pieces=lambda _: baca.select.plts(_),
        )
    with baca.scope(m.get(5, 6)) as o:
        baca.metric_modulation_spanner(
            o.leaves()[1:-3],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
    with baca.scope(m.get(5, 9)) as o:
        baca.dls_staff_padding(o, 6)
    with baca.scope(m[11]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.staff_lines(o.leaf(0), 5)
        baca.pitch(o, "C#3")
        baca.dynamic(
            o.phead(0),
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding(o, 4)
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.damp_spanner(
                run,
                abjad.Tweak(r"- \tweak staff-padding 3"),
            )


def cb1(cache):
    name = "cb1"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.interpolate_pitches(o, "F2", "E2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "G#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
    with baca.scope(m[5]) as o:
        with baca.scope(o.leaves(grace=False)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitch(u, "B2")
        with baca.scope(o.leaves(grace=True)) as u:
            baca.note_head_style_harmonic_black(u)
            baca.pitches(
                u,
                library.appoggiato_pitches_b_2(),
                allow_obgc_mutation=True,
            )
            cache.rebuild()
            m = cache[name]
    with baca.scope(m[5]) as o:
        baca.hairpin(
            baca.select.tleaves(o, grace=False, rleak=True),
            "mf >o niente",
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "F2", "E2")
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.pitches(o, "E3 D#3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m.get(1, 2)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        baca.interpolate_pitches(o, "D#2", "E2")
        baca.glissando(
            o.tleaves(),
            allow_repeats=True,
            hide_middle_note_heads=True,
        )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[4]) as o:
        baca.pitch(o, "F#1")
        for run in baca.select.runs(o):
            run = baca.select.rleak(run)
            baca.stop_on_string(run[-1])
            baca.hairpin(run, "o<| f")
    with baca.scope(m[5]) as o:
        baca.pitch(o, "B2")
        baca.dynamic(o.phead(0), "mp")
        baca.damp_spanner(
            baca.select.rleak(baca.select.tleaves(o)),
            abjad.Tweak(r"- \tweak staff-padding 3"),
        )
    with baca.scope(m.get(6, 9)) as o:
        baca.note_head_style_harmonic(o.pleaves())
        for run in baca.select.runs(o):
            baca.interpolate_pitches(run, "D#2", "E2")
            baca.glissando(
                run,
                allow_repeats=True,
                hide_middle_note_heads=True,
            )
        baca.stem_tremolo(o.pleaves(grace=False))
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            direction=abjad.DOWN,
        )
    with baca.scope(m[11]) as o:
        baca.pitches(o, "C#3 D3")
        for run in baca.select.runs(o):
            baca.glissando(run, allow_repeats=True)
    with baca.scope(m.get(1, 11)) as o:
        baca.dls_staff_padding(o, 4)


def composites(cache):
    for name in ["va", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            baca.hairpin(o.tleaves(), "o< mp")
            baca.scp_spanner(
                o.tleaves(),
                "T1 -> P1",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
                bookend=True,
            )
        with baca.scope(m.get(6, 9)) as o:
            baca.hairpin(o.run(0), "o< mp")
            baca.hairpin(o.run(1), "o< mf")
            baca.hairpin(o.run(2), "o< f")
            baca.hairpin(o.run(3), "o< ff")
            for run in baca.select.runs(o):
                baca.scp_spanner(
                    run,
                    "T1 -> P1",
                    abjad.Tweak(r"- \tweak staff-padding 3"),
                    autodetect_right_padding=False,
                    bookend=True,
                )
        with baca.scope(m[11]) as o:
            pheads = baca.select.pheads(o)
            pheads = [
                _ for _ in pheads if abjad.get.duration(_) >= abjad.Duration((1, 8))
            ]
            baca.alternate_bow_strokes(
                pheads,
                abjad.Tweak(r"- \tweak staff-padding 4"),
                full=True,
            ),
            baca.dynamic(
                o.phead(0),
                "ppp",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            )
            baca.half_clt_spanner(
                baca.select.rleak(baca.select.ltleaves(o)),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.section.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
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
    baca.section.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.section.cache_leaves(
        score,
        len(accumulator.time_signatures),
        library.voice_abbreviations,
    )
    bfl(cache)
    perc1(cache)
    perc2(cache)
    perc1_perc2(cache)
    hp(cache)
    va(cache)
    vc1(cache)
    vc2(cache)
    cb1(cache)
    cb2(cache)
    composites(cache)
    return score, accumulator


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    timing = baca.build.Timing()
    score, accumulator = make_score(
        environment.first_measure_number,
        environment.previous_persist["persistent_indicators"],
        timing,
    )
    metadata, persist = baca.section.postprocess_score(
        score,
        accumulator.time_signatures,
        **baca.section.section_defaults(),
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
        environment=environment,
        global_rests_in_topmost_staff=True,
        manifests=library.manifests,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        timing=timing,
        transpose_score=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        lilypond_file,
        metadata,
        persist,
        timing,
        environment.arguments,
    )


if __name__ == "__main__":
    main()
