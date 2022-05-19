import abjad
import baca

from harmony import library

#########################################################################################
######################################### 19 [S] ########################################
#########################################################################################

stage_markup = (
    ("[S.1]", 1),
    ("[<R.1]", 2, "#darkgreen"),
    ("[S.2-3]", 4),
    ("[>T.1]", 11, "#darkgreen"),
    ("[S.4]", 12),
    ("[>T.1]", 13, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
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
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.open_volta(lambda _: baca.select.skip(_, 1 - 1)),
    baca.close_volta(lambda _: baca.select.skip(_, 2 - 1)),
)

commands(
    "Global_Skips",
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("4:3(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("3:4(4)=4", lambda _: baca.select.skip(_, 2 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("4:3(4)=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 11 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 11 - 1)),
    baca.metronome_mark("96", lambda _: baca.select.skip(_, 12 - 1)),
    baca.metronome_mark("4.=4", lambda _: baca.select.skip(_, 12 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 13 - 1)),
    baca.metronome_mark("3:2(4)=4", lambda _: baca.select.skip(_, 13 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 3 - 1)),
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 10 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-eighteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 3 - 1),
        ),
    ),
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-nineteen",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 10 - 1),
        ),
    ),
)

# BFL


commands(
    ("bfl", 1),
    library.make_warble_rhythm(
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    ),
)

commands(
    ("bfl", (2, 8)),
    baca.make_mmrests(),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (2, 4)])
    return result


