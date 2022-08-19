import abjad
import baca

from harmony import library

#########################################################################################
######################################### 17 [Q] ########################################
#########################################################################################

stage_markup = (
    ("[Q.1]", 1),
    ("[>S.1]", 2, "#darkgreen"),
    ("[<O.4]", 4, "#darkgreen"),
    ("[Q.2]", 5),
)

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    time_signatures=[
        (6, 4),
        (4, 4),
        (1, 4),
        (3, 4),
        (5, 4),
        (1, 4),
    ],
    _voice_abbreviations=library.voice_abbreviations,
    _voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator,
    library.manifests,
    accumulator.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
    stage_markup=stage_markup,
)

skips = score["Skips"]
manifests = library.manifests

for index, item in (
    (1 - 1, "48"),
    (1 - 1, "2=4"),
    (2 - 1, "96"),
    (2 - 1, "8=4"),
    (5 - 1, "48"),
    (5 - 1, "2=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

rests = score["Rests"]
for index, string in (
    (3 - 1, "short"),
    (6 - 1, "fermata"),
):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[6 - 1],
    r"\harmony-text-sixteen",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, "-"],
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(2),
        sixteenths=[2 * 4],
        extra_counts=[2],
        rest_tuplets=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [-4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [4, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def PERC1(voice):
    music = baca.make_notes(accumulator.get(1))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(2),
        divisions=[5, 11],
        counts=[0, 5],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def PERC2(voice):
    music = baca.make_notes(accumulator.get(1))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(2),
        divisions=[5, 11],
        counts=[0, 4],
        rest_after=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def HP(voice):
    music = baca.make_notes(accumulator.get(1))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
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
        [-16, 4],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def VA(voice):
    music = baca.make_notes(accumulator.get(1, 2))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(5))
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6), head=voice.name)
    voice.extend(music)


def VC1(voice):
    music = library.make_tessera_2(
        accumulator.get(1),
        3,
        rest_plts=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        3,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def VC2(voice):
    music = library.make_tessera_2(
        accumulator.get(1),
        2,
        rest_plts=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        2,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def CB1(voice):
    music = library.make_tessera_2(
        accumulator.get(1),
        1,
        rest_plts=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        1,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def CB2(voice):
    music = library.make_tessera_2(
        accumulator.get(1),
        0,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [2, 2, 2, 2, 2, 2, "-"],
        written_quarters=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+", -1],
    )
    voice.extend(music)
    music = library.make_tessera_2(
        accumulator.get(5),
        0,
        advance=24,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", 1),
        baca.pitch("D5"),
        baca.new(
            baca.text_spanner(
                "A =|",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=True,
                bookend=False,
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            left_broken=True,
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
    )
    accumulator(
        ("bfl", 2),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -3),
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
    accumulator(
        ("bfl", 4),
        baca.pitch("F#5"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("bfl", 5),
        baca.pitch(
            "F#5",
            selector=lambda _: abjad.select.run(_, 0),
        ),
    )
    accumulator(
        ("bfl", (4, 5)),
        baca.new(
            baca.trill_spanner(
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                selector=lambda _: baca.select.tleaves(_, rleak=True),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 9"),
            ),
            selector=lambda _: baca.select.rleak(baca.select.runs(_)[:1]),
        ),
    )
    accumulator(
        ("bfl", (1, 5)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
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
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 2),
        ),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 2, grace=False),
        ),
    )
    accumulator(
        ("perc1", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.slate_staff_position(),
        baca.dynamic(
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 5),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("E4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", 1),
        library.tam_tam_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 2),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([2]),
        baca.dynamic(
            "ff",
            selector=lambda _: baca.select.rest(_, 2),
        ),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, 2, grace=False),
        ),
    )
    accumulator(
        ("perc2", 4),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("perc2", 5),
        library.tam_tam_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
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
        baca.dls_staff_padding(6),
    )


def percs(m):
    accumulator(
        (["perc1", "perc2"], 2),
        baca.new(
            baca.dots_extra_offset((2, 0)),
            baca.dots_x_extent_false(),
            baca.rest_x_extent_zero(selector=lambda _: abjad.select.rest(_, 0)),
            map=lambda _: [
                x
                for x in abjad.select.rests(_)
                if abjad.get.duration(x) >= abjad.Duration((1, 2))
            ],
        ),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.pitch("Db1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.ottava_bracket_staff_padding(8),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
    )
    accumulator(
        ("hp", 4),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<B4 C5>"),
        baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("f-ancora", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 5),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Db1"),
        baca.ottava_bassa(selector=lambda _: baca.select.tleaves(_)),
        baca.ottava_bracket_staff_padding(8),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("f-ancora", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
    )
    accumulator(
        ("hp", (1, 5)),
        baca.ottava_bracket_staff_padding(8),
    )


def va(m):
    accumulator(
        ("va", (1, 2)),
        baca.pitch("D4"),
        baca.flat_glissando(
            hide_middle_stems=True,
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            left_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", 4),
        baca.pitch("F4"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", 5),
        baca.pitch("D4"),
        baca.hairpin(
            "pp >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.bow_speed_spanner(
            "poco scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.pitch("E3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc1", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G#5 A5 Bb5>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc1", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("A2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc1", 5),
        baca.pitch("E3"),
        baca.scp_spanner(
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.pitch("D3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc2", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<A5 Bb5 Cb6>"),
        baca.markup(
            r"\baca-string-i-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("G2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("vc2", 5),
        baca.pitch("D3"),
        baca.scp_spanner(
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.pitch("E3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<B5 C6 Db6>",
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("G#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb1", 5),
        baca.pitch("E3"),
        baca.scp_spanner(
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", 1),
        baca.pitch("D3"),
        baca.scp_spanner(
            "T4 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb2", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch(
            "<A#5 B5 C6>",
            do_not_transpose=True,
        ),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak staff-padding 1.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", 4),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("F#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "f <| fff-scratch",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        ("cb2", 5),
        baca.pitch("D3"),
        baca.scp_spanner(
            "P4 -> T4",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 5)),
        baca.dls_staff_padding(4),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 2),
        # TODO: promote to music = library.make_sixteenths()
        baca.invisible_music(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [1], 2),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| mp |> pp pp <| mp |>o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 1, 2, 1, 1 + 1]),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.dynamic_text_x_offset(
            -3,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.dynamic_text_x_offset(
            -0.25,
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup", selector=lambda _: baca.select.pleaf(_, 0)
        ),
    )
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 1),
        baca.hairpin(
            "p < f",
            selector=lambda _: baca.select.tleaves(
                _,
            ),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 5),
        baca.hairpin(
            "f >o niente",
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], [1, 5]),
        baca.triple_staccato(lambda _: baca.select.pheads(_)),
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
