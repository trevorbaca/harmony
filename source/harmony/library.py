import fractions
import inspect

import abjad
import baca
import rmakers


def _force_fraction(argument):
    for tuplet in abjad.select.tuplets(argument):
        tweak_string = abjad.Tuplet.tuplet_number_calc_fraction_text_tweak_string
        abjad.tweak(tuplet, tweak_string)


def _reference_meters():
    meters = []
    strings = (
        "(5/4 (1/4 1/4 1/4 1/4 1/4))",
        "(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))",
    )
    for string in strings:
        rtc = abjad.rhythmtrees.parse(string)[0]
        meter = abjad.Meter(rtc)
        meters.append(meter)
    return meters


def AG(*arguments):
    return baca.AfterGrace(*arguments)


def OBGC(grace_note_numerators, nongrace_note_numerator, *, voice_name=""):
    return baca.rhythm.OBGC(
        grace_note_numerators,
        nongrace_note_numerator,
        grace_leaf_duration=abjad.Duration(1, 20),
    )


def T(items, extra_counts):
    return baca.Tuplet(items, extra_counts)


def after_grace_each_run(components):
    tag = baca.helpers.function_name(inspect.currentframe())
    for run in abjad.select.runs(components):
        leaf = abjad.select.leaf(run, -1)
        rmakers.after_grace_container(leaf, [1], tag=tag)


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
    baca.override.stem_direction_down(baca.select.pleaves(argument))
    baca.override.tuplet_bracket_direction_up(argument)


def bl(argument):
    return baca.BeamLeft(argument)


def br(argument):
    return baca.BeamRight(argument)


def bridge_staff_position(o):
    baca.staff_position(o, 0)
    baca.override.stem_direction_down(o.pleaves())
    baca.override.tuplet_bracket_direction_up(o)


def brake_drum_staff_position(o):
    baca.staff_position(o, 0)
    baca.override.stem_direction_up(o.pleaves())


def cerulean_counts():
    return [1, -10, 1, -9, 1, -8, 1, -7, 1, -6, 1, -5, 1, -4, 1, -3, 1, "-"]


def damp_counts():
    return [3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4]


def damp_counts_curtailed():
    return [3, -1, 8, -8, 3, -1]


def damp_rest_after_each_ptail(components):
    ptails = baca.select.ptails(components)
    rests = [baca.select.rleaf(_, -1) for _ in ptails]
    baca.damp(rests)


def glissando_counts():
    counts = [2, 1, -1, 4, 2, 1, -1, -8, 4, 2, 1, -1, 2, 1, -1, -16]
    counts += [2, 1, -1, 8, 2, 1, -1, -4, 2, 1, -1]
    return counts


def glissando_counts_curtailed():
    return [2, 1, -1, 4, 2, 1, -1, -8, 2, 1, -1]


def h(argument):
    return baca.InvisibleMusic(argument)


# TODO: remove?
def invisible(music, pattern=True):
    tag = baca.helpers.function_name(inspect.currentframe())
    pleaves = baca.select.pleaves(music)
    if pattern is not True:
        pleaves = abjad.select.get(pleaves, pattern)
    rmakers.invisible_music(pleaves, tag=tag)


