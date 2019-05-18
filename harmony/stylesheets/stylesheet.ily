#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 10)

\include "/Users/trevorbaca/baca/lilypond/baca.ily"
%%%\include "annotation-spanners.ily"
\include "contexts.ily"
\include "markups.ily"


\paper {
    %bottom-margin = 10\mm
    evenFooterMarkup = \markup
        \on-the-fly #print-page-number-check-first
        \fill-line {
            " "
            \bold
            \fontsize #3
            \override #'(font-name . "Palatino")
            \concat {
                \override #'(font-name . "Palatino Italic")
                (HARMONY)
                \hspace #3
                —
                \hspace #3
                \on-the-fly #print-page-number-check-first
                \fromproperty #'page:page-number-string
                \hspace #3
                —
                \hspace #3
                Bača
            }
            " "
    }
    evenHeaderMarkup = \markup \fill-line { " " }
    left-margin = 20\mm
    oddFooterMarkup = \evenFooterMarkup
    oddHeaderMarkup = \markup \fill-line { " " }
    print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 5\mm
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 60)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 24) % space after each system
        (padding . 0)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 18)
        (padding . 0)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 26)
        (padding . 0)
        (stretchability . 0)
    )
    top-margin = 0\mm
}

\header {
    composer = \markup {
        \override #'(font-name . "Palatino")
        \fontsize #5
        \line { Trevor Bača (*1975) }
    }
    poet = \markup {
        \fontsize #5
        \line { Paul Griffiths }
    }
    tagline = \markup { "" }
    title = \markup \column {
            \override #'(font-name . "Palatino Italic")
            \fontsize #3
            \line {
                \hspace #2
                to \hspace #0.75
                Jonathan \hspace #0.75
                Hepfer \hspace #0.75
                & \hspace #0.75
                Monday \hspace #0.75
                Evening \hspace #0.75
                Concerts
            }
            " "
        \center-align {
            \override #'(font-name . "Palatino")
            \fontsize #16
            \line {
                \concat {
                H
                \hspace #1
                A
                \hspace #1
                \hspace #1
                R
                \hspace #1
                M
                \hspace #1
                O
                \hspace #1
                N
                \hspace #1
                Y
                \hspace #1
                )
                }
            }
            " "
            \override #'(font-name . "Palatino Italic")
            \fontsize #3
            \line {
                \hspace #2
                for \hspace #0.75
                narrator \hspace #0.75
                & \hspace #0.75
                nine \hspace #0.75
                players
            }
        }
    }
}

\layout {
    \accidentalStyle neo-modern
    indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
}
