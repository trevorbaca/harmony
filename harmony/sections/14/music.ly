  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
\version "2.23.12"
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
            \context GlobalContext = "GlobalContext"
              %! baca.make_global_context()
            <<
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! baca.make_global_context()
                \context GlobalSkips = "Skips"
                  %! baca.make_global_context()
                  %! baca.path.extern()
                { \number.14.Skips }
                % CLOSING:
                % COMMANDS:

            % CLOSE_BRACKETS:
              %! baca.make_global_context()
            >>
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            % OPEN_BRACKETS:
              %! harmony.make_empty_score()
            \context MusicContext = "MusicContext"
              %! harmony.make_empty_score()
            <<
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context WindSectionStaffGroup = "WindSectionStaffGroup"
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
                    \context Staff = "BassFlute.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.BassFlute.Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context PercussionSectionStaffGroup = "PercussionSectionStaffGroup"
                  %! harmony.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Percussion.1
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion.1.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Percussion.1.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Percussion.2
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion.2.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Percussion.2.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Harp
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Harp.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Harp.Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                  %! harmony.make_empty_score()
                >>
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                  %! harmony.make_empty_score()
                \context StringSectionStaffGroup = "StringSectionStaffGroup"
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
                    \context Staff = "Viola.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Viola.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Cello.1
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Cello.1.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Cello.1.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Cello.2
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Cello.2.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Cello.2.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Contrabass.1
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass.1.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Contrabass.1.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % BEFORE:
                    % COMMANDS:
                      %! baca.attach_lilypond_tag()
                    \tag #'Contrabass.2
                    % OPEN_BRACKETS:
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass.2.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.14.Contrabass.2.Staff }
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
