  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
\version "2.23.8"
\include "../stylesheet.ily"
  %! baca.path.extern()
\include "music.ily"

  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
\score
  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
{
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca._make_lilypond_file()
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_lilypond_file()
        {
        % OPENING:
            % COMMANDS:
              %! baca._make_lilypond_file()
            \include "layout.ly"
        % CLOSE_BRACKETS:
          %! baca._make_lilypond_file()
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! harmony.make_empty_score()
        \context Score = "Score"
          %! harmony.make_empty_score()
        <<
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            % OPEN_BRACKETS:
              %! baca.make_global_context()
            \context GlobalContext = "Global_Context"
              %! baca.make_global_context()
            <<
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! baca.make_global_context()
                \context GlobalSkips = "Global_Skips"
                  %! baca.make_global_context()
                  %! baca.path.extern()
                { \segment.17.Global.Skips }
                % CLOSING:
                % COMMANDS:

            % CLOSE_BRACKETS:
              %! baca.make_global_context()
            >>
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            % OPEN_BRACKETS:
              %! harmony.make_empty_score()
            \context MusicContext = "Music_Context"
              %! harmony.make_empty_score()
            <<
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag BassFlute
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Bass_Flute_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Bass.Flute.Music.Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag PercussionI
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion_I_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Percussion.I.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag PercussionII
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion_II_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Percussion.II.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag Harp
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Harp_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Harp.Music.Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag Viola
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Viola_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Viola.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag CelloI
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Cello_I_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Cello.I.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag CelloII
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Cello_II_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Cello.II.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag ContrabassI
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass_I_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Contrabass.I.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag ContrabassII
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass_II_Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \segment.17.Contrabass.II.Music.Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % CLOSING:
                % COMMANDS:

            % CLOSE_BRACKETS:
              %! harmony.make_empty_score()
            >>
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! harmony.make_empty_score()
        >>
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca._make_lilypond_file()
    >>

  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
}