def make_empty_score():
    tag = baca.helpers.function_name(inspect.currentframe())
    global_context = baca.score.make_global_context(make_time_signatures_context=True)
    bass_flute_music_voice = abjad.Voice(name="BassFlute.Music", tag=tag)
    bass_flute_music_staff = abjad.Staff(
        [bass_flute_music_voice],
        simultaneous=True,
        name="BassFlute.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("BassFlute", bass_flute_music_staff)
    percussion_1_music_voice = abjad.Voice(name="Percussion.1.Music", tag=tag)
    percussion_1_music_staff = abjad.Staff(
        [percussion_1_music_voice],
        simultaneous=True,
        name="Percussion.1.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Percussion.1", percussion_1_music_staff)
    percussion_2_music_voice = abjad.Voice(name="Percussion.2.Music", tag=tag)
    percussion_2_music_staff = abjad.Staff(
        [percussion_2_music_voice],
        simultaneous=True,
        name="Percussion.2.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Percussion.2", percussion_2_music_staff)
    harp_music_voice = abjad.Voice(name="Harp.Music", tag=tag)
    harp_music_staff = abjad.Staff(
        [harp_music_voice],
        simultaneous=True,
        name="Harp.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Harp", harp_music_staff)
    viola_music_voice = abjad.Voice(name="Viola.Music", tag=tag)
    viola_music_staff = abjad.Staff(
        [viola_music_voice],
        simultaneous=True,
        name="Viola.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Viola", viola_music_staff)
    cello_1_music_voice = abjad.Voice(name="Cello.1.Music", tag=tag)
    cello_1_music_staff = abjad.Staff(
        [cello_1_music_voice],
        simultaneous=True,
        name="Cello.1.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Cello.1", cello_1_music_staff)
    cello_2_music_voice = abjad.Voice(name="Cello.2.Music", tag=tag)
    cello_2_music_staff = abjad.Staff(
        [cello_2_music_voice],
        simultaneous=True,
        name="Cello.2.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Cello.2", cello_2_music_staff)
    contrabass_1_music_voice = abjad.Voice(name="Contrabass.1.Music", tag=tag)
    contrabass_1_music_staff = abjad.Staff(
        [contrabass_1_music_voice],
        simultaneous=True,
        name="Contrabass.1.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Contrabass.1", contrabass_1_music_staff)
    contrabass_2_music_voice = abjad.Voice(name="Contrabass.2.Music", tag=tag)
    contrabass_2_music_staff = abjad.Staff(
        [contrabass_2_music_voice],
        simultaneous=True,
        name="Contrabass.2.Staff",
        tag=tag,
    )
    baca.score.attach_lilypond_tag("Contrabass.2", contrabass_2_music_staff)
    wind_section_staff_group = abjad.StaffGroup(
        [bass_flute_music_staff],
        lilypond_type="WindSectionStaffGroup",
        name="WindSectionStaffGroup",
        tag=tag,
    )
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
    score = abjad.Score([global_context, music_context], name="Score", tag=tag)
    baca.score.assert_lilypond_identifiers(score)
    baca.score.assert_unique_context_names(score)
    return score


def make_one_beat_tuplets(
    voice,
    time_signatures,
    counts,
    *,
    extra_counts=(),
):
    tag = baca.helpers.function_name(inspect.currentframe())
    durations = [_.duration for _ in time_signatures]
    durations = [sum(durations)]
    durations = baca.sequence.quarters(durations)
    tuplets = rmakers.talea(durations, counts, 16, extra_counts=extra_counts, tag=tag)
    voice_ = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
    rmakers.rewrite_rest_filled(voice_, tag=tag)
    rmakers.rewrite_sustained(voice_, tag=tag)
    rmakers.extract_trivial(voice_)
    rmakers.rewrite_meter(
        voice_, boundary_depth=1, reference_meters=_reference_meters(), tag=tag
    )
    _force_fraction(voice_)
    rmakers.force_repeat_tie(voice_, threshold=(1, 8), tag=tag)
    components = abjad.mutate.eject_contents(voice_)
    voice.extend(components)
    return components


def make_phjc_rhythm(
    voice,
    time_signatures,
    weights,
    counts,
    *,
    extra_counts=(),
    rest=None,
    rest_pleaves=None,
):
    durations = [_.duration for _ in time_signatures]
    durations = [sum(durations)]
    durations = baca.sequence.quarters(durations)
    durations = abjad.sequence.partition_by_counts(
        durations, weights, cyclic=True, overhang=True
    )
    durations = [abjad.sequence.flatten(_) for _ in durations]
    durations = [sum(_) for _ in durations]
    tag = baca.helpers.function_name(inspect.currentframe())
    tuplets = rmakers.talea(durations, counts, 16, extra_counts=extra_counts, tag=tag)
    voice_ = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
    if rest is not None:
        tuplets = abjad.select.tuplets(voice_)
        if isinstance(rest, slice):
            tuplets = tuplets[rest]
        else:
            tuplets = abjad.select.get(tuplets, rest)
        rmakers.force_rest(tuplets, tag=tag)
    if rest_pleaves is not None:
        pleaves = baca.select.pleaves(voice_)
        pleaves = abjad.select.get(pleaves, rest_pleaves)
        rmakers.force_rest(pleaves, tag=tag)
    rmakers.rewrite_rest_filled(voice_, tag=tag)
    rmakers.denominator(voice_, abjad.Duration(1, 8))
    rmakers.force_repeat_tie(voice_, threshold=(1, 8), tag=tag)
    plts = baca.select.plts(voice_)
    lists = [_[1:] for _ in plts]
    rmakers.force_rest(lists, tag=tag)
    tuplets = abjad.select.tuplets(voice_)
    leaves = [abjad.select.leaf(_, 0) for _ in tuplets]
    rmakers.force_rest(leaves, tag=tag)
    rmakers.beam(voice_, tag=tag)
    rmakers.extract_trivial(voice_)
    _force_fraction(voice_)
    music = abjad.mutate.eject_contents(voice_)
    voice.extend(music)
    return music


def make_tessera(
    voice, time_signatures, number, part, *, advance=0, gap=False, rest_plt=None
):
    assert number in (1, 2, 3, 4), repr(number)
    if number == 1:
        counts = [9, 14, 3, 8, 12, 16, 2, 4, 6, 7, 15]
        permutation = [2, 9, 10, 3, 4, 8, 0, 5, 6, 1, 7]
        assert sum(counts) == 96
    elif number == 2:
        counts = [3, 4, 14, 2, 6, 7, 8]
        permutation = [2, 3, 4, 0, 5, 6, 1]
        assert sum(counts) == 44
    elif number == 3:
        counts = [3, 7, 8, 13, 5, 6, 12, 9, 10, 11]
        permutation = [8, 9, 2, 3, 4, 0, 5, 6, 7, 1]
        assert sum(counts) == 84
    elif number == 4:
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
    tag = baca.helpers.function_name(inspect.currentframe())
    durations = [_.duration for _ in time_signatures]
    tuplets = rmakers.talea(durations, counts, 16, advance=advance, tag=tag)
    voice_ = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
    if rest_plt is not None:
        plt = baca.select.plt(voice_, rest_plt)
        rmakers.force_rest(plt, tag=tag)
    rmakers.extract_trivial(voice_)
    rmakers.rewrite_meter(
        voice_, boundary_depth=1, reference_meters=_reference_meters(), tag=tag
    )
    rmakers.force_repeat_tie(voice_, threshold=(1, 8), tag=tag)
    music = abjad.mutate.eject_contents(voice_)
    voice.extend(music)
    return music


def make_warble_rhythm(
    voice,
    time_signatures,
    *,
    sixteenths=None,
    extra_counts=(),
    rest=None,
):
    tag = baca.helpers.function_name(inspect.currentframe())
    durations = [_.duration for _ in time_signatures]
    if sixteenths is not None:
        divisions_ = [abjad.Duration(_, 16) for _ in sixteenths]
        durations = [sum(durations)]
        durations = abjad.sequence.split(
            durations, divisions_, cyclic=True, overhang=True
        )
    durations = abjad.sequence.flatten(durations, depth=-1)
    tuplets = rmakers.talea(durations, [1], 32, extra_counts=extra_counts, tag=tag)
    voice_ = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
    if rest is not None:
        tuplets = abjad.select.get(tuplets, rest)
        rmakers.force_rest(tuplets, tag=tag)
    tuplets = abjad.select.tuplets(voice_)
    leaves = [abjad.select.leaf(_, 0) for _ in tuplets]
    rmakers.force_rest(leaves, tag=tag)
    rmakers.rewrite_rest_filled(voice_, tag=tag)
    rmakers.rewrite_sustained(voice_, tag=tag)
    rmakers.beam(voice_, tag=tag)
    rmakers.extract_trivial(voice_)
    baca.rhythm.set_tuplet_ratios_in_terms_of(voice_, 16)
    _force_fraction(voice_)
    music = abjad.mutate.eject_contents(voice_)
    voice.extend(music)
    return music


def mmrests(voice, time_signatures, *, head=False):
    if head:
        music = baca.make_mmrests(time_signatures, head=voice.name)
    else:
        music = baca.make_mmrests(time_signatures)
    voice.extend(music)


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
    baca.override.stem_direction_down(baca.select.pleaves(o))
    baca.override.tuplet_bracket_direction_up(o)
    baca.override.tuplet_bracket_staff_padding(o, 0.5)
    baca.staff_positions(o, positions, allow_obgc_mutation=allow_obgc_mutation)


def repeat_tie(components):
    tag = baca.helpers.function_name(inspect.currentframe())
    for leaf in abjad.select.leaves(components):
        rmakers.repeat_tie([leaf], tag=tag)


def repeat_tie_runs(components):
    tag = baca.helpers.function_name(inspect.currentframe())
    runs = abjad.select.runs(components)
    lists = [_[1:] for _ in runs]
    rmakers.repeat_tie(lists, tag=tag)


def rhythm(
    voice, items, time_signatures=None, *, denominator=16, do_not_rewrite_meter=False
):
    tag = baca.helpers.function_name(inspect.currentframe())
    if isinstance(items, list):
        items = abjad.sequence.flatten(items)
    else:
        items = [items]
    if time_signatures is None:
        do_not_rewrite_meter = True
    voice_ = baca.make_rhythm(
        items,
        denominator,
        time_signatures,
        boundary_depth=1,
        do_not_rewrite_meter=do_not_rewrite_meter,
        reference_meters=_reference_meters(),
        tag=tag,
        voice_name=voice.name,
    )
    for tuplet in abjad.select.tuplets(voice_):
        rmakers.beam([tuplet])
    rmakers.force_repeat_tie(voice_, threshold=(1, 8), tag=tag)
    _force_fraction(voice_)
    components = abjad.mutate.eject_contents(voice_)
    voice.extend(components)
    return components


def rt(argument):
    return baca.RepeatTie(argument)


def slate_staff_position(argument):
    baca.staff_position(argument, 1)
    baca.override.stem_direction_down(baca.select.pleaves(argument))
    baca.override.tuplet_bracket_direction_up(argument)


def t(argument):
    return baca.Tie(argument)


def tam_tam_staff_position(o):
    baca.override.stem_direction_down(o.pleaves())
    baca.override.tuplet_bracket_direction_up(o)


def triangle_staff_position(o):
    baca.staff_position(o, 1)
    baca.override.stem_direction_up(o.pleaves())


def unbeam(music, pattern=True):
    leaves = abjad.select.leaves(music)
    if pattern is not True:
        leaves = abjad.select.get(leaves, pattern)
    for leaf in leaves:
        rmakers.unbeam(leaf)


def untie(music, pattern=True):
    pleaves = baca.select.pleaves(music)
    if pattern is not True:
        pleaves = abjad.select.get(pleaves, pattern)
    for pleaf in pleaves:
        rmakers.untie([pleaf])


def w(real_n, written_n):
    return baca.WrittenDuration(real_n, written_n)


def warble_pitches():
    return "G3 G#3 A3 A#3 B3 C4 C#4 C4 B3 Bb3 A3 Ab3".split()


def whisk_staff_position(argument):
    baca.override.stem_direction_down(baca.select.pleaves(argument))
    baca.override.tuplet_bracket_direction_up(argument)


def written(music, pair, pattern):
    assert isinstance(pair, tuple), repr(pair)
    pleaves = baca.select.pleaves(music)
    if pattern is not True:
        pleaves = abjad.select.get(pleaves, pattern)
    duration = abjad.Duration(pair)
    rmakers.written_duration(pleaves, duration)


instruments = {
    "BassFlute": abjad.BassFlute(pitch_range=abjad.PitchRange("[C3, E6]")),
    "Percussion": abjad.Percussion(clefs=("bass", "percussion", "treble")),
    "Harp": abjad.Harp(),
    "Viola": abjad.Viola(pitch_range=abjad.PitchRange("[C3, +inf]")),
    "Cello": abjad.Cello(pitch_range=abjad.PitchRange("[C2, +inf]")),
    "Contrabass": abjad.Contrabass(pitch_range=abjad.PitchRange("[E1, +inf]")),
}


metronome_marks = {
    "48": abjad.MetronomeMark(abjad.Duration(1, 4), 48),
    "57 3/5": abjad.MetronomeMark(
        abjad.Duration(1, 4), fractions.Fraction(288, 5), decimal=True
    ),
    "72": abjad.MetronomeMark(abjad.Duration(1, 4), 72),
    "96": abjad.MetronomeMark(abjad.Duration(1, 4), 96),
    "144": abjad.MetronomeMark(abjad.Duration(1, 4), 144),
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
