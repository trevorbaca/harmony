import abjad
import baca

from harmony import library

#########################################################################################
######################################### 26 [Z] ########################################
#########################################################################################

stage_markup = (
    ("[Z.1-2]", 1),
    ("[>CC.1]", 4, "#darkgreen"),
    ("[Z.3-5]", 5),
    ("[<X.8]", 8, "#darkgreen"),
    ("[<Y.2]", 9, "#darkgreen"),
    ("[Z.6]", 10),
)

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    short_instrument_names=library.short_instrument_names(),
    metronome_marks=library.metronome_marks(),
    time_signatures=[
        (4, 4),
        (4, 4),
        (1, 4),
        (6, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (6, 4),
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
    (1 - 1, "96"),
    (1 - 1, "5:3(4)=4"),
    (4 - 1, "72"),
    (4 - 1, "3:4(4)=4"),
    (5 - 1, "96"),
    (5 - 1, "4:3(4)=4"),
    (8 - 1, "48"),
    (8 - 1, "2=4"),
    (9 - 1, "57 3/5"),
    (9 - 1, "6:5(4)=4"),
    (10 - 1, "96"),
    (10 - 1, "5:3(4)=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark_function(skip, indicator, manifests)

rests = score["Rests"]
for index, string in ((3 - 1, "fermata"),):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-twenty-four",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 16],
        written_halves=[0, 1],
        invisible_pairs=True,
        tie=[1, 2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-2, 2, 2],
    )
    voice.extend(music)
    music = library.make_warble_rhythm(
        accumulator.get(9),
        sixteenths=[12, 12, 1, 11, 12],
        extra_counts=[4, 0, 0, 2, 0],
        rest_tuplets_cyclic=([1, 2, 4], 5),
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, -12],
    )
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 6),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [4, "-", 6, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [-2, 3, -3, 3, -3, 3, -3, 3, -3],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(3, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(9),
        [1, -11, 4, -12, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, -12],
    )
    voice.extend(music)


def PERC2(voice):
    music = baca.make_mmrests(accumulator.get(1))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [-8, 1, -3],
        fuse=True,
        extra_counts=[-4],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 6))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [-8, "+"],
    )
    voice.extend(music)
    music = library.make_tuplet(
        accumulator.get(8),
        [(1,)],
        force_augmentation=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        [2, -22, -1, 2, -21],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        ["-", 2],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3, 4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 6),
        [-12, -2, 4, -6, -12, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        ["-", 6, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, -3, 3, -3, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(9))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [-2, 4, "-"],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)


