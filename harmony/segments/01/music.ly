\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "music.ily.tagged"

\score
{

    <<

        {
            \include "layout.ly.tagged"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "Global_Context"
            <<

                \context GlobalSkips = "Global_Skips"
                { \segment.01.Global.Skips }

            >>

            \context MusicContext = "Music_Context"
            <<

                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                <<

                    \tag BassFlute
                    \context Staff = "Bass_Flute_Music_Staff"
                    { \segment.01.Bass.Flute.Music.Staff }

                >>

                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                <<

                    \tag PercussionI
                    \context Staff = "Percussion_I_Music_Staff"
                    { \segment.01.Percussion.I.Music.Staff }

                    \tag PercussionII
                    \context Staff = "Percussion_II_Music_Staff"
                    { \segment.01.Percussion.II.Music.Staff }

                    \tag Harp
                    \context Staff = "Harp_Music_Staff"
                    { \segment.01.Harp.Music.Staff }

                >>

                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                <<

                    \tag Viola
                    \context Staff = "Viola_Music_Staff"
                    { \segment.01.Viola.Music.Staff }

                    \tag CelloI
                    \context Staff = "Cello_I_Music_Staff"
                    { \segment.01.Cello.I.Music.Staff }

                    \tag CelloII
                    \context Staff = "Cello_II_Music_Staff"
                    { \segment.01.Cello.II.Music.Staff }

                    \tag ContrabassI
                    \context Staff = "Contrabass_I_Music_Staff"
                    { \segment.01.Contrabass.I.Music.Staff }

                    \tag ContrabassII
                    \context Staff = "Contrabass_II_Music_Staff"
                    { \segment.01.Contrabass.II.Music.Staff }

                >>

            >>

        >>

    >>

}
