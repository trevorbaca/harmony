#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 10)

\include "/Users/trevorbaca/baca/lilypond/baca.ily"
\include "contexts.ily"
\include "markups.ily"
\include "text-markups.ily"


\paper {
    %bottom-margin = 10\mm
    evenFooterMarkup =
        \markup
        \on-the-fly #print-page-number-check-first
        \fill-line {
            " "
            \bold
            \fontsize #3
            \override #'(font-name . "Adobe Garamond Pro")
            \concat {
                ( \hspace #1
                H \hspace #1
                A \hspace #1
                R \hspace #1
                M \hspace #1
                O \hspace #1
                N \hspace #1
                Y \hspace #1
                ) \hspace #1
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
    left-margin = 25\mm
    oddFooterMarkup = \evenFooterMarkup
    oddHeaderMarkup = \markup \fill-line { " " }
    print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 20\mm
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
        \override #'(font-name . "Adobe Garamond Pro")
        \fontsize #5
        \line { Trevor Bača (*1975) }
    }
    poet = \markup {
        \override #'(font-name . "Adobe Garamond Pro")
        \fontsize #5
        \line { Paul Griffiths (*1947) }
    }
    tagline = \markup { "" }
    title = \markup \column {
            \center-align {
            \override #'(font-name . "Adobe Garamond Pro Italic")
            \fontsize #3
            \line {
                \hspace #2
                to \hspace #0.75
                Jonathan \hspace #0.75
                Hepfer
            }
            " "
            \override #'(font-name . "Adobe Garamond Pro Bold")
            \fontsize #16
            \line {
                \concat {
                (
                \hspace #12
                H
                \hspace #9
                A
                \hspace #9
                R
                \hspace #(+ 9 1)
                M
                \hspace #9
                O
                \hspace #9
                N
                \hspace #9
                Y
                \hspace #12
                )
                }
            }
            " "
            \override #'(font-name . "Adobe Garamond Pro Italic")
            \fontsize #3
            \line {
                \hspace #2
                for \hspace #0.75
                narrator \hspace #0.75
                & \hspace #0.75
                nine \hspace #0.75
                players
            }
            " "
            " "
            " "
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
