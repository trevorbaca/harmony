  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
\version "2.23.9"
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
                { \number.16.Global_Skips }
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
                \context WindSectionStaffGroup = "Wind_Section.Staff_Group"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'BassFlute
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Bass_Flute.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Bass_Flute.Music_Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context PercussionSectionStaffGroup = "Percussion_Section.Staff_Group"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'PercussionI
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion.1.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Percussion.1.Music_Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'PercussionII
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion.2.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Percussion.2.Music_Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Harp
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Harp.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Harp.Music_Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context StringSectionStaffGroup = "String_Section.Staff_Group"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Viola
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Viola.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Viola.Music_Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'CelloI
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Cello.1.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Cello.1.Music_Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'CelloII
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Cello.2.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Cello.2.Music_Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'ContrabassI
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass.1.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Contrabass.1.Music_Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'ContrabassII
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass.2.Music_Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.16.Contrabass.2.Music_Staff }
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
