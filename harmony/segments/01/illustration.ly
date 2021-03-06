%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\version "2.23.1"
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_includes()
\include "../../stylesheet.ily"
%! baca.Path.extern()
\include "illustration.ily"

%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
{

    %! baca.SegmentMaker._make_lilypond_file()
    <<

        %! baca.SegmentMaker._make_lilypond_file()
        {
            %! baca.SegmentMaker._make_lilypond_file()
            \include "layout.ly"
        %! baca.SegmentMaker._make_lilypond_file()
        }

        %! harmony.ScoreTemplate.__call__()
        \context Score = "Score"
        %! harmony.ScoreTemplate.__call__()
        <<

            %! abjad.ScoreTemplate._make_global_context()
            \context GlobalContext = "Global_Context"
            %! abjad.ScoreTemplate._make_global_context()
            <<

                %! abjad.ScoreTemplate._make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! abjad.ScoreTemplate._make_global_context()
                %! baca.Path.extern()
                \a_Global_Skips

            %! abjad.ScoreTemplate._make_global_context()
            >>

            %! harmony.ScoreTemplate.__call__()
            \context MusicContext = "Music_Context"
            %! harmony.ScoreTemplate.__call__()
            <<

                %! harmony.ScoreTemplate.__call__()
                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                %! harmony.ScoreTemplate.__call__()
                <<

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag BassFlute
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Bass_Flute_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Bass_Flute_Music_Staff

                %! harmony.ScoreTemplate.__call__()
                >>

                %! harmony.ScoreTemplate.__call__()
                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                %! harmony.ScoreTemplate.__call__()
                <<

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag PercussionI
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Percussion_I_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Percussion_I_Music_Staff

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag PercussionII
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Percussion_II_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Percussion_II_Music_Staff

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag Harp
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Harp_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Harp_Music_Staff

                %! harmony.ScoreTemplate.__call__()
                >>

                %! harmony.ScoreTemplate.__call__()
                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                %! harmony.ScoreTemplate.__call__()
                <<

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag Viola
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Viola_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Viola_Music_Staff

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag CelloI
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Cello_I_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Cello_I_Music_Staff

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag CelloII
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Cello_II_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Cello_II_Music_Staff

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag ContrabassI
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Contrabass_I_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Contrabass_I_Music_Staff

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag ContrabassII
                    %! harmony.ScoreTemplate.__call__()
                    \context Staff = "Contrabass_II_Music_Staff"
                    %! harmony.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \a_Contrabass_II_Music_Staff

                %! harmony.ScoreTemplate.__call__()
                >>

            %! harmony.ScoreTemplate.__call__()
            >>

        %! harmony.ScoreTemplate.__call__()
        >>

    %! baca.SegmentMaker._make_lilypond_file()
    >>

%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
}
