import abjad
import baca

from harmony import library

#########################################################################################
######################################### 22 [V] ########################################
#########################################################################################

stage_markup = (
    ("[V.1-3]", 1),
    ("[◀T.1]", 4, "#darkgreen"),
    ("[V.4-5]", 5),
    ("[V.6]", 12),
    ("[◀T.2]", 13, "#darkgreen"),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (3, 4),
        (3, 4),
        (3, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (1, 4),
        (3, 4),
        (4, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.not_parts(
        baca.rehearsal_mark(
            "V",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 18)"),
        ),
    ),
    baca.only_parts(
        baca.rehearsal_mark(
            "V",
            lambda _: baca.select.skip(_, 1 - 1),
            abjad.Tweak(r"- \tweak extra-offset #'(0 . 10)"),
            font_size=4,
        ),
    ),
)

commands(
    "Global_Skips",
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("5:4(4)=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 4 - 1)),
    baca.metronome_mark("72", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("2=4", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("144", lambda _: baca.select.skip(_, 13 - 1)),
    baca.metronome_mark("8=4", lambda _: baca.select.skip(_, 13 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 11 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-one",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 11 - 1),
        ),
    ),
)

# bfl

commands(
    ("bfl", 3),
    library.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("Gqs5"),
    baca.hairpin(
        "o< mp >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="A5",
        map=lambda _: baca.select.runs(_),
    ),
)

commands(
    ("bfl", 4),
    library.sixteenths(
        [-8, 8, -16, 4],
        extra_counts=[1],
    ),
    baca.pitch("Eb3"),
    baca.dynamic("pp"),
    baca.covered_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        map=lambda _: baca.select.rleak_runs(_),
    ),
)

commands(
    ("bfl", (5, 10)),
    library.sixteenths(
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("Gqs5"),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        alteration="A5",
    ),
)

commands(
    ("bfl", 13),
    library.sixteenths(
        [-12, 4, "-"],
        extra_counts=[1],
    ),
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
    ("perc1", 3),
    library.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "o< pp >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", 4),
    library.sixteenths(
        [8, -8, 8, -8, 8, -16],
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", (5, 10)),
    baca.make_notes(),
    library.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        baca.selectors.pleaves([0, -1]),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", 12),
    baca.make_notes(),
    library.triangle_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
)

commands(
    ("perc1", 13),
    library.sixteenths(
        [-8, 8, "-"],
        extra_counts=[2],
        denominator=None,
    ),
    library.slate_staff_position(),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-slate-scrape-markup",
        abjad.Tweak(r"- \tweak staff-padding 7"),
    ),
)

commands(
    ("perc1", (1, 13)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", 3),
    library.sixteenths(
        [-4, 4, -4],
    ),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p-ancora"),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", 4),
    library.sixteenths(
        [2, -8, 2, -8, 2, -20],
        extra_counts=[1],
    ),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", (5, 10)),
    library.sixteenths(
        [4, -8],
    ),
    library.tam_tam_staff_position(),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
    baca.markup(
        r"\baca-tam-tam-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", 13),
    library.sixteenths(
        [2, "-"],
        extra_counts=[1],
    ),
    library.slate_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 8"),
    ),
)

commands(
    ("perc2", (1, 13)),
    baca.dls_staff_padding(6),
)

# hp

commands(
    ("hp", 1),
    library.sixteenths(
        [4, "-"],
    ),
    baca.pitch("D5"),
    baca.flageolet(
        lambda _: baca.select.pheads(_),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        left_broken=True,
        selector=baca.selectors.leaves((None, 2)),
    ),
)

commands(
    ("hp", 3),
    baca.clef("bass"),
    library.sixteenths(
        [-4, 4, -4],
    ),
    baca.chunk(
        baca.pitch("D1"),
        baca.ottava_bassa(),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("p"),
)

commands(
    ("hp", 4),
    baca.clef("treble"),
    library.sixteenths(
        [2, -20, 2, -24],
    ),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "p-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("hp", (3, 10)),
    baca.ottava_bracket_staff_padding(8),
)

commands(
    ("hp", (5, 10)),
    baca.clef("bass"),
    library.sixteenths(
        [4, -8],
    ),
    baca.chunk(
        baca.pitch("D1"),
        baca.ottava_bassa(),
    ),
    baca.laissez_vibrer(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
    ),
)

commands(
    ("hp", 13),
    library.sixteenths(
        ["-", 6],
        fuse=True,
        do_not_rewrite_meter=True,
    ),
    baca.clef("treble"),
    baca.pitch("F#4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic("p-ancora"),
    baca.markup(
        r"\baca-sons-xylophoniques-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0"),
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 10.5"),
        right_broken=True,
        selector=baca.selectors.leaves((-1, None), rleak=True),
    ),
)

commands(
    ("hp", (1, 13)),
    baca.dls_staff_padding(4),
)

# va

commands(
    ("va", (1, 3)),
    library.sixteenths(
        [32],
        extra_counts=[1],
        after_graces=[1],
    ),
    baca.tuplet_bracket_up(),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "o< f",
    ),
    baca.scp_spanner(
        "T4 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 4),
    library.sixteenths(
        [2, -8, 2, -4, 2, -26],
        extra_counts=[2],
        denominator=None,
    ),
)

commands(
    ("va", (5, 10)),
    baca.clef("alto"),
    library.sixteenths(
        [18, 13, 9, 6, 3, 2, 2, 2, 2, 2, 3, 3, 6, "+"],
        extra_counts=[1],
        after_graces=[1],
    ),
    baca.tuplet_bracket_up(),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.new(
        baca.hairpin(
            "o< ff >o niente",
        ),
        baca.scp_spanner(
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
        ),
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (4, 3)
        ),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 12),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D4 C#4"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("va", 13),
    library.sixteenths(
        [-20, 2, "-"],
        extra_counts=[2],
        denominator=None,
    ),
)

# vc1

commands(
    ("vc1", 3),
    library.sixteenths(
        [-4, 2, 2, -4],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.note_head_style_harmonic(),
    baca.pitch("F#5"),
    baca.hairpin(
        "o< mp >o niente",
        map=lambda _: baca.select.runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak staff-padding 3"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", 4),
    library.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
        extra_counts=[1],
    ),
)

commands(
    ("vc1", (5, 10)),
    baca.clef("treble"),
    library.sixteenths(
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.pitch("F#5"),
    baca.note_head_style_harmonic(),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2.5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", (4, 5)),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 8"),
        selector=baca.selectors.leaves((None, 9)),
    ),
)