commands(
    ("bfl", 9),
    library.make_sixteenths(
        [4, 4, 4, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    ),
)

commands(
    ("bfl", 10),
    baca.make_mmrests(),
)

commands(
    ("bfl", 11),
    library.make_sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
)

commands(
    ("bfl", 12),
    library.make_warble_rhythm(
        extra_counts=[2],
    ),
)

commands(
    ("bfl", 13),
    library.make_sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
)

# PERC1

commands(
    ("perc1", 1),
    library.make_appoggiato_rhythm(
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
    ),
)

commands(
    ("perc1", 2),
    library.make_sixteenths(
        [4, 2, "-"],
    ),
)

commands(
    ("perc1", 3),
    baca.make_mmrests(),
)

commands(
    ("perc1", (4, 8)),
    library.make_appoggiato_rhythm(
        divisions=[1, 19, 1, 15],
        counts=[0, 5, 0, 6, 0, 7, 0, 8, 0, 9],
        rest_after=True,
    ),
)

commands(
    ("perc1", 9),
    library.make_appoggiato_rhythm(
        divisions=[16],
        counts=[19],
        rest_after=True,
    ),
)

commands(
    ("perc1", 10),
    baca.make_mmrests(),
)

commands(
    ("perc1", 11),
    library.make_sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("perc1", 12),
    library.make_appoggiato_rhythm(
        divisions=[20],
        counts=[25],
        rest_after=True,
    ),
)

commands(
    ("perc1", 13),
    library.make_sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
)

# PERC2

commands(
    ("perc2", 1),
    library.make_appoggiato_rhythm(
        divisions=[4, 1, 11],
        counts=[0, 0, 4],
        rest_after=[-2, -1],
    ),
)

commands(
    ("perc2", 2),
    library.make_sixteenths(
        [4, 2, "-"],
    ),
)

commands(
    ("perc2", 3),
    baca.make_mmrests(),
)

commands(
    ("perc2", (4, 8)),
    library.make_appoggiato_rhythm(
        divisions=[1, 19, 1, 15],
        counts=[0, 4, 0, 5, 0, 6, 0, 7, 0, 8],
        rest_after=True,
    ),
)

commands(
    ("perc2", 9),
    library.make_appoggiato_rhythm(
        divisions=[16],
        counts=[18],
        rest_after=True,
    ),
)

commands(
    ("perc2", 10),
    baca.make_mmrests(),
)

commands(
    ("perc2", 11),
    library.make_sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
)

commands(
    ("perc2", 12),
    library.make_appoggiato_rhythm(
        divisions=[20],
        counts=[24],
        rest_after=True,
    ),
)

commands(
    ("perc2", 13),
    baca.make_skeleton(
        r"r4. \times 5/4 { c2 }",
    ),
)

# HP

commands(
    ("hp", 1),
    baca.make_mmrests(),
)

commands(
    ("hp", 2),
    library.make_sixteenths(
        [-4, 2, "-"],
    ),
)

commands(
    ("hp", 3),
    baca.make_mmrests(),
)

commands(
    ("hp", 4),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("hp", 5),
    baca.make_notes(),
)

commands(
    ("hp", 6),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("hp", 7),
    baca.make_notes(),
)

commands(
    ("hp", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("hp", 9),
    baca.make_notes(),
)

commands(
    ("hp", 10),
    baca.make_mmrests(),
)

commands(
    ("hp", 11),
    library.make_sixteenths(
        [2, -20, 2, -24],
    ),
)

commands(
    ("hp", 12),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("hp", 13),
    library.make_sixteenths(
        [2, -20, 2, -24],
    ),
)

# VA

commands(
    ("va", 1),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
    return result


commands(
    ("va", 2),
    library.make_sixteenths(
        [-4, -4, 2, 2, 2, 2, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("va", 3),
    baca.make_mmrests(),
)

commands(
    ("va", 4),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("va", 5),
    baca.make_notes(),
)

commands(
    ("va", 6),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("va", 7),
    baca.make_notes(),
)

commands(
    ("va", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("va", 9),
    baca.make_notes(),
)

commands(
    ("va", 10),
    baca.make_mmrests(),
)

commands(
    ("va", 11),
    library.make_sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("va", 12),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("va", 13),
    library.make_sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
)

# VC1

commands(
    ("vc1", 1),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("vc1", 2),
    library.make_sixteenths(
        [-4, 6, 2, -4],
        untie=True,
    ),
)

commands(
    ("vc1", 3),
    baca.make_mmrests(),
)

commands(
    ("vc1", 4),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc1", 5),
    baca.make_notes(),
)

commands(
    ("vc1", 6),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc1", 7),
    baca.make_notes(),
)

commands(
    ("vc1", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc1", 9),
    baca.make_notes(),
)

commands(
    ("vc1", 10),
    baca.make_mmrests(),
)

commands(
    ("vc1", 11),
    library.make_sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

commands(
    ("vc1", 12),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc1", 13),
    library.make_sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

# VC2

commands(
    ("vc2", 1),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("vc2", 2),
    library.make_sixteenths(
        [-4, 6, 2, -4],
        untie=True,
    ),
)

commands(
    ("vc2", 3),
    baca.make_mmrests(),
)

commands(
    ("vc2", 4),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc2", 5),
    baca.make_notes(),
)

commands(
    ("vc2", 6),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc2", 7),
    baca.make_notes(),
)

commands(
    ("vc2", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc2", 9),
    baca.make_notes(),
)

commands(
    ("vc2", 10),
    baca.make_mmrests(),
)

commands(
    ("vc2", 11),
    library.make_sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
)

commands(
    ("vc2", 12),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("vc2", 13),
    library.make_sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
)

# CB1

commands(
    ("cb1", 1),
    library.make_sixteenths(
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    ),
)

commands(
    ("cb1", 2),
    library.make_sixteenths(
        [-4, 6, 2, -4],
        untie=True,
    ),
)

commands(
    ("cb1", 3),
    baca.make_mmrests(),
)

commands(
    ("cb1", 4),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb1", 5),
    baca.make_notes(),
)

commands(
    ("cb1", 6),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb1", 7),
    baca.make_notes(),
)

commands(
    ("cb1", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb1", 9),
    baca.make_notes(),
)

commands(
    ("cb1", 10),
    baca.make_mmrests(),
)

commands(
    ("cb1", 11),
    library.make_sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

commands(
    ("cb1", 12),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb1", 13),
    library.make_sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

# CB2

commands(
    ("cb2", 1),
    library.make_sixteenths(
        [-4, 2, 2, 2, 2],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
        written_quarters=True,
        invisible_pairs=True,
    ),
)

commands(
    ("cb2", 2),
    library.make_sixteenths(
        [2, 2, 6, 2, -4],
        untie=True,
        written_quarters=[0],
        invisible=[1],
    ),
)

commands(
    ("cb2", 3),
    baca.make_mmrests(),
)

commands(
    ("cb2", 4),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb2", 5),
    baca.make_notes(),
)

commands(
    ("cb2", 6),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb2", 7),
    baca.make_notes(),
)

commands(
    ("cb2", 8),
    library.make_tuplet(
        [(1,)],
        force_augmentation=True,
    ),
)

commands(
    ("cb2", 9),
    baca.make_notes(),
)

commands(
    ("cb2", 10),
    baca.make_mmrests(),
)

commands(
    ("cb2", 11),
    library.make_sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)


def preprocessor(divisions):
    result = baca.sequence.fuse(divisions)
    result = baca.sequence.split_divisions(result, [(2, 4), (1, 4), (2, 4)])
    return result


commands(
    ("cb2", 12),
    library.make_sixteenths(
        [3, -1, -8, "-", 3, -1, -8],
        preprocessor=preprocessor,
        extra_counts=[4],
        denominator=None,
    ),
)

commands(
    ("cb2", 13),
    library.make_sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

# phantom & reapply

music_voices = [_ for _ in voice_names if "Music_Voice" in _]

commands(
    music_voices,
    baca.append_phantom_measure(),
    baca.reapply_persistent_indicators(),
)

# bfl

commands(
    ("cb2", 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
)


commands(
    ("bfl", 1),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -5),
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


commands(
    ("bfl", 9),
    baca.pitch("F3"),
    baca.dynamic("mf"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("bfl", 12),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -5),
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
        "o< mf >o niente",
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

commands(
    ("bfl", [11, 13]),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (1, 13)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", 1),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 2),
    ),
    baca.dls_staff_padding(
        5,
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 2, grace=False),
    ),
)

commands(
    ("perc1", 2),
    baca.staff_lines(1),
    library.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(
        lambda _: baca.select.phead(_, 1),
    ),
    baca.dynamic("mp"),
    baca.hairpin(
        "o< mf",
        selector=lambda _: baca.select.rleak(baca.select.pleaves(_)[1:]),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-then-superball-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (4, 8)),
    baca.staff_lines(3),
    baca.dynamic(
        "ff-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: baca.select.rest(_, 1),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 1, grace=False),
    ),
)

commands(
    ("perc1", (4, 9)),
    library.purpleheart_staff_positions([2]),
)

commands(
    ("perc1", 12),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 0),
    ),
    baca.dls_staff_padding(
        5,
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)

commands(
    ("perc1", [11, 13]),
    baca.staff_lines(1),
    library.slate_staff_position(),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

# perc2

commands(
    ("perc2", 1),
    baca.new(
        library.purpleheart_staff_positions([0]),
        selector=lambda _: baca.select.pleaves(_)[:1],
    ),
    baca.new(
        library.purpleheart_staff_positions([2]),
        selector=lambda _: baca.select.pleaves(_)[1:],
    ),
    baca.dynamic(
        "ff-ancora",
        selector=lambda _: baca.select.rest(_, 1),
    ),
    baca.dls_staff_padding(5),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        left_broken=True,
        selector=lambda _: baca.select.leaves(_)[:2],
    ),
)

commands(
    ("perc2", 2),
    baca.staff_lines(1),
    library.brake_drum_staff_position(),
    baca.damp(),
    baca.dynamic("p"),
    baca.dynamic(
        "f",
        selector=lambda _: baca.select.phead(_, 1),
    ),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (4, 8)),
    baca.staff_lines(3),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 1, grace=False),
    ),
)

commands(
    ("perc2", (4, 9)),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: baca.select.rest(_, 1),
    ),
    baca.dls_staff_padding(5),
)

commands(
    ("perc2", 11),
    baca.staff_lines(1),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", 12),
    baca.staff_lines(3),
    library.purpleheart_staff_positions([2]),
    baca.dynamic(
        "ff",
        selector=lambda _: baca.select.rest(_, 0),
    ),
    baca.dls_staff_padding(
        5,
        lambda _: baca.select.leaves(_, grace=False),
    ),
    baca.markup(
        r"\baca-purpleheart-markup",
        abjad.Tweak(r"- \tweak staff-padding 5"),
        selector=lambda _: abjad.select.leaf(_, 0, grace=False),
    ),
)

commands(
    ("perc2", 13),
    baca.staff_lines(1),
    baca.tuplet_bracket_up(),
    library.bass_drum_staff_position(),
    baca.accent(),
    baca.laissez_vibrer(),
    baca.dynamic("mp"),
    baca.dls_staff_padding(6),
    baca.markup(
        r"\baca-bd-struck-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:]),
    ),
)

# perc1, perc2

commands(
    (["perc1", "perc2"], [1, (4, 9), 12]),
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

# hp

commands(
    ("hp", 1),
    baca.clef("treble"),
    baca.staff_lines(5),
)

commands(
    ("hp", 2),
    baca.pitch("G4"),
    baca.laissez_vibrer(),
    baca.dynamic("mf"),
    baca.markup(
        r"\baca-pdlt-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    ("hp", (4, 9)),
    baca.pitch("<G6 A6 Bb6>"),
    baca.ottava(),
    baca.ottava_bracket_staff_padding(5.5),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        "pp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak X-offset 3"),
    ),
)

commands(
    ("hp", 12),
    baca.pitch("<G6 A6 Bb6>"),
    baca.ottava(),
    baca.ottava_bracket_staff_padding(5.5),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(4 + 2),
    baca.markup(
        r"\baca-bisb-markup",
        abjad.Tweak(r"- \tweak X-offset 4"),
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", [11, 13]),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

# va


commands(
    ("va", 2),
    baca.tuplet_bracket_up(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o niente o<| mp |>o",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[-1:])[-1],
    ),
)

commands(
    ("va", [(1, 2), (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("va", 12),
    baca.clef("treble"),
)

# vc1

commands(
    ("vc1", 1),
    baca.clef("treble"),
)

commands(
    ("vc1", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("D5"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc1", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<G#5 A5 Bb5>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc1", 12),
    baca.clef("treble"),
)

# vc2

commands(
    ("vc2", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch("<A5 Bb5 Cb6>"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc2", 2),
    baca.note_head_style_harmonic(),
    baca.pitch("Btqf4"),
    baca.markup(
        r"\baca-string-iv-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("vc2", 12),
    baca.clef("treble"),
)

commands(
    ("vc2", [11, 13]),
    baca.tuplet_bracket_staff_padding(3),
    baca.new(
        baca.rest_extra_offset(
            (-1.5, 0),
            lambda _: baca.select.rest(_, -1),
        ),
        match=[0],
    ),
)

# cb1

commands(
    ("cb1", [1, (4, 9), 12]),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<B5 C6 Db6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb1", 2),
    baca.clef("bass"),
    baca.note_head_style_harmonic(),
    baca.pitch("G3"),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb1", 4),
    baca.clef("treble"),
)

commands(
    ("cb1", 12),
    baca.clef("treble"),
)

# cb2

commands(
    ("cb2", 1),
    baca.tuplet_bracket_up(),
)

commands(
    ("cb2", (1, 2)),
    baca.pitch(
        "E5",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente o<| mp |>o niente",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1, 2, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    # TODO: text spanner currently must precede pitched trill spanner; fix
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=lambda _: baca.select.leaves(_)[1:8],
    ),
    baca.trill_spanner(
        alteration="Fqs5",
    ),
)

commands(
    ("cb2", (4, 9)),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "<A#5 B5 C6>",
        do_not_transpose=True,
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
    ),
)

commands(
    ("cb2", (11, 13)),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
)

commands(
    ("cb2", (12, 13)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=lambda _: baca.rleak(abjad.select.leaves(_)[4:]),
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1"], 1),
    # TODO: promote to library.make_sixteenths()
    baca.invisible_music(
        lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o<| mp |> pp pp <| mp |>o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.dynamic_text_x_offset(
        -3,
        lambda _: baca.select.pleaf(_, 1),
    ),
    baca.dynamic_text_x_offset(
        -0.25,
        lambda _: baca.select.pleaf(_, -1),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["vc1", "vc2", "cb1"], 2),
    baca.flat_glissando(),
    baca.hairpin(
        "o< mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 1 + 1]),
        selector=lambda _: baca.select.tleaves(_, rleak=True),
    ),
    baca.new(
        baca.trill_spanner(),
        match=[0, 1],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 2)),
    baca.dls_staff_padding(4),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (4, 9)),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< fff-scratch",
    ),
    baca.dls_staff_padding(4 + 2),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 12),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        "fff-scratch",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 12),
    baca.staff_lines(5),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 11),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
)

commands(
    (["va", "vc1", "vc2", "cb1"], 13),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (11, 13)),
    baca.dls_staff_padding(6),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_section(
        score,
        commands,
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.LOCAL_MEASURE_NUMBER,
            baca.tags.STAGE_NUMBER,
        ),
        always_make_global_rests=True,
        deactivate=(
            *baca.tags.instrument_color_tags(),
            *baca.tags.margin_markup_color_tags(),
            baca.tags.RHYTHM_ANNOTATION_SPANNER,
        ),
        fermata_measure_empty_overrides=[3, 10],
        global_rests_in_every_staff=True,
        parts_metric_modulation_multiplier=(0.525, 0.525),
        stage_markup=stage_markup,
        transpose_score=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
