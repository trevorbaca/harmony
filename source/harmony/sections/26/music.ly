\version "2.25.26"
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
                {
                    \number.26.Skips
                }

                \context GlobalSkips = "TimeSignatures"
                {
                    \number.26.TimeSignatures
                }

            >>

            \context MusicContext = "MusicContext"
            <<

                \context WindSectionStaffGroup = "WindSectionStaffGroup"
                <<

                    \tag #'BassFlute
                    \context Staff = "BassFlute.Staff"
                    {
                        \number.26.BassFlute.Staff
                    }

                >>

                \context PercussionSectionStaffGroup = "PercussionSectionStaffGroup"
                <<

                    \tag #'Percussion.1
                    \context Staff = "Percussion.1.Staff"
                    {
                        \number.26.Percussion.1.Staff
                    }

                    \tag #'Percussion.2
                    \context Staff = "Percussion.2.Staff"
                    {
                        \number.26.Percussion.2.Staff
                    }

                    \tag #'Harp
                    \context Staff = "Harp.Staff"
                    {
                        \number.26.Harp.Staff
                    }

                >>

                \context StringSectionStaffGroup = "StringSectionStaffGroup"
                <<

                    \tag #'Viola
                    \context Staff = "Viola.Staff"
                    {
                        \number.26.Viola.Staff
                    }

                    \tag #'Cello.1
                    \context Staff = "Cello.1.Staff"
                    {
                        \number.26.Cello.1.Staff
                    }

                    \tag #'Cello.2
                    \context Staff = "Cello.2.Staff"
                    {
                        \number.26.Cello.2.Staff
                    }

                    \tag #'Contrabass.1
                    \context Staff = "Contrabass.1.Staff"
                    {
                        \number.26.Contrabass.1.Staff
                    }

                    \tag #'Contrabass.2
                    \context Staff = "Contrabass.2.Staff"
                    {
                        \number.26.Contrabass.2.Staff
                    }

                >>

            >>

        >>

    >>

}
