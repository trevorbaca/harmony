import inspect

import abjad
import baca
import quicktions
from abjadext import rmakers


def _reference_meters():
    return (
        abjad.Meter("(5/4 (1/4 1/4 1/4 1/4 1/4))"),
        abjad.Meter("(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))"),
    )


def appoggiato_pitches_d_flat_3():
    return "F3 F#3  D3 D#3 Dtqs3 E3 Eqs3 F3  D#3 F3 Fqs3 F#3 Ftqs3".split()


def appoggiato_pitches_c_3():
    return "E3 F3  C#3 D3 Dqs3 D#3 Dtqs3 E3  D3 E3 Eqs3 F3 Fqs3".split()


def appoggiato_pitches_b_2():
    return "D#3 E3  C3 C#3 Ctqs3 D3 Dqs3 D#3  C#3 D#3 Dtqs3 E3 Eqs3".split()


def appoggiato_pitches_b_flat():
    return "D5 D#5  B4 C5 Cqs5 C#5 Ctqs5 D5  C5 D5 Dqs5 D#5 Dtqs5".split()


def appoggiato_pitches_a():
    return "C#5 D5  A#4 B4 Bqs4 C5 Cqs5 C#5  B4 C#5 Ctqs5 D5 Dqs5".split()


def appoggiato_pitches_a_flat():
    return "C5 C#5  A4 A#4 Atqs4 B4 Bqs4 C5  A#4 C5 Cqs5 C#5 Ctqs5".split()


def appoggiato_pitches_g():
    return "B4 C5  G#4 A4 Aqs4 A#4 Atqs4 B4  A4 B4 Bqs4 C5 Cqs5".split()


def bass_drum_staff_position(argument, *, allow_hidden=False):
    baca.staff_position(argument, -1, allow_hidden=allow_hidden)
    baca.stem_down(baca.select.pleaves(argument))
    baca.tuplet_bracket_up(argument)


def bridge_staff_position(o):
    baca.staff_position(o, 0)
    baca.stem_down(o.pleaves())
    baca.tuplet_bracket_up(o)


def brake_drum_staff_position(o):
    baca.staff_position(o, 0)
    baca.stem_up(o.pleaves())


def cerulean():
    return [1, -10, 1, -9, 1, -8, 1, -7, 1, -6, 1, -5, 1, -4, 1, -3, 1, "-"]


def damp_counts():
    return [3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4]


def damp_counts_curtailed():
    return [3, -1, 8, -8, 3, -1]


def glissando_counts():
    return eval(
        """[2, 1, -1, 4, 2, 1, -1, -8, 4, 2, 1, -1, 2, 1, -1, -16, 2, 1, -1, 8,
        2, 1, -1, -4, 2, 1, -1]"""
    )


def glissando_counts_curtailed():
    return [2, 1, -1, 4, 2, 1, -1, -8, 2, 1, -1]


def duration_color():
    return [21, -14, 18, "-"]