commands(
    ("vc1", 13),
    library.sixteenths(
        [3, -7, 3, "-"],
        extra_counts=[1],
    ),
)

# vc2

commands(
    ("vc2", (1, 3)),
    library.sixteenths(
        [46],
        extra_counts=[2],
        denominator=None,
        after_graces=[1],
    ),
    baca.tuplet_bracket_up(),
    baca.tuplet_bracket_staff_padding(1.5),
    baca.pitches("Gb4 F4"),
    baca.glissando(),
    baca.hairpin(
        "o< f",
    ),
    baca.scp_spanner(
        "T4 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc2", 4),
    library.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
    baca.rest_extra_offset(
        (-2, 0),
        lambda _: baca.select.rest(_, -1),
    ),
)

commands(
    ("vc2", (5, 10)),
    baca.clef("tenor"),
    library.sixteenths(
        [18, 14, 12, 6, 4, 2, 2, 2, 2, 4, 6, 12, "+"],
        extra_counts=[2],
        after_graces=[1],
        denominator=None,
    ),
    baca.tuplet_bracket_up(),
    baca.tuplet_bracket_staff_padding(3),
    baca.pitches("Gb4 F4"),
    baca.glissando(),
    baca.new(
        baca.hairpin(
            "o< ff >o niente",
        ),
        baca.scp_spanner(
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 7.5"),
            autodetect_right_padding=False,
            bookend=-1,
        ),
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (4, 3)
        ),
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc2", 12),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D3 C#3"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("vc2", 13),
    library.sixteenths(
        [-4, 3, "-"],
        extra_counts=[1],
    ),
    baca.tuplet_bracket_staff_padding(3),
)

# cb1

commands(
    ("cb1", (1, 3)),
    library.sixteenths(
        [27],
        after_graces=[1],
    ),
    baca.clef("bass"),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.hairpin(
        "o< f",
    ),
    baca.scp_spanner(
        "T4 -> O",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb1", 4),
    library.sixteenths(
        [3, -7, 3, -7, 3, -7, 3, -14],
    ),
)

commands(
    ("cb1", (5, 10)),
    library.sixteenths(
        [2, 2],
        written_quarters=True,
        invisible_pairs=True,
    ),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch("Cqf5"),
    baca.hairpin(
        "niente o< mp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2.5"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
    baca.markup(r"\baca-seven-d"),
    baca.markup(
        r"\baca-string-ii-markup",
        abjad.Tweak(r"- \tweak staff-padding 1.5"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 13),
    library.sixteenths(
        [-4, 3, -7, 2],
    ),
)

# cb2

commands(
    ("cb2", 3),
    baca.skeleton(
        "r4 c16. r32 r8 c16. r32 r8",
    ),
    baca.new(
        baca.clef("percussion"),
        baca.staff_lines(1),
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    library.bridge_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.dynamic(
        "pp-ancora",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        selector=lambda _: baca.select.phead(_, 0),
    ),
)

commands(
    ("cb2", 4),
    library.sixteenths(
        [3, -5, 3, -5, 3, -5, 3, -23],
    ),
)

commands(
    ("cb2", (3, 4)),
    baca.dls_staff_padding(6),
    baca.metric_modulation_spanner(
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
        selector=baca.selectors.leaves((1, None), rleak=True),
    ),
)

commands(
    ("cb2", (5, 10)),
    baca.clef("bass"),
    library.sixteenths(
        [9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, "+"],
        after_graces=[1],
    ),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.new(
        baca.hairpin(
            "o< ff >o niente",
        ),
        baca.scp_spanner(
            "T4 -> O -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
        ),
        pieces=lambda _: abjad.select.partition_by_ratio(
            abjad.select.leaves(_), (4, 3)
        ),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.dls_staff_padding(4),
)

commands(
    ("cb2", 12),
    library.sixteenths(
        ["+"],
        after_graces=[1],
    ),
    baca.pitches("D2 C#2"),
    baca.glissando(),
    baca.hairpin(
        "pp >o niente",
    ),
    baca.dls_staff_padding(4),
    baca.scp_spanner(
        "T2 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=True,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("cb2", 13),
    library.sixteenths(
        [3, -5, 3, -5],
    ),
)

# va, vc1, vc2, cb1

commands(
    (["va", "vc1", "vc2", "cb1"], [(1, 3), (5, 12)]),
    baca.dls_staff_padding(4),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1"], 4),
    baca.clef("percussion"),
    baca.staff_lines(1),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 4),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.new(
        baca.dynamic("pp"),
        baca.dls_staff_padding(6),
        match=[0, 1, 2, 3],
    ),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.staff_lines(5),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 13),
    baca.staff_lines(1),
    baca.clef("percussion"),
    library.bridge_staff_position(),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.dynamic("pp"),
    baca.dls_staff_padding(6),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_segment(
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
        fermata_measure_empty_overrides=[11],
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
