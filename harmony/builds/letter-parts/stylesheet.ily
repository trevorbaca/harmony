#(ly:set-option 'relative-includes #t)
\include "../../stylesheets/stylesheet.ily"

#(set-default-paper-size "letter")
#(set-global-staff-size 11)

\header {
    title = \markup
        \column {
            \center-align {
                \override #'(font-name . "Adobe Garamond Pro Italic")
                \fontsize #3
                "to Jonathan Hepfer"
                " "
                \override #'(font-name . "Adobe Garamond Pro Bold")
                \fontsize #6
                \line { (HARMONY) }
                " "
                \override #'(font-name . "Adobe Garamond Pro Italic")
                \fontsize #3
                "for narrator & nine players"
                " "
            }
        }
}

\paper {
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 0)
        (stretchability . 0)
    )
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