def make_appoggiato_rhythm(
    time_signatures,
    *,
    divisions=None,
    counts=(),
    extra_counts=(),
    fuse=False,
    incise=False,
    prefix_talea=(),
    prefix_counts=(),
    rest_after=None,
    rest_to=None,
    rest_from=None,
    suffix_talea=(),
    suffix_counts=(),
    tie=None,
    written_quarters=None,
    invisible=None,
    after_graces=None,
    voice_name="",
):
    def make_plt_selector(rest_from, rest_to):
        def selector(argument):
            result = baca.select.plts(argument, grace=False)
            result = result[rest_from:rest_to]
            return result

        return selector

    def make_single_plt_selector(rest_after):
        def selector(argument):
            result = baca.select.plts(argument, grace=False)
            result = abjad.select.get(result, rest_after)
            return result

        return selector

    def select_nongrace_plts(argument):
        return baca.select.plts(argument, grace=False)

    if incise is True:
        prefix_talea = [-1]
        prefix_counts = [1]
    divisions_ = [abjad.NonreducedFraction(_) for _ in time_signatures]
    if fuse is True:
        divisions_ = baca.sequence.fuse(divisions_)
    elif divisions is not None:
        divisions = [(_, 16) for _ in divisions]
        divisions_ = baca.sequence.fuse(divisions_)
        divisions_ = baca.sequence.split_divisions(divisions_, divisions, cyclic=True)
        divisions_ = abjad.sequence.flatten(divisions_)
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.incised_function(
        divisions_,
        extra_counts=extra_counts,
        prefix_talea=prefix_talea,
        prefix_counts=prefix_counts,
        suffix_talea=suffix_talea,
        suffix_counts=suffix_counts,
        talea_denominator=16,
        tag=tag,
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    rmakers.extract_trivial_function(voice)
    rmakers.rewrite_meter_function(voice, reference_meters=_reference_meters(), tag=tag)
    rmakers.force_repeat_tie_function(voice, threshold=(1, 8), tag=tag)
    if rest_to:
        selector = make_plt_selector(None, rest_to)
        plts = selector(voice)
        rmakers.force_rest_function(plts, tag=tag)
    if rest_from is not None:
        selector = make_plt_selector(-rest_from, None)
        plts = selector(voice)
        rmakers.force_rest_function(plts, tag=tag)
    if counts:
        rmakers.on_beat_grace_container_function(
            voice,
            voice_name,
            baca.select.plts(voice),
            counts,
            leaf_duration=(1, 20),
            tag=tag,
        )
    if rest_after is True:
        selector = select_nongrace_plts
        plts = selector(voice)
        rmakers.force_rest_function(plts, tag=tag)
    elif rest_after is not None:
        selector = make_single_plt_selector(rest_after)
        plts = selector(voice)
        rmakers.force_rest_function(plts, tag=tag)
    if tie is not None:
        pleaves = baca.select.pleaves(voice)
        pleaves = abjad.select.get(pleaves, tie)
        rmakers.repeat_tie_function(pleaves, tag=tag)
    if written_quarters is not None:
        pleaves = baca.select.pleaves(voice)
        pleaves = abjad.select.get(pleaves, written_quarters)
        rmakers.written_duration_function(pleaves, (1, 4))
        leaves = baca.select.leaves(voice, grace=False)
        rmakers.unbeam_function(leaves)
    if invisible is not None:
        pleaves = baca.select.pleaves(voice)
        pleaves = abjad.select.get(pleaves, invisible)
        rmakers.invisible_music_function(pleaves, tag=tag)
    if after_graces is not None:
        pleaf = baca.select.pleaf(voice, -1)
        beam_and_slash = None
        if after_graces != [1]:
            beam_and_slash = True
        rmakers.after_grace_container_function(
            pleaf, after_graces, selector, beam_and_slash=beam_and_slash, tag=tag
        )
    music = abjad.mutate.eject_contents(voice)
    return music


def make_empty_score():
    tag = baca.tags.function_name(inspect.currentframe())
    # GLOBAL CONTEXT
    global_context = baca.score.make_global_context()
    # BASS FLUTE
    bass_flute_music_voice = abjad.Voice(name="BassFlute.Music", tag=tag)
    bass_flute_music_staff = abjad.Staff(
        [bass_flute_music_voice],
        simultaneous=True,
        name="BassFlute.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("BassFlute", bass_flute_music_staff)
    # PERCUSSION 1
    percussion_1_music_voice = abjad.Voice(name="Percussion.1.Music", tag=tag)
    percussion_1_music_staff = abjad.Staff(
        [percussion_1_music_voice],
        simultaneous=True,
        name="Percussion.1.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Percussion.1", percussion_1_music_staff)
    # PERCUSSION 2
    percussion_2_music_voice = abjad.Voice(name="Percussion.2.Music", tag=tag)
    percussion_2_music_staff = abjad.Staff(
        [percussion_2_music_voice],
        simultaneous=True,
        name="Percussion.2.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Percussion.2", percussion_2_music_staff)
    # HARP
    harp_music_voice = abjad.Voice(name="Harp.Music", tag=tag)
    harp_music_staff = abjad.Staff(
        [harp_music_voice],
        simultaneous=True,
        name="Harp.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Harp", harp_music_staff)
    # VIOLA
    viola_music_voice = abjad.Voice(name="Viola.Music", tag=tag)
    viola_music_staff = abjad.Staff(
        [viola_music_voice],
        simultaneous=True,
        name="Viola.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Viola", viola_music_staff)
    # CELLO 1
    cello_1_music_voice = abjad.Voice(name="Cello.1.Music", tag=tag)
    cello_1_music_staff = abjad.Staff(
        [cello_1_music_voice],
        simultaneous=True,
        name="Cello.1.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Cello.1", cello_1_music_staff)
    # CELLO 2
    cello_2_music_voice = abjad.Voice(name="Cello.2.Music", tag=tag)
    cello_2_music_staff = abjad.Staff(
        [cello_2_music_voice],
        simultaneous=True,
        name="Cello.2.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Cello.2", cello_2_music_staff)
    # CONTRABASS 1
    contrabass_1_music_voice = abjad.Voice(name="Contrabass.1.Music", tag=tag)
    contrabass_1_music_staff = abjad.Staff(
        [contrabass_1_music_voice],
        simultaneous=True,
        name="Contrabass.1.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Contrabass.1", contrabass_1_music_staff)
    # CONTRABASS 2
    contrabass_2_music_voice = abjad.Voice(name="Contrabass.2.Music", tag=tag)
    contrabass_2_music_staff = abjad.Staff(
        [contrabass_2_music_voice],
        simultaneous=True,
        name="Contrabass.2.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Contrabass.2", contrabass_2_music_staff)
    # WIND SECTION STAFF GROUP
    wind_section_staff_group = abjad.StaffGroup(
        [bass_flute_music_staff],
        lilypond_type="WindSectionStaffGroup",
        name="WindSectionStaffGroup",
        tag=tag,
    )
    # PERCUSSION SECTION STAFF GROUP
    percussion_section_staff_group = abjad.StaffGroup(
        [
            percussion_1_music_staff,
            percussion_2_music_staff,
            harp_music_staff,
        ],
        lilypond_type="PercussionSectionStaffGroup",
        name="PercussionSectionStaffGroup",
        tag=tag,
    )
    # STRING SECTION STAFF GROUP
    string_section_staff_group = abjad.StaffGroup(
        [
            viola_music_staff,
            cello_1_music_staff,
            cello_2_music_staff,
            contrabass_1_music_staff,
            contrabass_2_music_staff,
        ],
        lilypond_type="StringSectionStaffGroup",
        name="StringSectionStaffGroup",
        tag=tag,
    )
    # MUSIC CONTEXT
    music_context = abjad.Context(
        [
            wind_section_staff_group,
            percussion_section_staff_group,
            string_section_staff_group,
        ],
        lilypond_type="MusicContext",
        simultaneous=True,
        name="MusicContext",
        tag=tag,
    )
    # SCORE
    score = abjad.Score([global_context, music_context], name="Score", tag=tag)
    baca.score.assert_lilypond_identifiers(score)
    baca.score.assert_unique_context_names(score)
    return score


def make_phjc_rhythm(
    time_signatures,
    divisions,
    counts,
    *,
    extra_counts=(),
    rest=None,
    rest_cyclic=None,
    rest_except=None,
    rest_pleaves=None,
    rest_most=None,
    rest_nonfirst=False,
):
    def preprocessor(argument):
        result = baca.sequence.fuse(argument)
        result = baca.sequence.quarters(result)
        result = baca.sequence.partition(result, divisions)
        result = [abjad.sequence.flatten(_) for _ in result]
        result = [baca.sequence.fuse(_) for _ in result]
        return result

    commands = []
    if rest is not None:

        def selector(argument):
            return baca.select.tuplets(argument, rest)

        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_cyclic is not None:

        def selector(argument):
            return baca.select.tuplets(argument, rest_cyclic)

        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_except is not None:

        def selector(argument):
            return baca.select.tuplets(argument, ~abjad.Pattern(rest_except))

        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_most is True:

        def selector(argument):
            return baca.select.tuplets(argument, (None, 1))

        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_nonfirst is True:

        def selector(argument):
            return baca.select.tuplets(argument, (1, None))

        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    if rest_pleaves is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, rest_pleaves)
            return result

        force_ = rmakers.force_rest(selector)
        commands.append(force_)
    rhythm_maker = rmakers.stack(
        rmakers.talea(counts, 16, extra_counts=extra_counts),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.denominator((1, 8)),
        rmakers.force_fraction(),
        rmakers.force_repeat_tie((1, 8)),
        rmakers.force_rest(
            lambda _: baca.select.leaves_in_each_plt(_, 1, None),
        ),
        rmakers.force_rest(
            lambda _: baca.select.leaf_in_each_tuplet(_, 0),
        ),
        rmakers.beam(),
        rmakers.extract_trivial(),
        preprocessor=preprocessor,
        tag=baca.tags.function_name(inspect.currentframe()),
    )
    music = rhythm_maker(time_signatures)
    return music


def make_rimbalzandi_rhythm_function(
    time_signatures, *, extra_counts=(), rest_except=None
):
    tag = baca.tags.function_name(inspect.currentframe())
    divisions = [abjad.NonreducedFraction(_) for _ in time_signatures]
    divisions = baca.sequence.fuse(divisions, [2], cyclic=True)
    nested_music = rmakers.even_division_function(
        divisions, [4], extra_counts=extra_counts, tag=tag
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    rmakers.trivialize_function(voice)
    rmakers.rewrite_dots_function(voice, tag=tag)
    if rest_except is not None:
        leaves = abjad.select.leaves(voice)
        leaves = abjad.select.exclude(leaves, rest_except)
        rmakers.force_rest_function(leaves, tag=tag)
    rmakers.force_diminution_function(voice)
    rmakers.force_fraction_function(voice)
    rmakers.extract_trivial_function(voice)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_sixteenths(
    time_signatures,
    counts,
    *,
    beam=False,
    fuse=False,
    preprocessor=None,
    denominator=(1, 16),
    do_not_rewrite_meter=False,
    extra_counts=(),
    written_eighths=None,
    written_quarters=None,
    written_dotted_quarters=None,
    written_halves=None,
    written_dotted_halves=None,
    written_wholes=None,
    written_dotted_wholes=None,
    written_double_dotted_wholes=None,
    invisible=None,
    invisible_pairs=False,
    talea_denominator=None,
    tie=None,
    tie_runs=False,
    tie_all=False,
    untie=False,
    unbeam=False,
    after_graces=None,
):
    talea_denominator = talea_denominator or 16
    if fuse is True:

        def preprocessor_(argument):
            return list(argument)

    elif preprocessor is None:

        def preprocessor_(argument):
            result = baca.sequence.fuse(argument)
            result = baca.sequence.quarters(result)
            return result

    else:
        preprocessor_ = preprocessor
    beam_commands = []
    if beam:
        beam_ = rmakers.beam()
        beam_commands.append(beam_)
    commands = []
    if denominator is not None:
        denominator_ = rmakers.denominator(denominator)
        commands.append(denominator_)
    if not do_not_rewrite_meter:
        rewrite_ = rmakers.rewrite_meter(
            boundary_depth=1, reference_meters=_reference_meters()
        )
        commands.append(rewrite_)
    if written_eighths is True:

        def selector(argument):
            result = baca.select.pleaves(argument)
            return result

        written_ = rmakers.written_duration(
            (1, 8),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_eighths is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_eighths)
            return result

        written_ = rmakers.written_duration(
            (1, 8),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_quarters is True:

        def selector(argument):
            result = baca.select.pleaves(argument)
            return result

        written_ = rmakers.written_duration(
            (1, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_quarters is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_quarters)
            return result

        written_ = rmakers.written_duration(
            (1, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_quarters is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_dotted_quarters)
            return result

        written_ = rmakers.written_duration(
            (3, 8),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_halves is True:

        def selector(argument):
            result = baca.select.pleaves(argument)
            return result

        written_ = rmakers.written_duration(
            (1, 2),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    elif written_halves is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_halves)
            return result

        written_ = rmakers.written_duration(
            (1, 2),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_halves is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_dotted_halves)
            return result

        written_ = rmakers.written_duration(
            (3, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_wholes is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_wholes)
            return result

        written_ = rmakers.written_duration(
            (1, 1),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_dotted_wholes is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_dotted_wholes)
            return result

        written_ = rmakers.written_duration(
            (3, 2),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if written_double_dotted_wholes is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, written_double_dotted_wholes)
            return result

        written_ = rmakers.written_duration(
            (7, 4),
            selector,
        )
        commands.append(written_)
        unbeam_ = rmakers.unbeam()
        commands.append(unbeam_)
    if invisible_pairs is True:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, ([1], 2))
            return result

        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if invisible is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, invisible)
            return result

        invisible_ = rmakers.invisible_music(selector)
        commands.append(invisible_)
    if tie is not None:

        def selector(argument):
            result = baca.select.pleaves(argument)
            result = abjad.select.get(result, tie)
            return result

        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if tie_all is True:

        def selector(argument):
            result = baca.select.pleaves(argument)[1:]
            return result

        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if tie_runs is True:

        def selector(argument):
            return baca.select.leaves_in_each_run(argument, 1, None)

        repeat_tie_ = rmakers.repeat_tie(selector)
        commands.append(repeat_tie_)
    if untie is True:

        def selector(argument):
            return baca.select.leaves(argument)

        untie_ = rmakers.untie(selector)
        commands.append(untie_)
    if unbeam is True:

        def selector(argument):
            return baca.select.leaves(argument)

        unbeam_ = rmakers.unbeam(selector)
        commands.append(unbeam_)
    if after_graces:

        def selector(argument):
            return baca.select.leaf_in_each_run(argument, -1)

        beam_and_slash = False
        if after_graces != [1]:
            beam_and_slash = True
        after_grace_ = rmakers.after_grace_container(
            after_graces,
            selector,
            beam_and_slash=beam_and_slash,
        )
        commands.append(after_grace_)
    rhythm_maker = rmakers.stack(
        rmakers.talea(counts, talea_denominator, extra_counts=extra_counts),
        rmakers.rewrite_rest_filled(),
        rmakers.rewrite_sustained(),
        *beam_commands,
        rmakers.extract_trivial(),
        rmakers.force_fraction(),
        *commands,
        rmakers.force_repeat_tie((1, 8)),
        preprocessor=preprocessor_,
        tag=baca.tags.function_name(inspect.currentframe()),
    )
    music = rhythm_maker(time_signatures)
    return music


def make_tessera_1(time_signatures, part, *, advance=0, gap=False):
    counts = [9, 14, 3, 8, 12, 16, 2, 4, 6, 7, 15]
    permutation = [2, 9, 10, 3, 4, 8, 0, 5, 6, 1, 7]
    assert sum(counts) == 96
    for i in range(part):
        counts = abjad.sequence.permute(counts, permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = list(new_counts)
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.talea_function(
        time_signatures, counts, 16, advance=advance, tag=tag
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    rmakers.extract_trivial_function(voice)
    rmakers.rewrite_meter_function(
        voice, boundary_depth=1, reference_meters=_reference_meters(), tag=tag
    )
    rmakers.force_repeat_tie_function(voice, threshold=(1, 8), tag=tag)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_tessera_2(time_signatures, part, *, advance=0, gap=False, rest_plts=None):
    counts = [3, 4, 14, 2, 6, 7, 8]
    permutation = [2, 3, 4, 0, 5, 6, 1]
    assert sum(counts) == 44
    for i in range(part):
        counts = abjad.sequence.permute(counts, permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = list(new_counts)
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.talea_function(
        time_signatures, counts, 16, advance=advance, tag=tag
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    # TODO: rest_plts -> force_rest_plts
    if rest_plts is not None:
        plts = baca.select.plts(voice)
        plts = abjad.select.get(plts, rest_plts)
        rmakers.force_rest_function(plts, tag=tag)
    rmakers.extract_trivial_function(voice)
    rmakers.rewrite_meter_function(
        voice, boundary_depth=1, reference_meters=_reference_meters(), tag=tag
    )
    rmakers.force_repeat_tie_function(voice, threshold=(1, 8), tag=tag)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_tessera_3(time_signatures, part, *, advance=0, gap=False):
    counts = [3, 7, 8, 13, 5, 6, 12, 9, 10, 11]
    permutation = [8, 9, 2, 3, 4, 0, 5, 6, 7, 1]
    assert sum(counts) == 84
    for i in range(part):
        counts = abjad.sequence.permute(counts, permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = list(new_counts)
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.talea_function(
        time_signatures, counts, 16, advance=advance, tag=tag
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    rmakers.extract_trivial_function(voice)
    rmakers.rewrite_meter_function(
        voice, boundary_depth=1, reference_meters=_reference_meters(), tag=tag
    )
    rmakers.force_repeat_tie_function(voice, threshold=(1, 8), tag=tag)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_tessera_4(time_signatures, part, *, advance=0, gap=False):
    counts = [14, 15, 3, 4, 12, 28, 2, 5, 6, 16, 24, 7, 8]
    permutation = [11, 12, 0, 4, 5, 1, 8, 9, 10, 2, 3, 6, 7]
    assert sum(counts) == 144
    for i in range(part):
        counts = abjad.sequence.permute(counts, permutation)
    if gap is True:
        new_counts = []
        for count in counts:
            new_counts.extend([count - 1, -1])
        counts = list(new_counts)
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.talea_function(
        time_signatures, counts, 16, advance=advance, tag=tag
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    rmakers.extract_trivial_function(voice)
    rmakers.rewrite_meter_function(
        voice, boundary_depth=1, reference_meters=_reference_meters(), tag=tag
    )
    rmakers.force_repeat_tie_function(voice, threshold=(1, 8), tag=tag)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_train_rhythm(time_signatures, counts, *, rest_leaves=None):
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.talea_function(time_signatures, counts, 16, tag=tag)
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    if rest_leaves is not None:
        leaves = baca.select.leaves(voice)
        leaves = abjad.select.get(leaves, rest_leaves)
        rmakers.force_rest_function(leaves, tag=tag)
    rmakers.extract_trivial_function(voice)
    rmakers.beam_function([abjad.select.leaves(voice)], tag=tag)
    rmakers.force_repeat_tie_function(voice, threshold=(1, 8), tag=tag)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_tuplet(
    time_signatures,
    ratios,
    *,
    denominator=None,
    force_augmentation=False,
    written_quarters=False,
):
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.tuplet_function(time_signatures, ratios, tag=tag)
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    rmakers.trivialize_function(voice)
    rmakers.rewrite_dots_function(voice, tag=tag)
    rmakers.force_diminution_function(voice)
    if denominator is not None:
        rmakers.denominator_function(voice, denominator)
    if written_quarters is True:
        rmakers.written_duration_function(voice, (1, 4))
    if force_augmentation is True:
        rmakers.force_augmentation_function(voice)
    rmakers.force_fraction_function(voice)
    rmakers.extract_trivial_function(voice)
    rmakers.reduce_multiplier_function(voice)
    music = abjad.mutate.eject_contents(voice)
    return music


def make_warble_rhythm(
    time_signatures,
    *,
    sixteenths=None,
    extra_counts=(),
    rest_tuplets=None,
    rest_tuplets_cyclic=None,
):
    divisions = [abjad.NonreducedFraction(_) for _ in time_signatures]
    if sixteenths is not None:
        divisions_ = [(_, 16) for _ in sixteenths]
        divisions = baca.sequence.fuse(divisions)
        divisions = baca.sequence.split_divisions(divisions, divisions_, cyclic=True)
    tag = baca.tags.function_name(inspect.currentframe())
    nested_music = rmakers.talea_function(
        divisions, [1], 32, extra_counts=extra_counts, tag=tag
    )
    voice = rmakers.wrap_in_time_signature_staff(nested_music, time_signatures)
    if rest_tuplets is not None:
        tuplets = baca.select.tuplets(voice)
        tuplets = abjad.select.get(tuplets, rest_tuplets)
        rmakers.force_rest_function(tuplets, tag=tag)
    if rest_tuplets_cyclic is not None:
        tuplets = baca.select.tuplets(voice)
        tuplets = abjad.select.get(tuplets, rest_tuplets_cyclic)
        rmakers.force_rest_function(tuplets, tag=tag)
    leaves = baca.select.leaf_in_each_tuplet(voice, 0)
    rmakers.force_rest_function(leaves, tag=tag)
    rmakers.rewrite_rest_filled_function(voice, tag=tag)
    rmakers.rewrite_sustained_function(voice, tag=tag)
    rmakers.beam_function(voice, tag=tag)
    rmakers.extract_trivial_function(voice)
    rmakers.force_fraction_function(voice)
    rmakers.denominator_function(voice, (1, 16))
    music = abjad.mutate.eject_contents(voice)
    return music


def part_manifest():
    return (
        baca.Part("BassFlute"),
        baca.Part("Percussion.1"),
        baca.Part("Percussion.2"),
        baca.Part("Harp"),
        baca.Part("Viola"),
        baca.Part("Cello.1"),
        baca.Part("Cello.2"),
        baca.Part("Contrabass.1"),
        baca.Part("Contrabass.2"),
    )


def purpleheart_staff_positions(o, positions, *, allow_obgc_mutation=False):
    assert isinstance(positions, list), repr(positions)
    assert all(_ in (-2, 0, 2) for _ in positions), repr(positions)
    baca.stem_down(baca.select.pleaves(o))
    baca.tuplet_bracket_up(o)
    baca.tuplet_bracket_staff_padding(o, 0.5)
    baca.staff_positions(o, positions, allow_obgc_mutation=allow_obgc_mutation)


def slate_staff_position(argument):
    baca.staff_position(argument, 1)
    baca.stem_down(baca.select.pleaves(argument))
    baca.tuplet_bracket_up(argument)


def tam_tam_staff_position(o):
    baca.staff_position(o, 0)
    baca.stem_down(o.pleaves())
    baca.tuplet_bracket_up(o)


def triangle_staff_position(o):
    baca.staff_position(o, 1)
    baca.stem_up(o.pleaves())


def warble_pitches():
    return "G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3".split()


def whisk_staff_position(argument):
    baca.staff_position(argument, 0)
    baca.stem_down(baca.select.pleaves(argument))
    baca.tuplet_bracket_up(argument)


instruments = {
    "BassFlute": abjad.BassFlute(pitch_range=abjad.PitchRange("[C3, E6]")),
    "Percussion": abjad.Percussion(clefs=("bass", "percussion", "treble")),
    "Harp": abjad.Harp(),
    "Viola": abjad.Viola(pitch_range=abjad.PitchRange("[C3, +inf]")),
    "Cello": abjad.Cello(pitch_range=abjad.PitchRange("[C2, +inf]")),
    "Contrabass": abjad.Contrabass(pitch_range=abjad.PitchRange("[E1, +inf]")),
}


metronome_marks = {
    "48": abjad.MetronomeMark((1, 4), 48),
    "57 3/5": abjad.MetronomeMark((1, 4), quicktions.Fraction(288, 5), decimal=True),
    "72": abjad.MetronomeMark((1, 4), 72),
    "96": abjad.MetronomeMark((1, 4), 96),
    "144": abjad.MetronomeMark((1, 4), 144),
    # slower
    "2.=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c2."), right_rhythm=abjad.Note("c4")
    ),
    "4:5(2)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("4:5", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "2=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c2"), right_rhythm=abjad.Note("c4")
    ),
    "5:6(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:6", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "4:5(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("4:5", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "3:5(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:5", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "3:4(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:4", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "4.=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c4."), right_rhythm=abjad.Note("c4")
    ),
    # faster
    "6:5(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("6:5", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "5:4(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:4", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "5:4(8)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:4", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "5:3(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:3", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "4:3(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("4:3", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "3:2(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:2", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "8=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c8"), right_rhythm=abjad.Note("c4")
    ),
    "3:2(8)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:2", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
}


short_instrument_names = {
    "Bfl.": abjad.ShortInstrumentName(r"\harmony-bfl-markup"),
    "Perc. I": abjad.ShortInstrumentName(r"\harmony-perc-i-markup"),
    "Perc. II": abjad.ShortInstrumentName(r"\harmony-perc-ii-markup"),
    "Hp.": abjad.ShortInstrumentName(r"\harmony-hp-markup"),
    "Va.": abjad.ShortInstrumentName(r"\harmony-va-markup"),
    "Vc. I": abjad.ShortInstrumentName(r"\harmony-vc-i-markup"),
    "Vc. II": abjad.ShortInstrumentName(r"\harmony-vc-ii-markup"),
    "Cb. I": abjad.ShortInstrumentName(r"\harmony-cb-i-markup"),
    "Cb. II": abjad.ShortInstrumentName(r"\harmony-cb-ii-markup"),
}


manifests = {
    "abjad.Instrument": instruments,
    "abjad.MetronomeMark": metronome_marks,
    "abjad.ShortInstrumentName": short_instrument_names,
}


voice_abbreviations = {
    "bfl": "BassFlute.Music",
    "perc1": "Percussion.1.Music",
    "perc2": "Percussion.2.Music",
    "hp": "Harp.Music",
    "va": "Viola.Music",
    "vc1": "Cello.1.Music",
    "vc2": "Cello.2.Music",
    "cb1": "Contrabass.1.Music",
    "cb2": "Contrabass.2.Music",
    "tutti": [
        "BassFlute.Music",
        "Percussion.1.Music",
        "Percussion.2.Music",
        "Harp.Music",
        "Viola.Music",
        "Cello.1.Music",
        "Cello.2.Music",
        "Contrabass.1.Music",
        "Contrabass.2.Music",
    ],
}
