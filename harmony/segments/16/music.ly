\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "music.ily.tagged"

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
\paper { first-page-number = #26 }

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
                { \segment.16.Global.Skips }

            >>

            \context MusicContext = "Music_Context"
            <<

                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                <<

                    \tag BassFlute
                    \context Staff = "Bass_Flute_Music_Staff"
                    { \segment.16.Bass.Flute.Music.Staff }

                >>

                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                <<

                    \tag PercussionI
                    \context Staff = "Percussion_I_Music_Staff"
                    { \segment.16.Percussion.I.Music.Staff }

                    \tag PercussionII
                    \context Staff = "Percussion_II_Music_Staff"
                    { \segment.16.Percussion.II.Music.Staff }

                    \tag Harp
                    \context Staff = "Harp_Music_Staff"
                    { \segment.16.Harp.Music.Staff }

                >>

                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                <<

                    \tag Viola
                    \context Staff = "Viola_Music_Staff"
                    { \segment.16.Viola.Music.Staff }

                    \tag CelloI
                    \context Staff = "Cello_I_Music_Staff"
                    { \segment.16.Cello.I.Music.Staff }

                    \tag CelloII
                    \context Staff = "Cello_II_Music_Staff"
                    { \segment.16.Cello.II.Music.Staff }

                    \tag ContrabassI
                    \context Staff = "Contrabass_I_Music_Staff"
                    { \segment.16.Contrabass.I.Music.Staff }

                    \tag ContrabassII
                    \context Staff = "Contrabass_II_Music_Staff"
                    { \segment.16.Contrabass.II.Music.Staff }

                >>

            >>

        >>

    >>

}
