import abjad
import baca
import inspect
from abjadext import rmakers
from .materials import instruments as harmony_instruments
from .materials import margin_markups as harmony_margin_markups


_reference_meters = (
    abjad.Meter("(5/4 (1/4 1/4 1/4 1/4 1/4))"),
    abjad.Meter("(6/4 (1/4 1/4 1/4 1/4 1/4 1/4))"),
)


### FUNCTIONS ###


def appoggiato(
    divisions: abjad.IntegerSequence,
    counts: abjad.IntegerSequence = None,
    *,
    leaf_duration=(1, 20),
    rotation: int = 0,
) -> baca.RhythmCommand:
    """
    Makes appoggiato rhythm.
    """
    divisions_ = baca.sequence([(_, 4) for _ in divisions])
    divisions_ = divisions_.rotate(n=rotation)
    commands = []
    if counts:
        command = rmakers.on_beat_grace_container(
            counts, baca.plts(), leaf_duration=leaf_duration
        )
        commands.append(command)
    return baca.rhythm(
        rmakers.incised(
            prefix_talea=[-1], prefix_counts=[1], talea_denominator=16
        ),
        rmakers.extract_trivial(),
        rmakers.rewrite_meter(reference_meters=_reference_meters),
        rmakers.force_repeat_tie((1, 8)),
        *commands,
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(divisions_, cyclic=True),
        tag=baca.frame(inspect.currentframe()),
    )


def begin_end_quarter_notes(*commands: rmakers.Command,) -> baca.RhythmCommand:
    """
    Makes begin / end quarter notes.
    """
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            prefix_talea=[3, 1],
            prefix_counts=[2],
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.extract_trivial(),
        rmakers.written_duration((1, 4), baca.pleaves()),
        tag=baca.frame(inspect.currentframe()),
    )


def margin_markup(
    key: str,
    *,
    alert: baca.IndicatorCommand = None,
    context: str = "Staff",
    selector: abjad.SelectorTyping = "baca.leaf(0)",
) -> baca.CommandTyping:
    """
    Makes tagged margin markup indicator command.
    """
    margin_markup = harmony_margin_markups[key]
    command = baca.margin_markup(
        margin_markup, alert=alert, context=context, selector=selector
    )
    return baca.not_parts(command)


def superball_staff_position() -> baca.Suite:
    """
    Makes superball style.
    """
    return baca.chunk(baca.staff_position(-1), baca.stem_down())


def upbeat_quarter_note() -> baca.RhythmCommand:
    """
    Makes upbeat quarter-note rhythm.
    """
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        rmakers.extract_trivial(),
        rmakers.written_duration((1, 4), baca.pleaves()),
        tag=baca.frame(inspect.currentframe()),
    )


### CLASSES ###


