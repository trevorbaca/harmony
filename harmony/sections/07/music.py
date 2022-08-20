import abjad
import baca

from harmony import library

#########################################################################################
######################################### 07 [G] ########################################
#########################################################################################

score = music = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    time_signatures=[
        (4, 4),
        (3, 4),
        (1, 4),
        (4, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (4, 4),
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
    ("[G.1]", 1),
    ("[>H.1]", 2, "#darkgreen"),
    ("[G.2-3]", 4),
    ("[<F.3]", 6, "#darkgreen"),
    ("[>I.1]", 7, "#darkgreen"),
    ("[G.4]", 8),
)
baca.label_stage_numbers(skips, stage_markup)

for index, item in (
    (1 - 1, "57 3/5"),
    (1 - 1, "6:5(4)=4"),
    (2 - 1, "96"),
    (2 - 1, "5:3(4)=4"),
    (4 - 1, "57 3/5"),
    (4 - 1, "3:5(4)=4"),
    (6 - 1, "48"),
    (6 - 1, "5:6(4)=4"),
    (7 - 1, "144"),
    (7 - 1, "3:2(8)=4"),
    (8 - 1, "57 3/5"),
    (8 - 1, "4:5(2)=4"),
):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, library.manifests)

rests = score["Rests"]
for index, string in ((3 - 1, "fermata"),):
    baca.global_fermata_function(rests[index], string)

# text

wrappers = baca.markup_function(
    skips[3 - 1],
    r"\harmony-text-six",
    abjad.Tweak(r"- \tweak extra-offset #'(4 . -30)"),
)
baca.tags.wrappers(wrappers, baca.tags.NOT_PARTS)


def BFL(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [1, 1, -28, 1, 1],
        written_eighths=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        ["-", -2, 4, -2, 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(7, 8), (5, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7),
        [-4, 8, "-", 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        written_quarters=[-2, -1],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, 1, "-"],
        written_eighths=True,
        invisible_pairs=True,
    )
    voice.extend(music)


def PERC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-15, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [1, -11],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [1, -16, 1, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-19, 1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [2, -2, 2, -2, -4, 2, -2, 2, -2, 2, -2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, "-"],
    )
    voice.extend(music)


def PERC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = baca.make_notes(accumulator.get(4, 5))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [16, "-", 1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(7))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        ["+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def HP(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [2, 2, "-"],
        written_quarters=True,
        invisible_pairs=True,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [6, 6],
        do_not_rewrite_meter=True,
        fuse=True,
        written_dotted_halves=[0],
        invisible=[1],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        [2, -28, 2],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-2, 4, "-", 4],
        extra_counts=[2],
        denominator=None,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (2, 4), (1, 8), (5, 8)])
        return result

    music = library.make_sixteenths(
        accumulator.get(7),
        [-4, -4, 8, -2, -4, 2, 2],
        preprocessor=preprocessor,
        extra_counts=[0, 4, 0, -2],
        denominator=None,
        written_quarters=[-2, -1],
        invisible=[-1],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [1, 1, "-"],
        written_eighths=[0, 1],
        invisible=[1],
        do_not_rewrite_meter=True,
    )
    voice.extend(music)


