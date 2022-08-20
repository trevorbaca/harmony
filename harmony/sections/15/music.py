import abjad
import baca

from harmony import library

#########################################################################################
######################################### 15 [O] ########################################
#########################################################################################

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    time_signatures=[
        (4, 4),
        (4, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (2, 4),
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
    attach_nonfirst_empty_start_bar=True,
)

skips = score["Skips"]
stage_markup = (
    ("[O.1-2]", 1),
    ("[<L.2]", 3, "#darkgreen"),
    ("[<L.4]", 4, "#darkgreen"),
    ("[O.3-4]", 5),
)
baca.label_stage_numbers(skips, stage_markup)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [6, 6],
        fuse=True,
        do_not_rewrite_meter=True,
        written_dotted_halves=([0], 1),
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, 8],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [-1, 3, -8, 4, -8, -1, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-1, 3, 4, -4, 4, -1, 3, 4, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [12, 16, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [3, 1, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [-1, 3, -8, 4, -8, -1, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def PERC2(voice):
    music = baca.make_mmrests(accumulator.get(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(5),
        [1],
        [1, 2, 1, 1, -1],
        extra_counts=[1],
        rest_nonfirst=True,
    )
    voice.extend(music)
    music = library.make_phjc_rhythm(
        accumulator.get(6, 7),
        [1],
        [1, 2, 1, 1, 1],
        extra_counts=[1, 0],
        rest=[0, 1, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(8, 10))
    voice.extend(music)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(3),
        [12, 16, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6, 8))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(9),
        ["-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def VA(voice):
    music = baca.make_mmrests(accumulator.get(1, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 10),
        [5, -7, 5, -7, 37, "-"],
    )
    voice.extend(music)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/10 { c4 r4 r4 r8. }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/11 { r4 c4 r4 r4 r32 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [3, -1, -4, 7, -1, -10, 3, -1, -2],
    )
    voice.extend(music)
    music = baca.make_skeleton(
        r"\times 8/12 { r4 c4 r4 r4 r8 }",
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -1, -8, 47, -1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(10))
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", (1, 2)),
        baca.pitch("E3"),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("bfl", 3),
        baca.pitch("<Eb3 Eb4 Bb4>"),
        baca.hairpin(
            "o< mp >o !",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("bfl", 4),
        baca.pitch("Dtqf5"),
        baca.markup(
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.hairpin(
            'o< "f" >o niente',
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
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
        baca.breathe(
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
    )
    accumulator(
        ("bfl", (5, 9)),
        baca.pitch(
            "E3",
            selector=lambda _: baca.select.plt(_, 0),
        ),
        baca.pitch(
            "F#5",
            selector=lambda _: baca.select.plts(_)[1:],
        ),
        baca.accent(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.phead(_, 1),
        ),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 2),
        ),
        baca.covered_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            items=r"\baca-cov-markup =|",
            map=lambda _: baca.select.runs(_)[:1],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.trill_spanner(
            map=lambda _: baca.select.runs(_)[1:2],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 2"),
            map=lambda _: baca.select.runs(_)[2:3],
            selector=lambda _: baca.select.tleaves(_, rleak=True),
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
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 3),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eb4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-glockenspiel-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 4),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
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
        ("perc1", (5, 9)),
        library.slate_staff_position(),
        baca.new(
            baca.flat_glissando(
                hide_stem_selector=lambda _: baca.select.leaves(_)[2:-1],
                selector=lambda _: baca.select.pleaves(_),
            ),
            measures=(7, 9),
        ),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic(
            '"f"-sempre',
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 2),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 10)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", 4),
        library.brake_drum_staff_position(),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (1, 4)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc2", 5),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        library.purpleheart_staff_positions([2, -2, 0]),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (6, 7)),
        library.purpleheart_staff_positions([-2, 0, 2, 0, 2, -2]),
    )
    accumulator(
        ("perc2", (5, 10)),
        baca.dls_staff_padding(5),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.damp(
            selector=lambda _: baca.select.rest(_, 0),
        ),
        baca.pitch("<B4 C5>"),
        baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 3),
        baca.pitch("Eb4"),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
    )
    accumulator(
        ("hp", 4),
        baca.pitch("E4"),
        baca.snap_pizzicato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("hp", [5, 9]),
        baca.pitch("<B4 C5>"),
        baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
        baca.new(
            baca.dynamic("f-ancora"),
            match=[0],
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.markup(
            r"\baca-lv-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (1, 10)),
        baca.dls_staff_padding(4 + 2),
    )


def va(m):
    accumulator(
        ("va", 4),
        baca.pitch("Bb3"),
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", (5, 10)),
        baca.pitch("F4"),
        baca.dynamic(
            "p",
            selector=lambda _: baca.select.pheads(_)[:2],
        ),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 2),
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 2)),
        baca.pitch("A2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc1", 4),
        baca.pitch("Aqf3"),
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc1", (5, 9)),
        baca.pitch("A2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_)[:1],
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o<| fff-scratch",
            map=lambda _: baca.select.runs(_)[1:2],
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 2)),
        baca.pitch("G2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc2", 3),
        baca.literal(
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"10:8"',
            ],
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("F3"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.scp_spanner(
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 4),
        baca.pitch("F3"),
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("vc2", (5, 9)),
        baca.pitch("G2"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_)[:1],
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o<| fff-scratch",
            map=lambda _: baca.select.runs(_)[1:2],
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 2)),
        baca.pitch("G#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb1", 3),
        baca.literal(
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"11:8"',
            ],
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("Dtqf3"),
        baca.markup(
            r"\baca-seven-e-flat",
            abjad.Tweak(r"- \tweak X-offset 3"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.scp_spanner(
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.pitch("Dtqf3"),
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb1", (5, 9)),
        baca.pitch("G#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_)[:1],
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o<| fff-scratch",
            map=lambda _: baca.select.runs(_)[1:2],
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 2)),
        baca.pitch("F#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("cb2", 3),
        baca.literal(
            [
                r"\once \override TupletBracket.edge-height = #'(0.7 . 0)",
                r'\once \override TupletNumber.text = #"12:8"',
            ],
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.pitch("Eb2"),
        baca.triple_staccato(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic(
            "f-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.scp_spanner(
            "P4 ||",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb2", 4),
        baca.pitch("Dtqf3"),
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("cb2", (5, 9)),
        baca.pitch("F#1"),
        baca.new(
            baca.stop_on_string(),
            selector=lambda _: abjad.select.leaf(_, -1),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.hairpin(
            "o<| f",
            map=lambda _: baca.select.runs(_)[:1],
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "o<| fff-scratch",
            map=lambda _: baca.select.runs(_)[1:2],
            selector=lambda _: baca.select.leaves(_)[:-1],
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], 4),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 10)),
        baca.dls_staff_padding(4),
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
