\version "2.23.1"                                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_format_pieces()
\include "../../stylesheet.ily"                                                %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
\include "illustration.ily"                                                    %! ide.Path.extern()

\header { composer = ##f poet = ##f title = ##f }                              %! baca.SegmentMaker._make_lilypond_file()
\layout { indent = 0 }                                                         %! baca.SegmentMaker._make_lilypond_file()
\paper { print-first-page-number = ##t }                                       %! baca.SegmentMaker._make_lilypond_file()
\paper { first-page-number = #40 }                                             %! __make_segment_pdf__

\score {                                                                       %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_blocks()

    <<                                                                         %! baca.SegmentMaker._make_lilypond_file()

        {                                                                      %! baca.SegmentMaker._make_lilypond_file()
            \include "layout.ly"                                               %! baca.SegmentMaker._make_lilypond_file()
        }                                                                      %! baca.SegmentMaker._make_lilypond_file()

        \context Score = "Score"                                               %! harmony.ScoreTemplate.__call__()
        <<                                                                     %! harmony.ScoreTemplate.__call__()

            \context GlobalContext = "Global_Context"                          %! abjad.ScoreTemplate._make_global_context()
            <<                                                                 %! abjad.ScoreTemplate._make_global_context()

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context()
                \z_Global_Skips                                                %! ide.Path.extern()

            >>                                                                 %! abjad.ScoreTemplate._make_global_context()

            \context MusicContext = "Music_Context"                            %! harmony.ScoreTemplate.__call__()
            <<                                                                 %! harmony.ScoreTemplate.__call__()

                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"    %! harmony.ScoreTemplate.__call__()
                <<                                                             %! harmony.ScoreTemplate.__call__()

                    \tag BassFlute                                             %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Bass_Flute_Music_Staff"                  %! harmony.ScoreTemplate.__call__()
                    \z_Bass_Flute_Music_Staff                                  %! ide.Path.extern()

                >>                                                             %! harmony.ScoreTemplate.__call__()

                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group" %! harmony.ScoreTemplate.__call__()
                <<                                                             %! harmony.ScoreTemplate.__call__()

                    \tag PercussionI                                           %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Percussion_I_Music_Staff"                %! harmony.ScoreTemplate.__call__()
                    \z_Percussion_I_Music_Staff                                %! ide.Path.extern()

                    \tag PercussionII                                          %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Percussion_II_Music_Staff"               %! harmony.ScoreTemplate.__call__()
                    \z_Percussion_II_Music_Staff                               %! ide.Path.extern()

                    \tag Harp                                                  %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Harp_Music_Staff"                        %! harmony.ScoreTemplate.__call__()
                    \z_Harp_Music_Staff                                        %! ide.Path.extern()

                >>                                                             %! harmony.ScoreTemplate.__call__()

                \context StringSectionStaffGroup = "String_Section_Staff_Group" %! harmony.ScoreTemplate.__call__()
                <<                                                             %! harmony.ScoreTemplate.__call__()

                    \tag Viola                                                 %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Viola_Music_Staff"                       %! harmony.ScoreTemplate.__call__()
                    \z_Viola_Music_Staff                                       %! ide.Path.extern()

                    \tag CelloI                                                %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Cello_I_Music_Staff"                     %! harmony.ScoreTemplate.__call__()
                    \z_Cello_I_Music_Staff                                     %! ide.Path.extern()

                    \tag CelloII                                               %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Cello_II_Music_Staff"                    %! harmony.ScoreTemplate.__call__()
                    \z_Cello_II_Music_Staff                                    %! ide.Path.extern()

                    \tag ContrabassI                                           %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Contrabass_I_Music_Staff"                %! harmony.ScoreTemplate.__call__()
                    \z_Contrabass_I_Music_Staff                                %! ide.Path.extern()

                    \tag ContrabassII                                          %! baca.ScoreTemplate._attach_liypond_tag()
                    \context Staff = "Contrabass_II_Music_Staff"               %! harmony.ScoreTemplate.__call__()
                    \z_Contrabass_II_Music_Staff                               %! ide.Path.extern()

                >>                                                             %! harmony.ScoreTemplate.__call__()

            >>                                                                 %! harmony.ScoreTemplate.__call__()

        >>                                                                     %! harmony.ScoreTemplate.__call__()

    >>                                                                         %! baca.SegmentMaker._make_lilypond_file()

}                                                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_blocks()