def VA(voice):
    music = library.make_appoggiato_rhythm(
        accumulator.get(1),
        counts=[5, 0, 0, 0, 0],
        divisions=[4, 12],
        extra_counts=[0, 8],
        prefix_counts=[0, 3],
        prefix_talea=[8, 4, 4],
        tie=[6],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4),
        counts=[4],
        fuse=True,
        voice_name=voice.name,
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(5),
        [6, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, -2],
        denominator=None,
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [4, 12, -4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7, 8),
        [-4, "+"],
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        counts=[15, 1],
        fuse=True,
        do_not_rewrite_meter=True,
        written_wholes=[0],
        invisible_pairs=True,
        tie=[0],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 5),
        divisions=[4, 4, 4, 4, 4, 4, 4, 4],
        counts=[4, 0, 0, 0, 0, 0, 0, 0],
        voice_name=voice.name,
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [-4, 8, "-"],
    )
    voice.extend(music)

    def preprocessor(divisions):
        result = baca.sequence.fuse(divisions)
        result = baca.sequence.split_divisions(result, [(1, 4), (3, 4)])
        return result

    music = library.make_sixteenths(
        accumulator.get(8),
        [8, 4, 4, 4, 4],
        preprocessor=preprocessor,
        extra_counts=[0, 8],
        denominator=None,
    )
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def VC2(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [-4, "+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        ["+"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(6),
        [-1, 2, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(8))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def CB1(voice):
    music = library.make_sixteenths(
        accumulator.get(1),
        [4, 4, 4, 4],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(2),
        [12],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3))
    voice.extend(music)
    music = library.make_appoggiato_rhythm(
        accumulator.get(4, 5),
        counts=[4],
        fuse=True,
        voice_name=voice.name,
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(6),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(8),
        [4, 4, 4, 4],
    )
    voice.extend(music)


def CB2(voice):
    music = library.make_sixteenths(
        accumulator.get(1, 2),
        [-4, "+"],
    )
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(3), head=voice.name)
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(4, 5),
        ["+"],
    )
    voice.extend(music)
    music = baca.make_repeated_duration_notes(
        accumulator.get(6),
        [(1, 4)],
    )
    voice.extend(music)
    music = library.make_sixteenths(
        accumulator.get(7),
        [-4, 8, "-"],
    )
    voice.extend(music)
    music = baca.make_repeat_tied_notes(accumulator.get(8))
    voice.extend(music)
    baca.append_anchor_note_function(voice)


