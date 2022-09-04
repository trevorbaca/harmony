import abjad
import baca

from harmony import library

#########################################################################################
######################################### 19 [S] ########################################
#########################################################################################


def make_empty_score():
    score = library.make_empty_score()
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=[
            (4, 4),
            (4, 4),
            (1, 4),
            (5, 4),
            (4, 4),
            (5, 4),
            (4, 4),
            (5, 4),
            (4, 4),
            (1, 4),
            (4, 4),
            (5, 4),
            (4, 4),
        ],
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips, rests, first_measure_number):
    stage_markup = (
        ("[S.1]", 1),
        ("[<R.1]", 2, "#darkgreen"),
        ("[S.2-3]", 4),
        ("[>T.1]", 11, "#darkgreen"),
        ("[S.4]", 12),
        ("[>T.1]", 13, "#darkgreen"),
    )
    baca.label_stage_numbers(skips, stage_markup)
    for index, item in (
        (1 - 1, "96"),
        (1 - 1, "4:3(4)=4"),
        (2 - 1, "72"),
        (2 - 1, "3:4(4)=4"),
        (4 - 1, "96"),
        (4 - 1, "4:3(4)=4"),
        (11 - 1, "144"),
        (11 - 1, "3:2(4)=4"),
        (12 - 1, "96"),
        (12 - 1, "4.=4"),
        (13 - 1, "144"),
        (13 - 1, "3:2(4)=4"),
    ):
        skip = skips[index]
        baca.metronome_mark_function(skip, item, library.manifests)
    baca.open_volta_function(skips[1 - 1], first_measure_number)
    baca.close_volta_function(skips[2 - 1], first_measure_number)
    for index, string in (
        (3 - 1, "fermata"),
        (10 - 1, "fermata"),
    ):
        baca.global_fermata_function(rests[index], string)
    wrappers = baca.markup_function(
        skips[3 - 1],
        r"\harmony-text-eighteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)
    wrappers = baca.markup_function(
        skips[10 - 1],
        r"\harmony-text-nineteen",
        abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
    )
    baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = library.make_warble_rhythm(
        accumulator.get(1),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 8))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(9),
        [4, 4, 4, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(12),
        extra_counts=[2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [-8, 8, -16, 4],
        extra_counts=[1],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 8),
        divisions=[1, 19, 1, 15],
        counts=[0, 5, 0, 6, 0, 7, 0, 8, 0, 9],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        divisions=[16],
        counts=[19],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(12),
        divisions=[20],
        counts=[25],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def PERC2(voice, accumulator):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        divisions=[4, 1, 11],
        counts=[0, 0, 4],
        rest_after=[-2, -1],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [4, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 8),
        divisions=[1, 19, 1, 15],
        counts=[0, 4, 0, 5, 0, 6, 0, 7, 0, 8],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(9),
        divisions=[16],
        counts=[18],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(12),
        divisions=[20],
        counts=[24],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"r4. \times 5/4 { c2 }",
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 2, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, -20, 2, -24],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [2, -20, 2, -24],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, -4, 2, 2, 2, 2, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    )
    voice.extend(music)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    )
    voice.extend(music)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-4, 6, 2, -4],
        untie=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(12),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -7, 3, -7, 3, -7, 3, -14],
    )
    voice.extend(music)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, 2, 2, 2, 2],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 6, 2, -4],
        untie=True,
        written_quarters=[0],
        invisible=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(4),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(5))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(6),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7))
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(9))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(11),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (1, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(12),
        [3, -1, -8, "-", 3, -1, -8],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(13),
        [3, -5, 3, -5, 3, -5, 3, -23],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    with baca.scope(m[1]) as o:
        baca.pitches_function(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -5),
        )
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size_function(u, -3)
            baca.accidental_font_size_function(u, -3)
            baca.accidental_x_offset_function(u, 0)
            baca.accidental_y_offset_function(u, -2)
            baca.hairpin_function(
                u,
                "o< mp >o niente",
                pieces=lambda _: abjad.select.partition_by_ratio(
                    abjad.select.leaves(_),
                    (3, 4),
                ),
            )
            baca.trill_spanner_function(
                u,
                abjad.Tweak(
                    r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"
                ),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    with baca.scope(m[9]) as o:
        baca.pitch_function(o, "F3")
        baca.dynamic_function(o.phead(0), "mf")
        baca.covered_spanner_function(
            o.rleaves(),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )
    with baca.scope(m[12]) as o:
        baca.pitches_function(
            o,
            abjad.sequence.rotate(library.warble_pitches(), -5),
        )
        with baca.scope(o.tleaves()) as u:
            baca.note_head_font_size_function(u, -3)
            baca.accidental_font_size_function(u, -3)
            baca.accidental_x_offset_function(u, 0)
            baca.accidental_y_offset_function(u, -2)
            baca.hairpin_function(
                u,
                "o< mf >o niente",
                pieces=lambda _: abjad.select.partition_by_ratio(
                    abjad.select.leaves(_),
                    (3, 4),
                ),
            )
            baca.trill_spanner_function(
                u,
                abjad.Tweak(
                    r"- \tweak bound-details.left.text \harmony-d-d-sharp-markup"
                ),
                abjad.Tweak(r"- \tweak staff-padding 8"),
            )
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.pitch_function(o, "Eb3")
            baca.dynamic_function(o.phead(0), "pp")
            for run in baca.select.runs(o):
                run = baca.select.rleak(baca.select.ltleaves(run), count=2)
                baca.covered_spanner_function(
                    run,
                    abjad.Tweak(r"- \tweak staff-padding 5.5"),
                )
    with baca.scope(m.get(1, 13)) as o:
        baca.dls_staff_padding_function(o, 4)


def perc1(cache):
    name = "perc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic_function(o.rest(2), "ff")
        baca.dls_staff_padding_function(o.leaves(grace=False), 5)
        baca.markup_function(
            o.leaf(2, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.bass_drum_staff_position_function(o)
        baca.accent_function(o.phead(0))
        baca.laissez_vibrer_function(o.phead(1))
        baca.dynamic_function(o.phead(0), "mp")
        baca.hairpin_function(baca.select.rleak(o.pleaves()[1:]), "o< mf")
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-struck-then-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 8)) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        baca.dynamic_function(
            o.rest(1),
            "ff-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding_function(o, 5)
        baca.markup_function(
            o.leaf(1, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(4, 9)) as o:
        library.purpleheart_staff_positions_function(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.dynamic_function(o.rest(0), "ff")
        baca.dls_staff_padding_function(o.leaves(grace=False), 5)
        baca.markup_function(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.staff_lines_function(o.leaf(0), 1)
            library.slate_staff_position_function(o)
            baca.dynamic_function(o.phead(0), "pp")
            baca.dls_staff_padding_function(o, 6)
            baca.markup_function(
                o.pleaf(0),
                r"\baca-slate-scrape-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
            )


def perc2(cache):
    name = "perc2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        library.purpleheart_staff_positions_function(o.pleaves()[:1], [0])
        library.purpleheart_staff_positions_function(
            o.pleaves()[1:], [2], allow_obgc_mutation=True
        )
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[1]) as o:
        baca.dynamic_function(o.rest(1), "ff-ancora")
        baca.dls_staff_padding_function(o, 5)
        baca.metric_modulation_spanner_function(
            o.leaves()[:2],
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            left_broken=True,
        )
    with baca.scope(m[2]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.brake_drum_staff_position_function(o)
        baca.damp_function(o.phead(0))
        baca.dynamic_function(o.phead(0), "p")
        baca.dynamic_function(o.phead(1), "f")
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(4, 8)) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        baca.markup_function(
            o.leaf(1, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m.get(4, 9)) as o:
        library.purpleheart_staff_positions_function(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 9)) as o:
        baca.dynamic_function(
            o.rest(1),
            "ff-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding_function(o, 5)
    with baca.scope(m[11]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        library.slate_staff_position_function(o)
        baca.stem_tremolo_function(o.pleaves())
        baca.accent_function(o.pheads())
        baca.dynamic_function(o.phead(0), "pp")
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m[12]) as o:
        baca.staff_lines_function(o.leaf(0), 3)
        library.purpleheart_staff_positions_function(o, [2], allow_obgc_mutation=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.dynamic_function(o.rest(0), "ff")
        baca.dls_staff_padding_function(o.leaves(grace=False), 5)
        baca.markup_function(
            o.leaf(0, grace=False),
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        )
    with baca.scope(m[13]) as o:
        baca.staff_lines_function(o.leaf(0), 1)
        baca.tuplet_bracket_up_function(o)
        library.bass_drum_staff_position_function(o)
        baca.accent_function(o.phead(0))
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mp")
        baca.dls_staff_padding_function(o, 6)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.leaves()[-1:]),
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
        )


def perc1_perc2(cache):
    for name in ["perc1", "perc2"]:
        m = cache[name]
        for item in [1, (4, 9), 12]:
            with baca.scope(m.get(item)) as o:
                rests = [
                    _
                    for _ in abjad.select.rests(o)
                    if abjad.get.duration(_) >= abjad.Duration((1, 2))
                ]
                for rest in rests:
                    baca.dots_extra_offset_function(rest, (1, 0))
                    baca.dots_x_extent_false_function(rest)
                    baca.rest_x_extent_zero_function(rest)


def hp(cache):
    name = "hp"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.staff_lines_function(o.leaf(0), 5)
    with baca.scope(m[2]) as o:
        baca.pitch_function(o, "G4"),
        baca.laissez_vibrer_function(o.ptails())
        baca.dynamic_function(o.phead(0), "mf")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    with baca.scope(m.get(1, 2)) as o:
        baca.dls_staff_padding_function(o, 4)
    with baca.scope(m.get(4, 9)) as o:
        baca.pitch_function(o, "<G6 A6 Bb6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 9)) as o:
        baca.ottava_function(o.tleaves())
        baca.ottava_bracket_staff_padding_function(o, 5.5)
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(
            o.phead(0),
            "pp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.dls_staff_padding_function(o, 4 + 2)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak X-offset 3"),
        )
    with baca.scope(m[12]) as o:
        baca.pitch_function(o, "<G6 A6 Bb6>")
        cache.rebuild()
        m = cache[name]
    with baca.scope(m[12]) as o:
        baca.ottava_function(o.tleaves())
        baca.ottava_bracket_staff_padding_function(o, 5.5)
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "pp")
        baca.dls_staff_padding_function(o, 4 + 2)
        baca.markup_function(
            o.pleaf(0),
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak X-offset 4"),
            abjad.Tweak(r"- \tweak staff-padding 4"),
        )
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.pitch_function(o, "F#4")
            baca.laissez_vibrer_function(o.ptails())
            baca.dynamic_function(o.phead(0), "p")
            baca.dls_staff_padding_function(o, 4)
            baca.markup_function(
                o.pleaf(0),
                r"\baca-sons-xylophoniques-markup",
                abjad.Tweak(r"- \tweak staff-padding 4"),
            )


def va(cache):
    name = "va"
    m = cache[name]
    with baca.scope(m[2]) as o:
        baca.tuplet_bracket_up_function(o)
        baca.stem_tremolo_function(o.pleaves())
        baca.hairpin_function(
            o.tleaves(),
            "o<| mp |>o niente o<| mp |>o niente o<| mp |>o",
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
        baca.dynamic_function(baca.select.rleak(o.leaves()[-1:])[-1], "niente")
    for item in [(1, 2), (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o, "<G#5 A5 Bb5>")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-i-markup",
                abjad.Tweak(r"- \tweak padding 1"),
            )
    with baca.scope(m[12]) as o:
        baca.clef_function(o.leaf(0), "treble")


def vc1(cache):
    name = "vc1"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.clef_function(o.leaf(0), "treble")
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.pitch_function(o, "D5")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    for item in [1, (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o, "<G#5 A5 Bb5>")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-i-markup",
                abjad.Tweak(r"- \tweak padding 1"),
            )
    with baca.scope(m[12]) as o:
        baca.clef_function(o.leaf(0), "treble")


def vc2(cache):
    name = "vc2"
    m = cache[name]
    for item in [1, (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o, "<A5 Bb5 Cb6>")
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-i-markup",
                abjad.Tweak(r"- \tweak padding 1"),
            )
    with baca.scope(m[2]) as o:
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.pitch_function(o, "Btqf4")
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iv-markup",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    with baca.scope(m[12]) as o:
        baca.clef_function(o.leaf(0), "treble")
    with baca.scope(m[11]) as o:
        baca.rest_extra_offset_function(o.rest(-1), (-1.5, 0))
    for n in [11, 13]:
        with baca.scope(m[n]) as o:
            baca.tuplet_bracket_staff_padding_function(o, 3)


def cb1(cache):
    name = "cb1"
    m = cache[name]
    for item in [1, (4, 9), 12]:
        with baca.scope(m.get(item)) as o:
            baca.pitch_function(o, "<B5 C6 Db6>", do_not_transpose=True)
            cache.rebuild()
            m = cache[name]
        with baca.scope(m.get(item)) as o:
            baca.note_head_style_harmonic_function(o.pleaves())
            baca.markup_function(
                o.pleaf(0),
                r"\baca-string-iii-markup",
                abjad.Tweak(r"- \tweak padding 1"),
            )
    with baca.scope(m[2]) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.pitch_function(o, "G3"),
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    with baca.scope(m[4]) as o:
        baca.clef_function(o.leaf(0), "treble")
    with baca.scope(m[12]) as o:
        baca.clef_function(o.leaf(0), "treble")


def cb2(cache):
    name = "cb2"
    m = cache[name]
    with baca.scope(m[1]) as o:
        baca.tuplet_bracket_up_function(o)
    with baca.scope(m.get(1, 2)) as o:
        baca.pitch_function(o, "E5", do_not_transpose=True)
        baca.hairpin_function(
            baca.select.tleaves(o, rleak=True),
            "o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 2, 1 + 1]),
        )
        # TODO: text spanner currently must precede pitched trill spanner; fix
        baca.metric_modulation_spanner_function(
            o.leaves()[1:8],
            abjad.Tweak(r"- \tweak staff-padding 8"),
        )
        baca.trill_spanner_function(
            baca.select.tleaves(o, rleak=True),
            alteration="Fqs5",
        )
    with baca.scope(m.get(4, 9)) as o:
        baca.pitch_function(o, "<A#5 B5 C6>", do_not_transpose=True)
        cache.rebuild()
        m = cache[name]
    with baca.scope(m.get(4, 9)) as o:
        baca.note_head_style_harmonic_function(o.pleaves())
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
        )
    with baca.scope(m.get(11, 13)) as o:
        baca.clef_function(o.leaf(0), "percussion")
        baca.staff_lines_function(o.leaf(0), 1)
        library.bridge_staff_position_function(o)
        baca.accent_function(o.pheads())
        baca.stem_tremolo_function(o.pleaves())
        baca.dynamic_function(o.phead(0), "pp")
        baca.dls_staff_padding_function(o, 6)
    with baca.scope(m.get(12, 13)) as o:
        baca.metric_modulation_spanner_function(
            baca.select.rleak(o.leaves()[4:]),
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        )


def composites(cache):
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[1]) as o:
            # TODO: promote to music = library.make_sixteenths()
            baca.invisible_music_function(abjad.select.get(o.pleaves(), [1], 2))
            baca.stem_tremolo_function(o.pleaves())
            baca.hairpin_function(
                baca.select.tleaves(o, rleak=True),
                "o<| mp |> pp pp <| mp |>o niente",
                pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
            )
            baca.dynamic_text_x_offset_function(o.pleaf(1), -3)
            baca.dynamic_text_x_offset_function(o.pleaf(-1), -0.25)
            baca.markup_function(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.flat_glissando_function(o.pleaves())
            baca.hairpin_function(
                baca.select.tleaves(o, rleak=True),
                "o< mp >o niente",
                pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
            )
    for name in ["vc1", "vc2"]:
        m = cache[name]
        with baca.scope(m[2]) as o:
            baca.trill_spanner_function(baca.select.tleaves(o, rleak=True)),
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(1, 2)) as o:
            baca.dls_staff_padding_function(o, 4)
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(4, 9)) as o:
            baca.stem_tremolo_function(o.pleaves())
            baca.hairpin_function(o, "o< fff-scratch")
            baca.dls_staff_padding_function(o, 4 + 2)
            baca.markup_function(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[12]) as o:
            baca.stem_tremolo_function(o.pleaves())
            baca.dynamic_function(
                o.phead(0),
                "fff-scratch",
                abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            )
            baca.markup_function(o.pleaf(0), r"\baca-quasi-bisb-markup")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[12]) as o:
            baca.staff_lines_function(o.leaf(0), 5)
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[11]) as o:
            baca.clef_function(o.leaf(0), "percussion")
            baca.staff_lines_function(o.leaf(0), 1)
            library.bridge_staff_position_function(o)
            baca.stem_tremolo_function(o.pleaves())
            baca.accent_function(o.pheads())
            baca.dynamic_function(o.phead(0), "pp")
    for name in ["va", "vc1", "vc2", "cb1"]:
        m = cache[name]
        with baca.scope(m[13]) as o:
            baca.clef_function(o.leaf(0), "percussion")
            baca.staff_lines_function(o.leaf(0), 1)
            library.bridge_staff_position_function(o)
            baca.stem_tremolo_function(o.pleaves())
            baca.accent_function(o.pheads())
            baca.dynamic_function(o.phead(0), "pp")
    for name in ["va", "vc1", "vc2", "cb1", "cb2"]:
        m = cache[name]
        with baca.scope(m.get(11, 13)) as o:
            baca.dls_staff_padding_function(o, 6)


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    first_measure_number = baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"], score["Rests"], first_measure_number)
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
    bfl(cache["bfl"])
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
