\version "2.25.22"

#(set-global-staff-size 16)

\header
{
  subtitle =
  \markup
  \center-column {
    \override #'(font-name . "Adobe Garamond Pro")
    \abs-fontsize #10
    "(contrabass 2 part)"
    \vspace #4
  }
}

\paper
{
  top-markup-spacing = #'(
    (basic-distance . 0)
    (minimum-distance . 8)
    (padding . 0)
    (stretchability . 0)
  )
}

\layout
{
  ragged-right = ##f
}
