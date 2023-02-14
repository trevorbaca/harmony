  %! abjad.LilyPondFile._get_format_pieces()
  %! baca._make_lilypond_file()
\version "2.25.1"
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
            \context GlobalContext = "GlobalContext"
              %! baca.make_global_context()
            <<

                  %! baca.make_global_context()
                \context GlobalSkips = "Skips"
                  %! baca.make_global_context()
                  %! baca.path.extern()
                { \number.12.Skips }

              %! baca.make_global_context()
            >>

              %! harmony.make_empty_score()
            \context MusicContext = "MusicContext"
              %! harmony.make_empty_score()
            <<

                  %! harmony.make_empty_score()
                \context WindSectionStaffGroup = "WindSectionStaffGroup"
                  %! harmony.make_empty_score()
                <<

                      %! baca.attach_lilypond_tag()
                    \tag #'BassFlute
                      %! harmony.make_empty_score()
                    \context Staff = "BassFlute.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.BassFlute.Staff }

                  %! harmony.make_empty_score()
                >>

                  %! harmony.make_empty_score()
                \context PercussionSectionStaffGroup = "PercussionSectionStaffGroup"
                  %! harmony.make_empty_score()
                <<

                      %! baca.attach_lilypond_tag()
                    \tag #'Percussion.1
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion.1.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Percussion.1.Staff }

                      %! baca.attach_lilypond_tag()
                    \tag #'Percussion.2
                      %! harmony.make_empty_score()
                    \context Staff = "Percussion.2.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Percussion.2.Staff }

                      %! baca.attach_lilypond_tag()
                    \tag #'Harp
                      %! harmony.make_empty_score()
                    \context Staff = "Harp.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Harp.Staff }

                  %! harmony.make_empty_score()
                >>

                  %! harmony.make_empty_score()
                \context StringSectionStaffGroup = "StringSectionStaffGroup"
                  %! harmony.make_empty_score()
                <<

                      %! baca.attach_lilypond_tag()
                    \tag #'Viola
                      %! harmony.make_empty_score()
                    \context Staff = "Viola.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Viola.Staff }

                      %! baca.attach_lilypond_tag()
                    \tag #'Cello.1
                      %! harmony.make_empty_score()
                    \context Staff = "Cello.1.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Cello.1.Staff }

                      %! baca.attach_lilypond_tag()
                    \tag #'Cello.2
                      %! harmony.make_empty_score()
                    \context Staff = "Cello.2.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Cello.2.Staff }

                      %! baca.attach_lilypond_tag()
                    \tag #'Contrabass.1
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass.1.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Contrabass.1.Staff }

                      %! baca.attach_lilypond_tag()
                    \tag #'Contrabass.2
                      %! harmony.make_empty_score()
                    \context Staff = "Contrabass.2.Staff"
                      %! harmony.make_empty_score()
                      %! baca.path.extern()
                    { \number.12.Contrabass.2.Staff }

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
