import abjad
import baca

from harmony import library

#########################################################################################
######################################### 24 [X] ########################################
#########################################################################################

stage_markup = (
    ("[X.1-3]", 1),
    ("[<V.6]", 4, "#darkgreen"),
    ("[X.4-5]", 5),
    ("[X.6-8]", 7),
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
        (4, 4),
        (3, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
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
    (1 - 1, "48"),
    (1 - 1, "2.=4"),
    (4 - 1, "72"),
    (4 - 1, "3:2(4)=4"),
    (5 - 1, "48"),
    (5 - 1, "4.=4"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 3, -3],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [2, 2, -2],
    )
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [5, -3],
    )
    voice.extend(music)
    music = baca.make_notes(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -3],
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, -8, 2, -3, 2, -8],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5),
        [1, "-"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(6))
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(4, 4), (4, 4), (4, 4), (1, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7, 9),
        [16, 16, 16, -4, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 0, 0, 2],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [1, -9, 1, -4, 1, -9],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(4))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(5, 9),
        [3, -3],
    )
    voice.extend(music)


def VA(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        4,
    )
    voice.extend(music)


def VC1(voice):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=[5],
        invisible=[6],
        tie=[6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        3,
    )
    voice.extend(music)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        2,
    )
    voice.extend(music)


def CB1(voice):
    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(2, 4), (8, 4), (2, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [4, 4, 4, -4, -2, 2, 2, -2, -8, 2, 2, -8, -4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[4, 0, 4],
        denominator=None,
        written_quarters=[5],
        invisible=[6],
        tie=[6],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        [4, "-"],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        1,
    )
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 3),
        [2, 2, -10],
        written_quarters=[0, 1, 4, 5],
        invisible=[1, 5],
        tie_runs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4),
        ["+"],
        after_graces=[1],
    )
    voice.extend(music)
    music = library.make_tessera_3(
        accumulator.get(5, 9),
        0,
    )
    voice.extend(music)


