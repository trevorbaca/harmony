import abjad
import baca

from harmony import library

#########################################################################################
######################################## 28 [BB] ########################################
#########################################################################################

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
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
    _voice_abbreviations=library.voice_abbreviations,
    _voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator.time_signatures,
    accumulator,
    library.manifests,
    append_anchor_skip=True,
    always_make_global_rests=True,
)

skips = score["Skips"]
stage_markup = (
    ("[BB.1-4]", 1),
    ("[<Y.2]", 5, "#darkgreen"),
    ("[BB.5-8]", 7),
)
baca.label_stage_numbers(skips, stage_markup)

for index, item in (
    (1 - 1, "48"),
    (1 - 1, "2.=4"),
    (5 - 1, "57 3/5"),
    (5 - 1, "6:5(4)=4"),
    (7 - 1, "48"),
    (7 - 1, "5:6(4)=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, library.manifests)

rests = score["Rests"]
for index, string in ((6 - 1, "fermata"),):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[6 - 1],
    r"\harmony-text-twenty-seven",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 4))
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(5),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [4, 4, 8, 4, 4, 7, -1],
        do_not_rewrite_meter=True,
        fuse=True,
        written_halves=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [1, -23, -1, 1, -22],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [4],
        written_double_dotted_wholes=([0], 7),
        invisible=([1, 2, 3, 4, 5, 6], 7),
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def PERC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [2, -22, -1, 2, -21],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [-26, 2],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(5, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        ["+"],
    )
    voice.extend(music)


def VA(voice, accumulator):
    music = baca.make_notes(accumulator.get(1, 4))
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(7, 10))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [10, 6],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        3,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [10, 6],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        2,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [4, 4, -8],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        1,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [2],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB2(voice, accumulator):
    music = library.make_sixteenths(
        accumulator.get(1, 4),
        [8, 8, 8, 6, 2],
        fuse=True,
        do_not_rewrite_meter=True,
        written_halves=[-2],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(5),
        0,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 10),
        [4],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def bfl(m):
    accumulator(
        ("bfl", 5),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -11),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", (1, 10)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 4)),
        library.triangle_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 5),
        library.brake_drum_staff_position(),
        baca.dynamic(
            "f-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (7, 10)),
        library.triangle_staff_position(),
        baca.flat_glissando(
            hide_stem_selector=lambda _: baca.select.pleaves(_)[1:-1],
            selector=lambda _: baca.select.leaves(_)[:-6],
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -7]),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (1, 10)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 4)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("C#5"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 5),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.slate_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "f >o niente",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (7, 10)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("A4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "mp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.25"),
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def hp(m):
    accumulator(
        ("hp", (1, 4)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("A1"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 2),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
    )
    accumulator(
        ("hp", (7, 10)),
        baca.pitch("<E3 Fb3>"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.dynamic(
            "mp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def va(m):
    accumulator(
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
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", 5),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("va", (7, 10)),
        baca.pitch("E3"),
        baca.flat_glissando(
            hide_middle_stems=True,
        ),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 4)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitches("E6 C#6"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", 5),
        baca.hairpin(
            "pp -- ! < mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 3, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
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
        ("vc1", (7, 10)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 4)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitches("A5 C#6"),
        baca.glissando(selector=lambda _: baca.select.tleaves(_)),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", 5),
        baca.hairpin(
            "pp -- ! < mp -- ! >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2 + 1]),
            selector=lambda _: baca.select.rleaves(_),
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
        ("vc2", (7, 10)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 4)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 5),
        baca.hairpin(
            "pp -- ! < mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 3, 2 + 1]),
            selector=lambda _: baca.select.rleaves(_),
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
        ("cb1", (7, 10)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
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
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def cb2(m):
    accumulator(
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
            pieces=lambda _: baca.select.mgroups(_, [3, 2]),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", 5),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >o niente",
            pieces=lambda _: baca.select.lparts(_, [2, 1, 1 + 1]),
            selector=lambda _: baca.select.rleaves(_),
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
        ("cb2", (7, 10)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.flat_glissando(
            "A1",
            allow_hidden=True,
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o< ff (ff) >o niente",
            pieces=lambda _: baca.select.mgroups(_, [2, 1, 2]),
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
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 5),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
        baca.dls_staff_padding(4),
    )


def make_score():
    BFL(accumulator.voice("bfl"), accumulator)
    PERC1(accumulator.voice("perc1"), accumulator)
    PERC2(accumulator.voice("perc2"), accumulator)
    HP(accumulator.voice("hp"), accumulator)
    VA(accumulator.voice("va"), accumulator)
    VC1(accumulator.voice("vc1"), accumulator)
    VC2(accumulator.voice("vc2"), accumulator)
    CB1(accumulator.voice("cb1"), accumulator)
    CB2(accumulator.voice("cb2"), accumulator)
    previous_persist = baca.previous_persist(__file__)
    previous_persistent_indicators = previous_persist["persistent_indicators"]
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
    perc1(cache["perc1"])
    perc2(cache["perc2"])
    hp(cache["hp"])
    va(cache["va"])
    vc1(cache["vc1"])
    vc2(cache["vc2"])
    cb1(cache["cb1"])
    cb2(cache["cb2"])
    composites(cache)


def main():
    make_score()
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
