import abjad
import baca

from .materials import instruments as harmony_instruments
from .materials import margin_markups as harmony_margin_markups


class ScoreTemplate(baca.ScoreTemplate):
    r"""
    Score template.

    >>> import harmony

    ..  container:: example

        Calls score template:

        >>> harmony.ScoreTemplate()
        ScoreTemplate

    """

    ### CLASS VARIABLES ###

    __documentation_section__ = None

    _always_make_global_rests = True

    # _global_rests_in_topmost_staff = True
    _global_rests_in_every_staff = True

    _part_manifest = abjad.PartManifest(
        abjad.Part(section="BassFlute", section_abbreviation="BFL"),
        abjad.Part(section="PercussionI", section_abbreviation="PERC1"),
        abjad.Part(section="PercussionII", section_abbreviation="PERC2"),
        abjad.Part(section="Harp", section_abbreviation="HP"),
        abjad.Part(section="Viola", section_abbreviation="VA"),
        abjad.Part(section="CelloI", section_abbreviation="VC1"),
        abjad.Part(section="CelloII", section_abbreviation="VC2"),
        abjad.Part(section="ContrabassI", section_abbreviation="CB1"),
        abjad.Part(section="ContrabassII", section_abbreviation="CB2"),
    )

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
        site = "harmony.ScoreTemplate.__call__()"
        tag = abjad.Tag(site)
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
    def part_manifest(self):
        """
        Gets part manifest.

        ..  container:: example

            >>> score_template = harmony.ScoreTemplate()
            >>> for part in score_template.part_manifest.parts:
            ...     part
            Part(instrument='BassFlute', number=1, section='BassFlute', section_abbreviation='BFL')
            Part(instrument='PercussionI', number=2, section='PercussionI', section_abbreviation='PERC1')
            Part(instrument='PercussionII', number=3, section='PercussionII', section_abbreviation='PERC2')
            Part(instrument='Harp', number=4, section='Harp', section_abbreviation='HP')
            Part(instrument='Viola', number=5, section='Viola', section_abbreviation='VA')
            Part(instrument='CelloI', number=6, section='CelloI', section_abbreviation='VC1')
            Part(instrument='CelloII', number=7, section='CelloII', section_abbreviation='VC2')
            Part(instrument='ContrabassI', number=8, section='ContrabassI', section_abbreviation='CB1')
            Part(instrument='ContrabassII', number=9, section='ContrabassII', section_abbreviation='CB2')

        """
        return self._part_manifest

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


### FUNCTIONS ###


def margin_markup(
    key: str,
    *,
    alert: baca.IndicatorCommand = None,
    context: str = "Staff",
    selector: abjad.SelectorTyping = baca.leaf(0),
) -> baca.CommandTyping:
    """
    Makes tagged margin markup indicator command.
    """
    margin_markup = harmony_margin_markups[key]
    command = baca.margin_markup(
        margin_markup, alert=alert, context=context, selector=selector
    )
    return baca.not_parts(command)