class ScoreTemplate(baca.ScoreTemplate):
    r"""
    Score template.

    >>> import harmony

    ..  container:: example

        Calls score template:

        >>> template = harmony.ScoreTemplate()
        >>> path = abjad.Path('harmony', 'stylesheets', 'contexts.ily')
        >>> lilypond_file = template.__illustrate__(
        ...     global_staff_size=14,
        ...     includes=[path],
        ...     )
        >>> abjad.show(lilypond_file) # doctest: +SKIP

        >>> abjad.f(lilypond_file[abjad.Score], strict=89)
        \context Score = "Score"                                                                 %! harmony.ScoreTemplate.__call__
        <<                                                                                       %! harmony.ScoreTemplate.__call__
            \context GlobalContext = "Global_Context"                                            %! abjad.ScoreTemplate._make_global_context
            <<                                                                                   %! abjad.ScoreTemplate._make_global_context
                \context GlobalRests = "Global_Rests"                                            %! abjad.ScoreTemplate._make_global_context
                {                                                                                %! abjad.ScoreTemplate._make_global_context
                }                                                                                %! abjad.ScoreTemplate._make_global_context
                \context GlobalSkips = "Global_Skips"                                            %! abjad.ScoreTemplate._make_global_context
                {                                                                                %! abjad.ScoreTemplate._make_global_context
                }                                                                                %! abjad.ScoreTemplate._make_global_context
            >>                                                                                   %! abjad.ScoreTemplate._make_global_context
            \context MusicContext = "Music_Context"                                              %! harmony.ScoreTemplate.__call__
            <<                                                                                   %! harmony.ScoreTemplate.__call__
                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"                      %! harmony.ScoreTemplate.__call__
                <<                                                                               %! harmony.ScoreTemplate.__call__
                    \tag BassFlute                                                               %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Bass_Flute_Music_Staff"                                    %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Bass_Flute_Music_Voice"                                %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "treble"                                                       %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                >>                                                                               %! harmony.ScoreTemplate.__call__
                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"          %! harmony.ScoreTemplate.__call__
                <<                                                                               %! harmony.ScoreTemplate.__call__
                    \tag PercussionI                                                             %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Percussion_I_Music_Staff"                                  %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Percussion_I_Music_Voice"                              %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "treble"                                                       %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                    \tag PercussionII                                                            %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Percussion_II_Music_Staff"                                 %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Percussion_II_Music_Voice"                             %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "treble"                                                       %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                    \tag Harp                                                                    %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Harp_Music_Staff"                                          %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Harp_Music_Voice"                                      %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "treble"                                                       %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                >>                                                                               %! harmony.ScoreTemplate.__call__
                \context StringSectionStaffGroup = "String_Section_Staff_Group"                  %! harmony.ScoreTemplate.__call__
                <<                                                                               %! harmony.ScoreTemplate.__call__
                    \tag Viola                                                                   %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Viola_Music_Staff"                                         %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Viola_Music_Voice"                                     %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "alto"                                                         %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                    \tag CelloI                                                                  %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Cello_I_Music_Staff"                                       %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Cello_I_Music_Voice"                                   %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "bass"                                                         %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                    \tag CelloII                                                                 %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Cello_II_Music_Staff"                                      %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Cello_II_Music_Voice"                                  %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "bass"                                                         %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                    \tag ContrabassI                                                             %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Contrabass_I_Music_Staff"                                  %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Contrabass_I_Music_Voice"                              %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "bass"                                                         %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                    \tag ContrabassII                                                            %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Contrabass_II_Music_Staff"                                 %! harmony.ScoreTemplate.__call__
                    <<                                                                           %! harmony.ScoreTemplate.__call__
                        \context Voice = "Contrabass_II_Music_Voice"                             %! harmony.ScoreTemplate.__call__
                        {                                                                        %! harmony.ScoreTemplate.__call__
                            \clef "bass"                                                         %! abjad.ScoreTemplate.attach_defaults
                            s1                                                                   %! abjad.ScoreTemplate.__illustrate__
                        }                                                                        %! harmony.ScoreTemplate.__call__
                    >>                                                                           %! harmony.ScoreTemplate.__call__
                >>                                                                               %! harmony.ScoreTemplate.__call__
            >>                                                                                   %! harmony.ScoreTemplate.__call__
        >>                                                                                       %! harmony.ScoreTemplate.__call__

    """

    ### CLASS VARIABLES ###

    __documentation_section__ = None

    _always_make_global_rests = True

    _global_rests_in_topmost_staff = True

    ### INITIALIZER ###

    def __init__(self):
        super(ScoreTemplate, self).__init__()
        self.voice_abbreviations.update(
            {
                "bfl": "Bass_Flute_Music_Voice",
                "bflr": "Bass_Flute_Rest_Voice",
                "bflx": ["Bass_Flute_Music_Voice", "Bass_Flute_Rest_Voice"],
                "perc1": "Percussion_I_Music_Voice",
                "perc1r": "Percussion_I_Rest_Voice",
                "perc1x": [
                    "Percussion_I_Music_Voice",
                    "Percussion_I_Rest_Voice",
                ],
                "perc2": "Percussion_II_Music_Voice",
                "perc2r": "Percussion_II_Rest_Voice",
                "perc2x": [
                    "Percussion_II_Music_Voice",
                    "Percussion_II_Rest_Voice",
                ],
                "hp": "Harp_Music_Voice",
                "hpr": "Harp_Rest_Voice",
                "hpx": ["Harp_Music_Voice", "Harp_Rest_Voice"],
                "va": "Viola_Music_Voice",
                "var": "Viola_Rest_Voice",
                "vax": ["Viola_Music_Voice", "Viola_Rest_Voice"],
                "vc1": "Cello_I_Music_Voice",
                "vc1r": "Cello_I_Rest_Voice",
                "vc1x": ["Cello_I_Music_Voice", "Cello_I_Rest_Voice"],
                "vc2": "Cello_II_Music_Voice",
                "vc2r": "Cello_II_Rest_Voice",
                "vc2x": ["Cello_II_Music_Voice", "Cello_II_Rest_Voice"],
                "cb1": "Contrabass_I_Music_Voice",
                "cb1r": "Contrabass_I_Rest_Voice",
                "cb1x": [
                    "Contrabass_I_Music_Voice",
                    "Contrabass_I_Rest_Voice",
                ],
                "cb2": "Contrabass_II_Music_Voice",
                "cb2r": "Contrabass_II_Rest_Voice",
                "cb2x": [
                    "Contrabass_II_Music_Voice",
                    "Contrabass_II_Rest_Voice",
                ],
                "tutti": [
                    "Bass_Flute_Music_Voice",
                    "Percussion_I_Music_Voice",
                    "Percussion_II_Music_Voice",
                    "Harp_Music_Voice",
                    "Viola_Music_Voice",
                    "Cello_I_Music_Voice",
                    "Cello_II_Music_Voice",
                    "Contrabass_I_Music_Voice",
                    "Contrabass_II_Music_Voice",
                ],
            }
        )

    ### SPECIAL METHODS ###

    def __call__(self) -> abjad.Score:
        """
        Calls score template.
        """
        tag = "harmony.ScoreTemplate.__call__"
        # GLOBAL CONTEXT
        global_context = self._make_global_context()

        # BASS FLUTE
        bass_flute_music_voice = abjad.Voice(
            name="Bass_Flute_Music_Voice", tag=tag
        )
        bass_flute_music_staff = abjad.Staff(
            [bass_flute_music_voice],
            simultaneous=True,
            name="Bass_Flute_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            bass_flute_music_staff,
            "default_instrument",
            harmony_instruments["BassFlute"],
        )
        abjad.annotate(
            bass_flute_music_staff, "default_clef", abjad.Clef("treble")
        )
        self._attach_lilypond_tag("BassFlute", bass_flute_music_staff)

        # PERCUSSION 1
        percussion_1_music_voice = abjad.Voice(
            name="Percussion_I_Music_Voice", tag=tag
        )
        percussion_1_music_staff = abjad.Staff(
            [percussion_1_music_voice],
            simultaneous=True,
            name="Percussion_I_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            percussion_1_music_staff,
            "default_instrument",
            harmony_instruments["Percussion"],
        )
        abjad.annotate(
            percussion_1_music_staff, "default_clef", abjad.Clef("treble")
        )
        self._attach_lilypond_tag("PercussionI", percussion_1_music_staff)

        # PERCUSSION 2
        percussion_2_music_voice = abjad.Voice(
            name="Percussion_II_Music_Voice", tag=tag
        )
        percussion_2_music_staff = abjad.Staff(
            [percussion_2_music_voice],
            simultaneous=True,
            name="Percussion_II_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            percussion_2_music_staff,
            "default_instrument",
            harmony_instruments["Percussion"],
        )
        abjad.annotate(
            percussion_2_music_staff, "default_clef", abjad.Clef("treble")
        )
        self._attach_lilypond_tag("PercussionII", percussion_2_music_staff)

        # HARP
        harp_music_voice = abjad.Voice(name="Harp_Music_Voice", tag=tag)
        harp_music_staff = abjad.Staff(
            [harp_music_voice],
            simultaneous=True,
            name="Harp_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            harp_music_staff, "default_instrument", harmony_instruments["Harp"]
        )
        abjad.annotate(harp_music_staff, "default_clef", abjad.Clef("treble"))
        self._attach_lilypond_tag("Harp", harp_music_staff)

        # VIOLA
        viola_music_voice = abjad.Voice(name="Viola_Music_Voice", tag=tag)
        viola_music_staff = abjad.Staff(
            [viola_music_voice],
            simultaneous=True,
            name="Viola_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            viola_music_staff,
            "default_instrument",
            harmony_instruments["Viola"],
        )
        abjad.annotate(viola_music_staff, "default_clef", abjad.Clef("alto"))
        self._attach_lilypond_tag("Viola", viola_music_staff)

        # CELLO 1
        cello_1_music_voice = abjad.Voice(name="Cello_I_Music_Voice", tag=tag)
        cello_1_music_staff = abjad.Staff(
            [cello_1_music_voice],
            simultaneous=True,
            name="Cello_I_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            cello_1_music_staff,
            "default_instrument",
            harmony_instruments["Cello"],
        )
        abjad.annotate(cello_1_music_staff, "default_clef", abjad.Clef("bass"))
        self._attach_lilypond_tag("CelloI", cello_1_music_staff)

        # CELLO 2
        cello_2_music_voice = abjad.Voice(name="Cello_II_Music_Voice", tag=tag)
        cello_2_music_staff = abjad.Staff(
            [cello_2_music_voice],
            simultaneous=True,
            name="Cello_II_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            cello_2_music_staff,
            "default_instrument",
            harmony_instruments["Cello"],
        )
        abjad.annotate(cello_2_music_staff, "default_clef", abjad.Clef("bass"))
        self._attach_lilypond_tag("CelloII", cello_2_music_staff)

        # CONTRABASS 1
        contrabass_1_music_voice = abjad.Voice(
            name="Contrabass_I_Music_Voice", tag=tag
        )
        contrabass_1_music_staff = abjad.Staff(
            [contrabass_1_music_voice],
            simultaneous=True,
            name="Contrabass_I_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            contrabass_1_music_staff,
            "default_instrument",
            harmony_instruments["Contrabass"],
        )
        abjad.annotate(
            contrabass_1_music_staff, "default_clef", abjad.Clef("bass")
        )
        self._attach_lilypond_tag("ContrabassI", contrabass_1_music_staff)

        # CONTRABASS 2
        contrabass_2_music_voice = abjad.Voice(
            name="Contrabass_II_Music_Voice", tag=tag
        )
        contrabass_2_music_staff = abjad.Staff(
            [contrabass_2_music_voice],
            simultaneous=True,
            name="Contrabass_II_Music_Staff",
            tag=tag,
        )
        abjad.annotate(
            contrabass_2_music_staff,
            "default_instrument",
            harmony_instruments["Contrabass"],
        )
        abjad.annotate(
            contrabass_2_music_staff, "default_clef", abjad.Clef("bass")
        )
        self._attach_lilypond_tag("ContrabassII", contrabass_2_music_staff)

        # WIND SECTION STAFF GROUP
        wind_section_staff_group = abjad.StaffGroup(
            [bass_flute_music_staff],
            lilypond_type="WindSectionStaffGroup",
            name="Wind_Section_Staff_Group",
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
            name="Percussion_Section_Staff_Group",
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
            name="String_Section_Staff_Group",
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
            name="Music_Context",
            tag=tag,
        )

        # SCORE
        score = abjad.Score(
            [global_context, music_context], name="Score", tag=tag
        )
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        self._assert_matching_custom_context_names(score)
        return score

    ### PUBLIC PROPERTIES ###

    @property
    def voice_abbreviations(self):
        """
        Gets voice abbreviations.

        ..  container:: example

            >>> score_template = harmony.ScoreTemplate()
            >>> abjad.f(score_template.voice_abbreviations)
            abjad.OrderedDict(
                [
                    ('bfl', 'Bass_Flute_Music_Voice'),
                    ('bflr', 'Bass_Flute_Rest_Voice'),
                    (
                        'bflx',
                        [
                            'Bass_Flute_Music_Voice',
                            'Bass_Flute_Rest_Voice',
                            ],
                        ),
                    ('perc1', 'Percussion_I_Music_Voice'),
                    ('perc1r', 'Percussion_I_Rest_Voice'),
                    (
                        'perc1x',
                        [
                            'Percussion_I_Music_Voice',
                            'Percussion_I_Rest_Voice',
                            ],
                        ),
                    ('perc2', 'Percussion_II_Music_Voice'),
                    ('perc2r', 'Percussion_II_Rest_Voice'),
                    (
                        'perc2x',
                        [
                            'Percussion_II_Music_Voice',
                            'Percussion_II_Rest_Voice',
                            ],
                        ),
                    ('hp', 'Harp_Music_Voice'),
                    ('hpr', 'Harp_Rest_Voice'),
                    (
                        'hpx',
                        ['Harp_Music_Voice', 'Harp_Rest_Voice'],
                        ),
                    ('va', 'Viola_Music_Voice'),
                    ('var', 'Viola_Rest_Voice'),
                    (
                        'vax',
                        ['Viola_Music_Voice', 'Viola_Rest_Voice'],
                        ),
                    ('vc1', 'Cello_I_Music_Voice'),
                    ('vc1r', 'Cello_I_Rest_Voice'),
                    (
                        'vc1x',
                        ['Cello_I_Music_Voice', 'Cello_I_Rest_Voice'],
                        ),
                    ('vc2', 'Cello_II_Music_Voice'),
                    ('vc2r', 'Cello_II_Rest_Voice'),
                    (
                        'vc2x',
                        ['Cello_II_Music_Voice', 'Cello_II_Rest_Voice'],
                        ),
                    ('cb1', 'Contrabass_I_Music_Voice'),
                    ('cb1r', 'Contrabass_I_Rest_Voice'),
                    (
                        'cb1x',
                        [
                            'Contrabass_I_Music_Voice',
                            'Contrabass_I_Rest_Voice',
                            ],
                        ),
                    ('cb2', 'Contrabass_II_Music_Voice'),
                    ('cb2r', 'Contrabass_II_Rest_Voice'),
                    (
                        'cb2x',
                        [
                            'Contrabass_II_Music_Voice',
                            'Contrabass_II_Rest_Voice',
                            ],
                        ),
                    (
                        'tutti',
                        [
                            'Bass_Flute_Music_Voice',
                            'Percussion_I_Music_Voice',
                            'Percussion_II_Music_Voice',
                            'Harp_Music_Voice',
                            'Viola_Music_Voice',
                            'Cello_I_Music_Voice',
                            'Cello_II_Music_Voice',
                            'Contrabass_I_Music_Voice',
                            'Contrabass_II_Music_Voice',
                            ],
                        ),
                    ]
                )

        """
        return super(ScoreTemplate, self).voice_abbreviations
