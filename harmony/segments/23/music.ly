\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "music.ily.tagged"

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
\paper { first-page-number = #36 }

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
                \w_Global_Skips

            >>

            \context MusicContext = "Music_Context"
            <<

                \context WindSectionStaffGroup = "Wind_Section_Staff_Group"
                <<

                    \tag BassFlute
                    \context Staff = "Bass_Flute_Music_Staff"
                    \w_Bass_Flute_Music_Staff

                >>

                \context PercussionSectionStaffGroup = "Percussion_Section_Staff_Group"
                <<

                    \tag PercussionI
                    \context Staff = "Percussion_I_Music_Staff"
                    \w_Percussion_I_Music_Staff

                    \tag PercussionII
                    \context Staff = "Percussion_II_Music_Staff"
                    \w_Percussion_II_Music_Staff

                    \tag Harp
                    \context Staff = "Harp_Music_Staff"
                    \w_Harp_Music_Staff

                >>

                \context StringSectionStaffGroup = "String_Section_Staff_Group"
                <<

                    \tag Viola
                    \context Staff = "Viola_Music_Staff"
                    \w_Viola_Music_Staff

                    \tag CelloI
                    \context Staff = "Cello_I_Music_Staff"
                    \w_Cello_I_Music_Staff

                    \tag CelloII
                    \context Staff = "Cello_II_Music_Staff"
                    \w_Cello_II_Music_Staff

                    \tag ContrabassI
                    \context Staff = "Contrabass_I_Music_Staff"
                    \w_Contrabass_I_Music_Staff

                    \tag ContrabassII
                    \context Staff = "Contrabass_II_Music_Staff"
                    \w_Contrabass_II_Music_Staff

                >>

            >>

        >>

    >>

}