## anchor notes
#
# accumulator(
#    ["perc2", "va", "vc1", "vc2", "cb2"],
#    baca.append_anchor_note(),
# )
#
## reapply
#
# music_voices = [_ for _ in voice_names if "Music" in _]
#
# accumulator(
#    music_voices,
#    baca.reapply_persistent_indicators(),
# )
def bfl(m):
    accumulator(
        ("bfl", 1),
        baca.pitch("Bb5"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            map=lambda _: baca.select.clparts(_, [3]),
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
    )
    accumulator(
        ("bfl", (4, 5)),
        baca.pitch("Bb5"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o<| f |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.dynamic_text_x_offset(
            -0.75,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
        baca.hairpin(
            "o<| mf |>o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-2:]),
        ),
        baca.dynamic_text_x_offset(
            -2,
            selector=lambda _: baca.select.pleaf(_, 3),
        ),
    )
    accumulator(
        ("bfl", 6),
        baca.pitch("Ab3"),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("bfl", 7),
        baca.tuplet_bracket_up(),
        baca.pitch(
            "G3",
            selector=lambda _: baca.select.runs(_)[:1],
        ),
        baca.pitch(
            "Bb5",
            selector=lambda _: baca.select.runs(_)[1:],
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_)[-2:],
        ),
        baca.hairpin(
            "o< f >o",
            forbid_al_niente_to_bar_line=True,
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[-2:],
        ),
    )
    accumulator(
        ("bfl", (6, 7)),
        baca.new(
            baca.covered_spanner(
                abjad.Tweak(r"- \tweak staff-padding 5.5"),
            ),
            baca.metric_modulation_spanner(
                abjad.Tweak(r"- \tweak staff-padding 8"),
            ),
            selector=lambda _: baca.select.leaves(_)[1:8],
        ),
    )
    accumulator(
        ("bfl", 8),
        baca.pitch("Bb5"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< f >o niente",
            pieces=lambda _: baca.select.clparts(_, [1]),
            selector=lambda _: baca.select.leaves(_)[:3],
        ),
        baca.dynamic_text_x_offset(
            -0.75,
            selector=lambda _: baca.select.pleaf(_, 1),
        ),
    )
    accumulator(
        ("bfl", (7, 8)),
        baca.tuplet_bracket_staff_padding(6.5),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 11.5"),
            selector=lambda _: baca.select.leaves(_)[4:9],
        ),
    )
    accumulator(
        ("bfl", (1, 8)),
        baca.dls_staff_padding(4),
    )


def perc1(m):
    accumulator(
        ("perc1", 1),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(2),
        baca.dynamic("mp", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 2),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.brake_drum_staff_position(),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-brake-drum-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", (4, 5)),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(2),
        baca.hairpin(
            "f mp",
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 6),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.bass_drum_staff_position(),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-bd-superball-markup",
            abjad.Tweak(r"- \tweak self-alignment-X 1"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc1", 7),
        library.slate_staff_position(),
        baca.accent(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.markup(
            r"\baca-slate-brush-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dynamic(
            '"f"',
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc1", (6, 7)),
        baca.dls_staff_padding(6),
    )
    accumulator(
        ("perc1", 8),
        baca.staff_lines(3, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_position(2),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(5),
        baca.markup(
            r"\baca-purpleheart-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            abjad.Tweak(r"- \tweak staff-padding 5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )


def perc2(m):
    accumulator(
        ("perc2", (1, 2)),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.stem_tremolo(
            selector=lambda _: abjad.select.get(baca.select.pleaves(_), [0, -1]),
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.markup(
            r"\baca-tam-tam-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("perc2", (4, 5)),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("perc2", 6),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.new(
            library.brake_drum_staff_position(),
            baca.damp(selector=lambda _: baca.select.phead(_, 0)),
            baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
            baca.markup(
                r"\baca-brake-drum-markup",
                abjad.Tweak(r"- \tweak self-alignment-X 1"),
                abjad.Tweak(r"- \tweak staff-padding 6"),
            ),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    )
    accumulator(
        ("perc2", (4, 6)),
        baca.new(
            library.tam_tam_staff_position(),
            baca.flat_glissando(
                hide_middle_stems=True,
            ),
            selector=lambda _: abjad.select.run(_, 0),
        ),
    )
    accumulator(
        ("perc2", 8),
        library.tam_tam_staff_position(),
        baca.flat_glissando(
            hide_middle_stems=True,
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.pleaves(_)),
        ),
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
        ("perc2", (1, 8)),
        baca.dls_staff_padding(6),
    )


def hp(m):
    accumulator(
        ("hp", 1),
        library.whisk_staff_position(),
        #    baca.hairpin(
        #        'o< "f" >o niente',
        #        left_broken=True,
        #        map=lambda _: baca.select.clparts(_, [3]),
        #        pieces=lambda _: baca.select.clparts(_, [1]),
        #    ),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            left_broken=True,
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[:2]),
        ),
    )
    accumulator(
        ("hp", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<B5 C6 D6>"),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.hairpin(
            "o< mf >o niente",
            pieces=lambda _: baca.select.lparts(_, [1, 2]),
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.dls_staff_padding(4),
        baca.markup(
            r"\baca-bisb-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", (4, 5)),
        baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(1, selector=lambda _: abjad.select.leaf(_, 0)),
        library.whisk_staff_position(),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dynamic(
            "mf",
            selector=lambda _: baca.select.phead(_, -1),
        ),
        baca.dls_staff_padding(6),
        baca.markup(
            r"\baca-whisk-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("hp", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.staff_lines(5, selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitches("F#4 G#4"),
        baca.laissez_vibrer(
            selector=lambda _: baca.select.ptails(_),
        ),
        baca.dynamic("mf", selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(4),
        baca.text_spanner(
            r"\baca-fingernail-markup =|",
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            autodetect_right_padding=True,
            bookend=False,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("hp", 7),
        baca.new(
            baca.pitch("<B5 C#6>"),
            baca.double_flageolet(selector=lambda _: baca.select.phead(_, 0)),
            baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
            baca.markup(
                r"\baca-lv-markup",
                abjad.Tweak(r"- \tweak padding 1.5"),
            ),
            baca.dls_staff_padding(4 + 2),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.new(
            baca.clef("percussion", selector=lambda _: abjad.select.leaf(_, 0)),
            baca.staff_lines(1),
            library.whisk_staff_position(),
            baca.markup(r"\baca-whisk-markup"),
            selector=lambda _: baca.select.pleaf(_, -2),
        ),
        #    baca.hairpin(
        #        'o< "f" >o',
        #        forbid_al_niente_to_bar_line=True,
        #        pieces=lambda _: baca.select.lparts(_, [1, 1]),
        #        selector=lambda _: baca.select.leaves(_)[-2:],
        #    ),
        baca.new(
            baca.dynamic('"f"'),
            baca.dls_staff_padding(6 + 2),
            selector=lambda _: baca.select.pleaf(_, -2),
        ),
    )
    accumulator(
        ("hp", 8),
        library.whisk_staff_position(),
        #    baca.hairpin(
        #        'o< "f" >o niente',
        #        pieces=lambda _: baca.select.lparts(_, [1, 2]),
        #        selector=lambda _: baca.select.leaves(_)[:3],
        #    ),
        baca.dynamic('"f"', selector=lambda _: baca.select.phead(_, 0)),
        baca.dls_staff_padding(6 + 2),
    )
    accumulator(
        ("hp", (7, 8)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 8"),
            selector=lambda _: baca.select.leaves(_)[5:10],
        ),
    )


def va(m):
    accumulator(
        ("va", 1),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
    )
    accumulator(
        ("va", (1, 2)),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            library.appoggiato_pitches_b_flat(),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_, grace=False)[1:],
        ),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[7:12],
        ),
    )
    accumulator(
        ("va", 4),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
    )
    accumulator(
        ("va", 6),
        baca.hairpin(
            "pp >o niente",
            selector=lambda _: baca.select.leaves(_)[1:3],
        ),
    )
    accumulator(
        ("va", (4, 6)),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=False,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_, grace=False)[1:],
        ),
    )
    accumulator(
        ("va", (5, 6)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            selector=lambda _: baca.select.leaves(_)[2:6],
        ),
    )
    accumulator(
        ("va", (7, 8)),
        baca.pitch("C#4"),
        baca.flat_glissando(selector=lambda _: baca.select.pleaves(_)),
        baca.hairpin(
            "mf >o niente",
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
        baca.bow_speed_spanner(
            "XFB =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.ltleaves(_)),
        ),
    )
    accumulator(
        ("va", (1, 8)),
        baca.dls_staff_padding(
            4,
            selector=lambda _: baca.select.leaves(_, grace=False),
        ),
    )


def vc1(m):
    accumulator(
        ("vc1", 1),
        baca.pitch("E4"),
        baca.hairpin(
            "f >o niente",
            left_broken=True,
        ),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak bound-details.right.padding -1.5"),
            abjad.Tweak(r"- \tweak staff-padding 3.5"),
            autodetect_right_padding=False,
            left_broken=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("vc1", 2),
        baca.pitch("<C5 Db5 Eb5>"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("vc1", (4, 5)),
        baca.pitch(
            "Bb3",
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 1),
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 9"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_, grace=False)[1:],
        ),
    )
    accumulator(
        ("vc1", 6),
        baca.pitch("E4"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc1", 7),
        baca.pitch("B4"),
    )
    accumulator(
        ("vc1", 8),
        baca.pitch("Bb4"),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_)[-4:],
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
        baca.metric_modulation_spanner(
            abjad.Tweak(r"- \tweak staff-padding 5.5"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(abjad.select.leaves(_)[-4:]),
        ),
    )
    accumulator(
        ("vc1", (1, 8)),
        baca.dls_staff_padding(4),
    )


def vc2(m):
    accumulator(
        ("vc2", 1),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("B2"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak bound-details.right.padding 4"),
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("<B4 C5 D5>"),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
    )
    accumulator(
        ("vc2", (4, 5)),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("B2"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", 6),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("Eqf4"),
        baca.dynamic("f", selector=lambda _: baca.select.phead(_, 0)),
        baca.bow_speed_spanner(
            "scr. =|",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            map=lambda _: baca.select.runs(_),
            selector=lambda _: baca.select.tleaves(_, rleak=True),
        ),
    )
    accumulator(
        ("vc2", 7),
        baca.pitch("Dqs4"),
        baca.markup(
            r"\baca-eleven-a",
            abjad.Tweak(r"- \tweak padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("vc2", 8),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch("B2"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("vc2", (1, 8)),
        baca.dls_staff_padding(4),
    )


def cb1(m):
    accumulator(
        ("cb1", 1),
        baca.flat_glissando(
            "E1",
            left_broken=True,
        ),
        baca.hairpin(
            "ff >o",
            bookend=False,
            left_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.scp_spanner(
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            left_broken=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", 2),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "<C5 Db5 Eb5>",
            do_not_transpose=True,
        ),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("cb1", (4, 5)),
        baca.pitch(
            "Bb3",
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=False),
        ),
        baca.pitches(
            abjad.sequence.rotate(library.appoggiato_pitches_b_flat(), -5 - 2),
            do_not_transpose=True,
            selector=lambda _: baca.select.plts(_, grace=True),
        ),
        baca.dynamic(
            "mp-pp",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: abjad.select.leaf(_, 0, grace=False),
        ),
        baca.text_spanner(
            r"\harmony-b-flat-sounds-ottava-higher-markup =|",
            abjad.Tweak(r"- \tweak direction #down"),
            abjad.Tweak(r"- \tweak staff-padding 8"),
            autodetect_right_padding=True,
            bookend=False,
            direction=abjad.DOWN,
            selector=lambda _: baca.select.tleaves(_, grace=False, rleak=True),
        ),
        baca.new(
            baca.note_head_style_harmonic(
                selector=lambda _: baca.select.pleaves(_, grace=True),
            ),
            map=lambda _: abjad.select.runs(_, grace=True),
        ),
    )
    accumulator(
        ("cb1", 6),
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.flat_glissando("E1"),
        baca.hairpin(
            "mf > p",
        ),
        baca.scp_spanner(
            "P1 -> T1",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=True,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb1", 7),
        baca.note_head_style_harmonic(selector=lambda _: baca.select.pleaves(_)),
        baca.pitch("E3"),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb1", 8),
        baca.clef("treble", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.pitch(
            "Bb4",
            do_not_transpose=True,
        ),
        baca.espressivo(
            selector=lambda _: baca.select.pheads(_),
        ),
        baca.dynamic("pp", selector=lambda _: baca.select.phead(_, 0)),
    )
    accumulator(
        ("cb1", (1, 8)),
        baca.dls_staff_padding(4),
    )


def cb2(m):
    accumulator(
        ("cb2", (1, 2)),
        baca.pitch("Bb2"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("cb2", (4, 5)),
        baca.pitch("Bb2"),
        baca.dynamic(
            "p-ancora",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
            selector=lambda _: baca.select.phead(_, 0),
        ),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("cb2", 6),
        baca.flat_glissando("E1"),
        baca.hairpin(
            "p < f",
        ),
        baca.scp_spanner(
            "T1 -> P2 -> O",
            abjad.Tweak(r"- \tweak staff-padding 3"),
            autodetect_right_padding=False,
            bookend=-1,
            pieces=lambda _: baca.select.lparts(_, [2, 3]),
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("cb2", 7),
        baca.pitch("A1"),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 1"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("cb2", 8),
        baca.pitch("Bb2"),
        baca.dynamic("p", selector=lambda _: baca.select.phead(_, 0)),
        baca.damp_spanner(
            abjad.Tweak(r"- \tweak staff-padding 3"),
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.tleaves(_)),
        ),
    )
    accumulator(
        ("cb2", (1, 8)),
        baca.dls_staff_padding(4),
    )


def composites(cache):
    accumulator(
        (["vc1", "vc2", "cb1"], 2),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.markup(
            r"\baca-quasi-bisb-markup",
            abjad.Tweak(r"- \tweak padding 1.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        (["vc1", "vc2", "cb1", "cb2"], 7),
        baca.stop_on_string(
            selector=lambda _: baca.select.leaf_in_each_rleak_run(_, -1),
        ),
        baca.hairpin(
            "o<| ff",
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
