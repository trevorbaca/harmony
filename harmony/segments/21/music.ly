%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\version "2.23.1"
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_includes()
\include "../../stylesheet.ily"
%! baca.path.extern()
\include "music.ily"

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
%! baca._add_nonfirst_segment_preamble()
\paper { first-page-number = #33 }

%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
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

            %! abjad.ScoreTemplate._make_global_context()
            \context GlobalContext = "Global_Context"
            %! abjad.ScoreTemplate._make_global_context()
            <<

                %! abjad.ScoreTemplate._make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! abjad.ScoreTemplate._make_global_context()
                %! baca.path.extern()
                { \segment.21.Global.Skips }

            %! abjad.ScoreTemplate._make_global_context()
            >>

            %! harmony.make_empty_score()
            \context MusicContext = "Music_Context"
            %! harmony.make_empty_score()
            <<

                %! harmony.make_empty_score()
                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                %! harmony.make_empty_score()
                <<

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag BassFlute
                    %! harmony.make_empty_score()
                    \context Staff = "Bass_Flute_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Bass.Flute.Music.Staff }

                %! harmony.make_empty_score()
                >>

                %! harmony.make_empty_score()
                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                %! harmony.make_empty_score()
                <<

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag PercussionI
                    %! harmony.make_empty_score()
                    \context Staff = "Percussion_I_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Percussion.I.Music.Staff }

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag PercussionII
                    %! harmony.make_empty_score()
                    \context Staff = "Percussion_II_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Percussion.II.Music.Staff }

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag Harp
                    %! harmony.make_empty_score()
                    \context Staff = "Harp_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Harp.Music.Staff }

                %! harmony.make_empty_score()
                >>

                %! harmony.make_empty_score()
                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                %! harmony.make_empty_score()
                <<

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag Viola
                    %! harmony.make_empty_score()
                    \context Staff = "Viola_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Viola.Music.Staff }

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag CelloI
                    %! harmony.make_empty_score()
                    \context Staff = "Cello_I_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Cello.I.Music.Staff }

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag CelloII
                    %! harmony.make_empty_score()
                    \context Staff = "Cello_II_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Cello.II.Music.Staff }

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag ContrabassI
                    %! harmony.make_empty_score()
                    \context Staff = "Contrabass_I_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Contrabass.I.Music.Staff }

                    %! baca.ScoreTemplate._attach_liypond_tag()
                    \tag ContrabassII
                    %! harmony.make_empty_score()
                    \context Staff = "Contrabass_II_Music_Staff"
                    %! harmony.make_empty_score()
                    %! baca.path.extern()
                    { \segment.21.Contrabass.II.Music.Staff }

                %! harmony.make_empty_score()
                >>

            %! harmony.make_empty_score()
            >>

        %! harmony.make_empty_score()
        >>

    %! baca._make_lilypond_file()
    >>

%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
}