def VA(voice):
    music = baca.make_mmrests(accumulator.get(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(5, 7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [6, 3, 11],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(9),
        4,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [4, 2, 7, 7],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(9),
        3,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, -12],
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [9, 11],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(9),
        2,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, -12],
    )
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [4, 9, 7],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(9),
        1,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, -12],
    )
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [4, -12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 4, 16],
        written_halves=[0, 1, 3, 4],
        invisible=[1, 4],
        tie_all=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 7),
        [4, -12],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [9, 11],
    )
    voice.extend(music)
    music = library.make_tessera_4(
        accumulator.get(9),
        0,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(10),
        [4, -12],
    )
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", [(1, 2), (5, 7), 10]),
        baca.pitch("C3"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("Bb4"),
        baca.hairpin(
            "pp < p >o",
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 3]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.text_spanner(
            "(T) -> A -> (T)",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        ),
    )
    accumulator(
        ("bfl", 8),
        baca.pitch("F#5"),
        baca.hairpin(
            "niente o< p >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.text_spanner(
            "A -> T -> A",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    accumulator(
        ("bfl", 9),
        baca.pitches(
            abjad.sequence.rotate(library.warble_pitches(), -9),
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
        ("bfl", (1, 10)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 2)),
        library.slate_staff_position(),
        baca.dynamic('"ff"', selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (5, 6)),
        library.slate_staff_position(),
        baca.dynamic(
            '"ff"-ancora',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc1", 7),
        library.slate_staff_position(),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
    )
    accumulator(
        ("perc1", 8),
        library.slate_staff_position(),
    )
    accumulator(
        ("perc1", (7, 8)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[2:],
        ),
    )
    accumulator(
        ("perc1", 9),
        baca.new(
            library.brake_drum_staff_position(),
            baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
            baca.markup(
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak staff-padding 6"),
            ),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.new(
            library.slate_staff_position(),
            selector=lambda _: baca.select.pleaves(_)[1:],
        ),
        baca.dynamic(
            '"ff"',
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
    )
    accumulator(
        ("perc1", 10),
        library.slate_staff_position(),
    )
    accumulator(
        ("perc1", (9, 10)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            selector=lambda _: baca.select.leaves(_)[3:],
        ),
    )
    accumulator(
        ("perc1", (1, 10)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 2),
        library.bass_drum_staff_position(),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "mp",
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.markup(
            r"\baca-bd-struck-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (7, 8)),
        library.tam_tam_staff_position(),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", 9),
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
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (1, 9)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", 10),
        baca.staff_lines(
            3,
            selector=lambda _: abjad.select.leaf(_, -2),
        ),
        library.purpleheart_staff_positions([2]),
        baca.dynamic("ff", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-1:]),
        ),
    )


def hp(m):
    accumulator(
        ("hp", (1, 2)),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<C#5 D5>"),
        baca.double_flageolet(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("hp", (5, 6)),
        baca.pitch("<C#5 D5>"),
        baca.double_flageolet(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("f-ancora", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pheads(_),
        ),
    )
    accumulator(
        ("hp", (1, 6)),
        baca.dls_staff_padding(4 + 2),
    )
    accumulator(
        ("hp", 7),
        baca.new(
            baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
            baca.staff_lines(1),
            baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
            baca.dls_staff_padding(6),
            baca.markup(
                r"\baca-whisk-markup",
                abjad.Tweak(r"- \tweak staff-padding 3"),
            ),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (7, 8)),
        library.whisk_staff_position(),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[1:],
        ),
    )
    accumulator(
        ("hp", 9),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
    )
    accumulator(
        ("hp", 10),
        baca.pitch("<C#5 D5>"),
        baca.double_flageolet(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4 + 2),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pheads(_),
        ),
    )


def va(m):
    accumulator(
        ("va", (4, 7)),
        baca.pitch("Bb4"),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            alteration="Cb5",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("va", 8),
        baca.pitch("F#3"),
        baca.scp_spanner(
            "P2 -> P1 -> P3 -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("va", 9),
        baca.note_head_style_harmonic_black(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("<G4 Ab4 Bb4>"),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )


def vc1(m):
    accumulator(
        ("vc1", 8),
        baca.pitch("F#2"),
        baca.scp_spanner(
            "P2 -> O -> P2 -> P1 -> P3",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc1", 9),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.plts(_),
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
        ("vc1", [(1, 2), (5, 7), 10]),
        baca.pitch("D2"),
    )


def vc2(m):
    accumulator(
        ("vc2", 8),
        baca.pitch("F#2"),
        baca.scp_spanner(
            "O -> P2 -> P1",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc2", 9),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp -- ! >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 2, 3, 2]),
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
        ("vc2", [(1, 2), (5, 7), 10]),
        baca.pitch("C#2"),
    )


def cb1(m):
    accumulator(
        ("cb1", 8),
        baca.pitch("F#1"),
        baca.scp_spanner(
            "P1 -> P2 -> O -> P2",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", 9),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [2, 3, 2]),
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
        ("cb1", [(1, 2), (5, 7), 10]),
        baca.pitch("D2"),
    )


def cb2(m):
    accumulator(
        ("cb2", 8),
        baca.pitch("F#1"),
        baca.scp_spanner(
            "P1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", 9),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "pp -- ! < mp >",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.lparts(_, [2, 1, 1]),
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
        ("cb2", [(1, 2), (5, 7), 10]),
        baca.pitch("C#2"),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 4),
        baca.hairpin(
            "pp < p > pp",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
        ),
        baca.new(
            baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
            baca.trill_spanner(
                abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
                alteration="Cb5",
                selector=lambda _: baca.select.tleaves(_, rleak=True),
            ),
            match=[1, 2, 3, 4],
        ),
        baca.new(
            baca.pitch("Bb4"),
            match=[1, 2],
        ),
        baca.new(
            baca.pitch(
                "Bb4",
                do_not_transpose=True,
            ),
            match=[3, 4],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 8),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_)[1:],
        ),
        baca.hairpin(
            "o< f",
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 9),
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
    # vc1, vc2, cb1, cb2
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], [(1, 2), (5, 7), 10]),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.hairpin(
            "o<| ff",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.stop_on_string(
            selector=lambda _: abjad.select.leaf(_, 0),
            map=lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
        ),
        baca.scp_spanner(
            "P1 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
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
    composites(cache)


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
        fermata_measure_empty_overrides=[3],
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
