%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
\version "2.23.6"
\include "../stylesheet.ily"
%! baca.path.extern()
\include "music.ily"

%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
\score
%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
{

    %! baca._make_lilypond_file()
    <<

        %! baca._make_lilypond_file()
        {
            %! baca._make_lilypond_file()
            \include "layout.ly"
        %! baca._make_lilypond_file()
        }

        %! harmony.make_empty_score()
        \context Score = "Score"
        %! harmony.make_empty_score()
        <<

            %! baca.make_global_context()
            \context GlobalContext = "Global_Context"
            %! baca.make_global_context()
            <<

                %! baca.make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! baca.make_global_context()
                %! baca.path.extern()
                { \segment.07.Global.Skips }

            %! baca.make_global_context()
            >>

            %! harmony.make_empty_score()
            \context MusicContext = "Music_Context"
            %! harmony.make_empty_score()
            <<

                %! harmony.make_empty_score()
                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                %! harmony.make_empty_score()
                <<

                    %! baca.attach_lilypond_tag()
                    \tag BassFlute
                    %! harmony.make_empty_score()
                    \context Staff = "Bass_Flute_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Bass.Flute.Music.Staff }

                %! harmony.make_empty_score()
                >>

                %! harmony.make_empty_score()
                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                %! harmony.make_empty_score()
                <<

                    %! baca.attach_lilypond_tag()
                    \tag PercussionI
                    %! harmony.make_empty_score()
                    \context Staff = "Percussion_I_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Percussion.I.Music.Staff }

                    %! baca.attach_lilypond_tag()
                    \tag PercussionII
                    %! harmony.make_empty_score()
                    \context Staff = "Percussion_II_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Percussion.II.Music.Staff }

                    %! baca.attach_lilypond_tag()
                    \tag Harp
                    %! harmony.make_empty_score()
                    \context Staff = "Harp_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Harp.Music.Staff }

                %! harmony.make_empty_score()
                >>

                %! harmony.make_empty_score()
                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                %! harmony.make_empty_score()
                <<

                    %! baca.attach_lilypond_tag()
                    \tag Viola
                    %! harmony.make_empty_score()
                    \context Staff = "Viola_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Viola.Music.Staff }

                    %! baca.attach_lilypond_tag()
                    \tag CelloI
                    %! harmony.make_empty_score()
                    \context Staff = "Cello_I_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Cello.I.Music.Staff }

                    %! baca.attach_lilypond_tag()
                    \tag CelloII
                    %! harmony.make_empty_score()
                    \context Staff = "Cello_II_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Cello.II.Music.Staff }

                    %! baca.attach_lilypond_tag()
                    \tag ContrabassI
                    %! harmony.make_empty_score()
                    \context Staff = "Contrabass_I_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Contrabass.I.Music.Staff }

                    %! baca.attach_lilypond_tag()
                    \tag ContrabassII
                    %! harmony.make_empty_score()
                    \context Staff = "Contrabass_II_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.07.Contrabass.II.Music.Staff }

                %! harmony.make_empty_score()
                >>

            %! harmony.make_empty_score()
            >>

        %! harmony.make_empty_score()
        >>

    %! baca._make_lilypond_file()
    >>

%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
}
