\version "2.25.13"
\include "../../stylesheet.ily"

#(set-default-paper-size "letter")
#(set-global-staff-size 11)

\header {
    composer =
    \markup {
        \override #'(font-name . "Adobe Garamond Pro")
        \abs-fontsize #12
        \line { Trevor Bača (*1975) }
    }
    poet =
    \markup {
        \override #'(font-name . "Adobe Garamond Pro")
        \abs-fontsize #12
        \line { Paul Griffiths (*1947) }
    }
    title =
    \markup
    \center-column {
        \override #'(font-name . "Adobe Garamond Pro Italic")
        \abs-fontsize #13
        "to Jonathan Hepfer"
        \combine \null \vspace #1
        \override #'(font-name . "Adobe Garamond Pro Bold")
        \abs-fontsize #20
        \line { ( HARMONY ) }
        \combine \null \vspace #0.5
        \override #'(font-name . "Adobe Garamond Pro Italic")
        \abs-fontsize #13
        "for narrator & nine players"
        \combine \null \vspace #1
    }
}

\paper {
    evenFooterMarkup =
        \markup
        \if \should-print-page-number
        \fill-line {
            " "
            \bold
            \abs-fontsize #9
            \override #'(font-name . "Adobe Garamond Pro")
            \concat {
                ( \hspace #2 HARMONY \hspace #2 )
                \hspace #3
                —
                \hspace #3
                \if \should-print-page-number
                \fromproperty #'page:page-number-string
                \hspace #3
                —
                \hspace #3
                Bača
            }
            " "
        }
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 0)
        (stretchability . 0)
    )
    oddFooterMarkup = \evenFooterMarkup
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 0)
        (stretchability . 0)
    )
}

\layout {

    \context {
        \GlobalContext
        \remove Time_signature_engraver
        \override BarNumber.X-offset = -2.5
        \override BarNumber.Y-offset = -2
    }

    \context {
        \GlobalRests
        %\override MultiMeasureRestText.extra-offset = #'(0 . -3)
        %\override MultiMeasureRestText.font-size = 0
    }

    \context {
        \GlobalSkips
        \override TextSpanner.font-size = 1
    }

    \context {
        \Staff
        \consists Time_signature_engraver

        \override TimeSignature.style = #'numbered
    }

    \context {
        \Score
        \override BarLine.bar-extent = #'(-2 . 2)
        \override BarLine.hair-thickness = 2.5
        \override BarLine.space-alist = #'(
            (time-signature extra-space . 1.0)
            (custos minimum-space . 0.0) 
            (clef minimum-space . 0.0) 
            (key-signature extra-space . 0.0) 
            (key-cancellation extra-space . 0.0) 
            (first-note fixed-space . 3.0) 
            (next-note semi-fixed-space . 3.0) 
            (right-edge extra-space . 0.0)
            )
        \override TimeSignature.break-visibility = #end-of-line-invisible
    }

    indent = 0
    ragged-right = ##f
}