def bfl(m):
    accumulator(
        ("bfl", (1, 3)),
        baca.pitch("F5"),
        baca.hairpin(
            "niente o< mf >o",
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: baca.select.runs(_),
        ),
        baca.text_spanner(
            "A -> T -> A",
            abjad.Tweak(r"- \tweak staff-padding 9"),
            pieces=lambda _: baca.select.lparts(_, [1, 2 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    accumulator(
        ("bfl", (5, 9)),
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
        ),
        baca.text_spanner(
            "A -> T -> A",
            abjad.Tweak(r"- \tweak staff-padding 10"),
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    accumulator(
        ("bfl", (1, 9)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", (1, 3)),
        library.slate_staff_position(),
        baca.dynamic("mp"),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", 4),
        library.triangle_staff_position(),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dynamic(
            "pp-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-triangle-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", (5, 9)),
        library.slate_staff_position(),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.markup(
            r"\baca-slate-scrape-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc1", (1, 9)),
        baca.dls_staff_padding(6),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 3)),
        library.bass_drum_staff_position(),
        baca.hairpin(
            "o<| mf",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )
    accumulator(
        ("perc2", 5),
        baca.staff_lines(3),
        library.purpleheart_staff_positions([2]),
        baca.dynamic("ff"),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak staff-padding 5"),
        ),
    )
    accumulator(
        ("perc2", (7, 9)),
        baca.staff_lines(1),
        baca.new(
            library.tam_tam_staff_position(),
            baca.flat_glissando(),
            selector=lambda _: abjad.select.run(_, 0),
        ),
        baca.new(
            library.purpleheart_staff_positions([2]),
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pheads(_), [0, 2]),
        ),
        baca.dynamic("p"),
        baca.dls_staff_padding(
            6,
            selector=lambda _: baca.select.leaves(_)[:-2],
        ),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        baca.new(
            baca.dynamic("ff"),
            baca.dls_staff_padding(5),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.staff_lines(
            3,
            selector=lambda _: abjad.select.leaf(_, -2),
        ),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: abjad.select.leaf(_, -1),
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 10.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-1:]),
        ),
    )


def hp(m):
    accumulator(
        ("hp", (1, 3)),
        baca.pitch("A4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic(
            "mf",
            selector=lambda _: abjad.select.get(baca.select.pheads(_), [0], 3),
        ),
        baca.dynamic(
            "mp",
            selector=lambda _: abjad.select.get(baca.select.pheads(_), [1], 3),
        ),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-pdlt-markup",
            abjad.Tweak(r"- \tweak staff-padding 4"),
        ),
    )
    accumulator(
        ("hp", (5, 9)),
        baca.clef("percussion"),
        baca.staff_lines(1),
        library.whisk_staff_position(),
        baca.dynamic(
            "p-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
    )


def va(m):
    accumulator(
        ("va", (1, 3)),
        baca.clef("alto"),
        baca.pitch("F4"),
        # NOTE: text spanner must currently lexically precede pitched trill
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="M2",
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    accumulator(
        ("va", 4),
        baca.pitches("D4 C#4"),
        baca.glissando(),
        baca.hairpin(
            "pp >o niente",
        ),
    )
    accumulator(
        ("va", (5, 9)),
        baca.pitch("F#3"),
        baca.scp_spanner(
            "P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 -> P3 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", (1, 3)),
        baca.clef("treble"),
        baca.staff_lines(5),
        baca.tuplet_bracket_down(),
        baca.new(
            baca.pitch("F4"),
            baca.triple_staccato(),
            selector=lambda _: abjad.select.get(
                baca.select.pheads(_), [0, 1, 2, -2, -1]
            ),
        ),
        # NOTE: text spanner must currently come before pitched trill spanner
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[5:12],
        ),
        baca.new(
            baca.pitch("F4"),
            baca.hairpin(
                "niente o<| mp |>o",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            ),
            baca.trill_spanner(
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="M2",
            ),
            map=lambda _: baca.select.rleak_runs(_, 1, -1),
        ),
        baca.scp_spanner(
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: abjad.select.get(
                abjad.select.runs(baca.rleak(abjad.select.leaves(_))), [0, -1]
            ),
        ),
    )
    accumulator(
        ("vc1", 4),
        baca.pitch("F4"),
        baca.triple_staccato(selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("vc1", (3, 4)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[2:],
        ),
    )
    accumulator(
        ("vc1", (5, 9)),
        baca.clef("bass"),
        baca.pitch("F#2"),
        baca.scp_spanner(
            "P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 -> P1 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def vc2(m):
    accumulator(
        ("vc2", (1, 3)),
        baca.clef("treble"),
        baca.pitch("F4"),
        # NOTE: text spanner must currently lexically precede pitched trill
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="M2",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        # NOTE: current clef / after-grace contention:
        baca.clef(
            "bass",
            selector=lambda _: abjad.select.leaf(_, -1),
        ),
    )
    accumulator(
        ("vc2", 4),
        baca.pitches("D3 C#3"),
        baca.glissando(),
        baca.hairpin(
            "pp >o niente",
        ),
    )
    accumulator(
        ("vc2", (5, 9)),
        baca.pitch("F#2"),
        baca.scp_spanner(
            "P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O -> P2 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb1(m):
    accumulator(
        ("cb1", (1, 3)),
        baca.clef("treble"),
        baca.staff_lines(5),
        baca.tuplet_bracket_down(),
        baca.new(
            baca.pitch(
                "E4",
                do_not_transpose=True,
            ),
            baca.triple_staccato(),
            selector=lambda _: abjad.select.get(
                baca.select.pheads(_), [0, 1, 2, -2, -1]
            ),
        ),
        # NOTE: text spanner must currently come before pitched trill spanner
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[5:12],
        ),
        baca.new(
            baca.pitch(
                "E4",
                do_not_transpose=True,
            ),
            baca.hairpin(
                "niente o<| mp |>o",
                pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            ),
            baca.trill_spanner(
                abjad.Tweak(r"- \tweak staff-padding 3"),
                alteration="m2",
            ),
            map=lambda _: baca.select.rleak_runs(_, 1, -1),
        ),
        baca.scp_spanner(
            "P =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            map=lambda _: abjad.select.get(
                abjad.select.runs(baca.rleak(abjad.select.leaves(_))), [0, -1]
            ),
        ),
    )
    accumulator(
        ("cb1", 4),
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        baca.triple_staccato(selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("cb1", (3, 4)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[2:],
        ),
    )
    accumulator(
        ("cb1", (5, 9)),
        baca.clef("bass"),
        baca.pitch("F#1"),
        baca.scp_spanner(
            "P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 -> O ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 3)),
        baca.clef("treble"),
        baca.pitch(
            "E4",
            do_not_transpose=True,
        ),
        # NOTE: text spanner must currently lexically precede pitched trill
        baca.scp_spanner(
            "T4 =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
        ),
        baca.trill_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            alteration="m2",
            map=lambda _: baca.select.rleak_runs(_),
        ),
        # NOTE: current clef / after-grace contention:
        baca.clef(
            "bass",
            selector=lambda _: abjad.select.leaf(_, -1),
        ),
    )
    accumulator(
        ("cb2", 4),
        baca.pitches("D3 C#3"),
        baca.glissando(),
        baca.hairpin(
            "pp >o niente",
        ),
    )
    accumulator(
        ("cb2", (5, 9)),
        baca.pitch("F#1"),
        baca.scp_spanner(
            "O -> P2 -> P1 -> P3 -> P2 -> P4 -> P2 -> P3 -> P1 -> P2 ->",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.plts(_),
            selector=lambda _: baca.select.leaves(_),
        ),
    )


def composites(cache):
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc2", "cb2"], (1, 3)),
        baca.new(
            baca.staff_lines(5),
            match=[0, 1],
        ),
        baca.hairpin(
            "niente o<| mp |>o",
            pieces=lambda _: baca.select.lparts(_, [1, 1 + 1]),
            map=lambda _: baca.select.rleak_runs(_),
        ),
    )
    # va, vc2, cb2
    accumulator(
        (["va", "vc2", "cb2"], 4),
        baca.new(
            baca.scp_spanner(
                "T2 -> T4",
                abjad.Tweak(r"- \tweak staff-padding 3"),
                autodetect_right_padding=False,
                bookend=True,
                selector=lambda _: baca.select.leaves(_),
            ),
            match=[0, 1],
        ),
        baca.new(
            baca.scp_spanner(
                "T2 -> T4",
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
                autodetect_right_padding=False,
                bookend=True,
                selector=lambda _: baca.select.leaves(_),
            ),
            match=[2],
        ),
    )
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (5, 9)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.chunk(
            baca.accent(
                selector=lambda _: baca.select.pheads(_),
            ),
            baca.flat_glissando(),
        ),
        baca.dynamic("pp"),
        baca.hairpin(
            "(pp) < f",
            measures=(7, 8),
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    # va, vc1, vc2, cb1, cb2
    accumulator(
        (["va", "vc1", "vc2", "cb1", "cb2"], (1, 9)),
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
    previous_persist = baca.previous_metadata(__file__, file_name="__persist__")
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
