% (HARMONY) (2019) for narrator & nine players

\version "2.19.83"
\language "english"

#(ly:set-option 'relative-includes #t)
\include "stylesheet.ily"
\include "_segments/segment-A.ily"
\include "_segments/segment-B.ily"


\score {
    <<
        {
        \include "layout.ly"
        }
        {
        \include "_segments/segment-A.ly"
        \include "_segments/segment-B.ly"
        }
    >>
}
