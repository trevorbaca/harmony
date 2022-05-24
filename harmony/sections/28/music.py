import abjad
import baca

from harmony import library

#########################################################################################
######################################## 28 [BB] ########################################
#########################################################################################

stage_markup = (
    ("[BB.1-4]", 1),
    ("[<Y.2]", 5, "#darkgreen"),
    ("[BB.5-8]", 7),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.section_accumulation_defaults(),
    instruments=library.instruments,
    margin_markups=library.margin_markups,
    metronome_marks=library.metronome_marks,
    time_signatures=[
        (2, 4),
        (2, 4),
        (2, 4),
        (2, 4),
        (6, 4),
        (1, 4),
        (7, 4),
        (7, 4),
        (7, 4),
        (7, 4),
    ],
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("2.=4", lambda _: baca.select.skip(_, 1 - 1)),
    baca.metronome_mark("57 3/5", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("6:5(4)=4", lambda _: baca.select.skip(_, 5 - 1)),
    baca.metronome_mark("48", lambda _: baca.select.skip(_, 7 - 1)),
    baca.metronome_mark("5:6(4)=4", lambda _: baca.select.skip(_, 7 - 1)),
)

commands(
    "Global_Rests",
    baca.global_fermata("fermata", lambda _: baca.select.rest(_, 6 - 1)),
)

# text

commands(
    "Global_Skips",
    baca.not_parts(
        baca.markup(
            r"\harmony-text-twenty-seven",
            abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
            selector=lambda _: baca.select.skip(_, 6 - 1),
        ),
    ),
)

# BFL

commands(
    ("bfl", (1, 4)),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", 5),
    library.make_warble_rhythm(
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    ),
)

commands(
    ("bfl", 6),
    baca.make_mmrests_flat(),
)

commands(
    ("bfl", (7, 10)),
    library.make_sixteenths(
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    ),
)

# PERC1

commands(
    ("perc1", (1, 4)),
    library.make_sixteenths(
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=[0],
    ),
)

commands(
    ("perc1", 5),
    library.make_sixteenths(
        [1, -23, -1, 1, -22],
    ),
)

commands(
    ("perc1", 6),
    baca.make_mmrests_flat(),
)

commands(
    ("perc1", (7, 10)),
    library.make_sixteenths(
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    ),
)

# PERC2

commands(
    ("perc2", (1, 4)),
    library.make_sixteenths(
        [2, "-"],
    ),
)

commands(
    ("perc2", 5),
    library.make_sixteenths(
        [2, -22, -1, 2, -21],
    ),
)

commands(
    ("perc2", 6),
    baca.make_mmrests_flat(),
)

commands(
    ("perc2", (7, 10)),
    library.make_sixteenths(
        [-26, 2],
    ),
)

# HP

commands(
    ("hp", (1, 4)),
    library.make_sixteenths(
        [4, "-"],
    ),
)

commands(
    ("hp", (5, 6)),
    baca.make_mmrests_flat(),
)

commands(
    ("hp", (7, 10)),
    library.make_sixteenths(
        ["+"],
    ),
)

# VA

commands(
    ("va", (1, 4)),
    baca.make_notes(),
)

commands(
    ("va", 5),
    library.make_tessera_4(4),
)

commands(
    ("va", 6),
    baca.make_mmrests_flat(),
)

commands(
    ("va", (7, 10)),
    baca.make_notes(),
)

# VC1

commands(
    ("vc1", (1, 4)),
    library.make_sixteenths(
        [10, 6],
    ),
)

commands(
    ("vc1", 5),
    library.make_tessera_4(3),
)

commands(
    ("vc1", 6),
    baca.make_mmrests(),
)

commands(
    ("vc1", (7, 10)),
    library.make_sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

# VC2

commands(
    ("vc2", (1, 4)),
    library.make_sixteenths(
        [10, 6],
    ),
)

commands(
    ("vc2", 5),
    library.make_tessera_4(2),
)

commands(
    ("vc2", 6),
    baca.make_mmrests(),
)

commands(
    ("vc2", (7, 10)),
    library.make_sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

# CB1

commands(
    ("cb1", (1, 4)),
    library.make_sixteenths(
        [4, 4, -8],
    ),
)

commands(
    ("cb1", 5),
    library.make_tessera_4(1),
)

commands(
    ("cb1", 6),
    baca.make_mmrests(),
)

commands(
    ("cb1", (7, 10)),
    library.make_sixteenths(
        [2],
        written_quarters=True,
        invisible_pairs=True,
    ),
)

# CB2

commands(
    ("cb2", (1, 4)),
    library.make_sixteenths(
        [8, 8, 8, 6, 2],
        fuse=True,
        do_not_rewrite_meter=True,
        written_halves=[-2],
        invisible=[-1],
    ),
)

commands(
    ("cb2", 5),
    library.make_tessera_4(0),
)

commands(
    ("cb2", 6),
    baca.make_mmrests(),
)

commands(
    ("cb2", (7, 10)),
    library.make_sixteenths(
        [4],
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
    ("bfl", 5),
    baca.pitches(
        abjad.sequence.rotate(library.warble_pitches, -11),
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

commands(
    ("bfl", (7, 10)),
    baca.pitch("A4"),
    baca.flat_glissando(
        hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-1],
        selector=lambda _: baca.select.leaves(_)[:-6],
    ),
    baca.hairpin(
        "p < mp >",
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
)

commands(
    ("bfl", (1, 10)),
    baca.dls_staff_padding(4),
)

# perc1

commands(
    ("perc1", (1, 4)),
    library.triangle_staff_position(),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.hairpin(
        "p < mp > p p < mp > p",
        pieces=lambda _: baca.select.clparts(_, [1]),
        selector=lambda _: baca.select.tleaves(
            _,
        ),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", 5),
    library.brake_drum_staff_position(),
    baca.dynamic(
        "f-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.markup(
        r"\baca-brake-drum-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (7, 10)),
    library.triangle_staff_position(),
    baca.flat_glissando(
        hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-1],
        selector=lambda _: baca.select.leaves(_)[:-6],
    ),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -7]),
    ),
    baca.hairpin(
        "p < mp >",
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.dynamic(
        "p",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.markup(
        r"\baca-triangle-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc1", (1, 10)),
    baca.dls_staff_padding(6),
)

# perc2

commands(
    ("perc2", (1, 4)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("C#5"),
    baca.dynamic("p"),
    baca.dls_staff_padding(4),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

commands(
    ("perc2", 5),
    baca.clef("percussion"),
    baca.staff_lines(1),
    library.slate_staff_position(),
    baca.accent(
        lambda _: baca.select.pheads(_),
    ),
    baca.stem_tremolo(
        lambda _: baca.select.pleaves(_),
    ),
    baca.hairpin(
        "f >o niente",
        map=lambda _: baca.select.rleak_runs(_),
    ),
    baca.dls_staff_padding(5),
    baca.markup(
        r"\baca-slate-brush-markup",
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
)

commands(
    ("perc2", (7, 10)),
    baca.clef("treble"),
    baca.staff_lines(5),
    baca.pitch("A4"),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
    baca.dynamic(
        "mp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
    ),
    baca.dls_staff_padding(4),
    baca.markup(
        r"\baca-glockenspiel-markup",
        abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
        abjad.Tweak(r"- \tweak staff-padding 4"),
    ),
)

# hp

commands(
    ("hp", (1, 4)),
    baca.clef("bass"),
    baca.pitch("A1"),
    baca.dynamic("f"),
    baca.dls_staff_padding(4 + 2),
    baca.laissez_vibrer(
        lambda _: baca.select.ptails(_),
    ),
)

commands(
    ("hp", (7, 10)),
    baca.pitch("<E3 Fb3>"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic(
        "mp-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.dls_staff_padding(4),
    baca.text_spanner(
        "0 pul. / beat -> 6 pul. / beat -> 0 pul. / beat -> 8 pul. / beat"
        " -> 0 pul. / beat",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\harmony-rh-bow-plus-lh-bow-markup",
        abjad.Tweak(r"- \tweak staff-padding 5.5"),
    ),
)

# va

commands(
    ("va", (1, 4)),
    baca.pitch("Gqf3"),
    baca.flat_glissando(
        hide_middle_stems=True,
        left_broken=True,
    ),
    baca.bow_speed_spanner(
        "poc. scr. =|",
        abjad.Tweak(r"- \tweak bound-details.right.padding 6"),
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        left_broken=True,
    ),
)

commands(
    ("va", 5),
    baca.note_head_style_harmonic_black(),
    baca.pitch("<G4 Ab4 Bb4>"),
    baca.dynamic("pp"),
)

commands(
    ("va", (7, 10)),
    baca.pitch("E3"),
    baca.flat_glissando(
        hide_middle_stems=True,
    ),
    baca.dynamic(
        "p-sempre",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
    ),
    baca.bow_speed_spanner(
        "poco scr. =|",
        abjad.Tweak(r"- \tweak staff-padding 3"),
    ),
)

# vc1

commands(
    ("vc1", (1, 4)),
    baca.note_head_style_harmonic(),
    baca.pitches("E6 C#6"),
    baca.glissando(),
    baca.hairpin(
        "o< mp >o",
        bookend=False,
        pieces=lambda _: baca.select.cmgroups(_, [2, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc1", 5),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 3, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("vc1", (7, 10)),
    baca.note_head_style_harmonic(),
    baca.pitch("C#6"),
    baca.hairpin(
        "niente o< pp >o ! o< pp >o ! o< p >o ! o< pp >o !"
        " o< p >o ! o< pp >o ! o< p >o !"
        " o< p >o ! o< mp >o ! o< mf >o ! o< mp >o !"
        " o< mp >o ! o< mf >o ! o< mf >o !"
        " o< mf >o ! o< f >o ! o< f >o ! o< mf >o !"
        " o< f >o ! o< mf >o ! o< mf >o !"
        " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
        " o< p >o ! o< pp >o ! o< pp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="E6",
        harmonic=True,
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

# vc2

commands(
    ("vc2", (1, 4)),
    baca.note_head_style_harmonic(),
    baca.pitches("A5 C#6"),
    baca.glissando(),
    baca.hairpin(
        "o< mp >o",
        bookend=False,
        pieces=lambda _: baca.select.cmgroups(_, [2, 3]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc2", 5),
    baca.hairpin(
        "pp -- ! < mp -- ! >o niente",
        pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.pitch(
        "C5",
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("vc2", (7, 10)),
    baca.note_head_style_harmonic(),
    baca.note_head_style_harmonic(),
    baca.pitch("A5"),
    baca.hairpin(
        "niente o< pp >o ! o< p >o ! o< p >o ! o< pp >o !"
        " o< pp >o ! o< p >o ! o< pp >o !"
        " o< p >o ! o< mp >o ! o< mp >o ! o< mf >o !"
        " o< mf >o ! o< mp >o ! o< mf >o !"
        " o< mp >o ! o< mf >o ! o< f >o ! o< f >o !"
        " o< mf >o ! o< f >o ! o< mf >o !"
        " o< mp >o ! o< p >o ! o< mp >o ! o< p >o !"
        " o< pp >o ! o< p >o ! o< pp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
        alteration="C#6",
        harmonic=True,
    ),
    baca.markup(
        r"\baca-string-i-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

# cb1

commands(
    ("cb1", (1, 4)),
    baca.clef("treble"),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "niente o< mp >o niente",
        map=lambda _: baca.select.rleak_runs(_),
        pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
        map=lambda _: baca.select.runs(_),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb1", 5),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 3, 2 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<A4 B4 C5>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("cb1", (7, 10)),
    baca.note_head_style_harmonic(),
    baca.pitch(
        "C#4",
        do_not_transpose=True,
    ),
    baca.hairpin(
        "niente o< pp >o ! o< pp >o ! o< p >o ! o< p >o !"
        " o< pp >o ! o< pp >o ! o< p >o !"
        " o< mp >o ! o< mp >o ! o< p >o ! o< mp >o !"
        " o< mf >o ! o< mf >o ! o< f >o !"
        " o< f >o ! o< f >o ! o< mf >o ! o< f >o !"
        " o< f >o ! o< mf >o ! o< mf >o !"
        " o< mp >o ! o< mp >o ! o< p >o ! o< pp >o !"
        " o< p >o ! o< p >o ! o< pp >o",
        forbid_al_niente_to_bar_line=True,
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
    baca.dynamic(
        "niente",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.trill_spanner(
        abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

# cb2

commands(
    ("cb2", (1, 4)),
    baca.pitch("A1"),
    baca.flat_glissando(
        hide_middle_stems=True,
        hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-2],
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
    baca.hairpin(
        "o< ff >o",
        bookend=False,
        pieces=lambda _: baca.mgroups(_, [3, 2]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T4 -> P1 -> T4",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        autodetect_right_padding=False,
        bookend=-1,
        pieces=lambda _: baca.select.lparts(_, [2, 3]),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("cb2", 5),
    baca.clef("treble"),
    baca.hairpin(
        "pp -- ! < mp >o niente",
        pieces=lambda _: baca.select.lparts(_, [2, 1, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.untie(
        lambda _: baca.select.leaves(_),
    ),
    baca.note_head_style_harmonic_black(),
    baca.pitch(
        "<G4 Ab4 Bb4>",
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        do_not_transpose=True,
    ),
    baca.pitch(
        "C5",
        lambda _: baca.select.pleaves(_)[1:-1],
        do_not_transpose=True,
    ),
    baca.note_head_transparent(
        lambda _: baca.select.pleaves(_)[1:-1],
    ),
)

commands(
    ("cb2", (7, 10)),
    baca.clef("bass"),
    baca.flat_glissando(
        "A1",
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.hairpin(
        "o< ff (ff) >o niente",
        pieces=lambda _: baca.mgroups(_, [2, 1, 2]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.scp_spanner(
        "T4+ -> O -> T2 -> P1 -> T1 -> P3 -> O -> P1 -> O -> P1 -> T4+",
        abjad.Tweak(r"- \tweak staff-padding 3"),
        bookend=-1,
        pieces=lambda _: baca.select.lparts(_, [3, 2, 2, 3, 2, 2, 3, 2, 2, 8]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 1"),
        direction=abjad.DOWN,
    ),
)

# va, vc1, vc2, cb1, cb2

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], 5),
    baca.stem_tremolo(
        lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
    ),
    baca.markup(r"\baca-quasi-bisb-markup"),
)

commands(
    (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
    baca.dls_staff_padding(4),
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
        fermata_measure_empty_overrides=[6],
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
