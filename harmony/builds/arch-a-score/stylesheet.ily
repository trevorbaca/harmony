#(ly:set-option 'relative-includes #t)
\include "../../stylesheet.ily"

#(set-default-paper-size "arch a")

\paper {
    left-margin = 30\mm
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
}

%\layout {
%    ragged-right = ##f
%}
