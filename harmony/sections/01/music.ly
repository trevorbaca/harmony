\version "2.25.6"
\include "../stylesheet.ily"
\include "header.ily"
\include "music.ily"

\score
{

    <<

        {
            \include "layout.ly"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "GlobalContext"
            <<

                \context GlobalSkips = "Skips"
                { \number.1.Skips }

            >>

            \context MusicContext = "MusicContext"
            <<

                \context WindSectionStaffGroup = "WindSectionStaffGroup"
                <<

                    \tag #'BassFlute
                    \context Staff = "BassFlute.Staff"
                    { \number.1.BassFlute.Staff }

                >>

                \context PercussionSectionStaffGroup = "PercussionSectionStaffGroup"
                <<

                    \tag #'Percussion.1
                    \context Staff = "Percussion.1.Staff"
                    { \number.1.Percussion.1.Staff }

                    \tag #'Percussion.2
                    \context Staff = "Percussion.2.Staff"
                    { \number.1.Percussion.2.Staff }

                    \tag #'Harp
                    \context Staff = "Harp.Staff"
                    { \number.1.Harp.Staff }

                >>

                \context StringSectionStaffGroup = "StringSectionStaffGroup"
                <<

                    \tag #'Viola
                    \context Staff = "Viola.Staff"
                    { \number.1.Viola.Staff }

                    \tag #'Cello.1
                    \context Staff = "Cello.1.Staff"
                    { \number.1.Cello.1.Staff }

                    \tag #'Cello.2
                    \context Staff = "Cello.2.Staff"
                    { \number.1.Cello.2.Staff }

                    \tag #'Contrabass.1
                    \context Staff = "Contrabass.1.Staff"
                    { \number.1.Contrabass.1.Staff }

                    \tag #'Contrabass.2
                    \context Staff = "Contrabass.2.Staff"
                    { \number.1.Contrabass.2.Staff }

                >>

            >>

        >>

    >>

}
