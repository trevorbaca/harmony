\version "2.25.16"
\include "../stylesheet.ily"
\include "music.ily"

\score
{

    <<

        {
            \include "layout.ily"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "GlobalContext"
            <<

                \context GlobalSkips = "Skips"
                { \number.24.Skips }

            >>

            \context MusicContext = "MusicContext"
            <<

                \context WindSectionStaffGroup = "WindSectionStaffGroup"
                <<

                    \tag #'BassFlute
                    \context Staff = "BassFlute.Staff"
                    { \number.24.BassFlute.Staff }

                >>

                \context PercussionSectionStaffGroup = "PercussionSectionStaffGroup"
                <<

                    \tag #'Percussion.1
                    \context Staff = "Percussion.1.Staff"
                    { \number.24.Percussion.1.Staff }

                    \tag #'Percussion.2
                    \context Staff = "Percussion.2.Staff"
                    { \number.24.Percussion.2.Staff }

                    \tag #'Harp
                    \context Staff = "Harp.Staff"
                    { \number.24.Harp.Staff }

                >>

                \context StringSectionStaffGroup = "StringSectionStaffGroup"
                <<

                    \tag #'Viola
                    \context Staff = "Viola.Staff"
                    { \number.24.Viola.Staff }

                    \tag #'Cello.1
                    \context Staff = "Cello.1.Staff"
                    { \number.24.Cello.1.Staff }

                    \tag #'Cello.2
                    \context Staff = "Cello.2.Staff"
                    { \number.24.Cello.2.Staff }

                    \tag #'Contrabass.1
                    \context Staff = "Contrabass.1.Staff"
                    { \number.24.Contrabass.1.Staff }

                    \tag #'Contrabass.2
                    \context Staff = "Contrabass.2.Staff"
                    { \number.24.Contrabass.2.Staff }

                >>

            >>

        >>

    >>

}
