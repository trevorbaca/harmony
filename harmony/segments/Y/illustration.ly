\version "2.19.83"                                                             %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
\language "english"                                                            %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile

\include "../../stylesheets/stylesheet.ily"                                    %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
\include "../../stylesheets/nonfirst-segment.ily"                              %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
\include "illustration.ily"                                                    %! abjad.Path.extern
\paper { first-page-number = #31 }                                             %! __make_segment_pdf__


\score {                                                                       %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
    
    <<                                                                         %! baca.SegmentMaker._make_lilypond_file

        {                                                                      %! baca.SegmentMaker._make_lilypond_file
            \include "layout.ly"                                               %! baca.SegmentMaker._make_lilypond_file
        }                                                                      %! baca.SegmentMaker._make_lilypond_file

        \context Score = "Score"                                               %! harmony.ScoreTemplate.__call__
        <<                                                                     %! harmony.ScoreTemplate.__call__

            \context GlobalContext = "Global_Context"                          %! abjad.ScoreTemplate._make_global_context
            <<                                                                 %! abjad.ScoreTemplate._make_global_context

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context
                \Y_Global_Skips                                                %! abjad.Path.extern

            >>                                                                 %! abjad.ScoreTemplate._make_global_context

            \context MusicContext = "Music_Context"                            %! harmony.ScoreTemplate.__call__
            <<                                                                 %! harmony.ScoreTemplate.__call__

                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"    %! harmony.ScoreTemplate.__call__
                <<                                                             %! harmony.ScoreTemplate.__call__

                    \tag BassFlute                                             %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Bass_Flute_Music_Staff"                  %! harmony.ScoreTemplate.__call__
                    \Y_Bass_Flute_Music_Staff                                  %! abjad.Path.extern

                >>                                                             %! harmony.ScoreTemplate.__call__

                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group" %! harmony.ScoreTemplate.__call__
                <<                                                             %! harmony.ScoreTemplate.__call__

                    \tag PercussionI                                           %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Percussion_I_Music_Staff"                %! harmony.ScoreTemplate.__call__
                    \Y_Percussion_I_Music_Staff                                %! abjad.Path.extern

                    \tag PercussionII                                          %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Percussion_II_Music_Staff"               %! harmony.ScoreTemplate.__call__
                    \Y_Percussion_II_Music_Staff                               %! abjad.Path.extern

                    \tag Harp                                                  %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Harp_Music_Staff"                        %! harmony.ScoreTemplate.__call__
                    \Y_Harp_Music_Staff                                        %! abjad.Path.extern

                >>                                                             %! harmony.ScoreTemplate.__call__

                \context StringSectionStaffGroup = "String_Section_Staff_Group" %! harmony.ScoreTemplate.__call__
                <<                                                             %! harmony.ScoreTemplate.__call__

                    \tag Viola                                                 %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Viola_Music_Staff"                       %! harmony.ScoreTemplate.__call__
                    \Y_Viola_Music_Staff                                       %! abjad.Path.extern

                    \tag CelloI                                                %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Cello_I_Music_Staff"                     %! harmony.ScoreTemplate.__call__
                    \Y_Cello_I_Music_Staff                                     %! abjad.Path.extern

                    \tag CelloII                                               %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Cello_II_Music_Staff"                    %! harmony.ScoreTemplate.__call__
                    \Y_Cello_II_Music_Staff                                    %! abjad.Path.extern

                    \tag ContrabassI                                           %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Contrabass_I_Music_Staff"                %! harmony.ScoreTemplate.__call__
                    \Y_Contrabass_I_Music_Staff                                %! abjad.Path.extern

                    \tag ContrabassII                                          %! baca.ScoreTemplate._attach_liypond_tag
                    \context Staff = "Contrabass_II_Music_Staff"               %! harmony.ScoreTemplate.__call__
                    \Y_Contrabass_II_Music_Staff                               %! abjad.Path.extern

                >>                                                             %! harmony.ScoreTemplate.__call__

            >>                                                                 %! harmony.ScoreTemplate.__call__

        >>                                                                     %! harmony.ScoreTemplate.__call__

    >>                                                                         %! baca.SegmentMaker._make_lilypond_file
    
}                                                                              %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile