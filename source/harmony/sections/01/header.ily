\version "2.25.26"
\header
{
  composer = \markup
    \override #'(font-name . "Adobe Garamond Pro")
    \fontsize #6
    "Trevor Bača (*1975)"
  poet = \markup
    \override #'(font-name . "Adobe Garamond Pro")
    \fontsize #6
    "Paul Griffiths (*1947)"
  tagline = \markup \null
  title = \markup \center-column
  {
    \override #'(font-name . "Adobe Garamond Pro Italic")
    \fontsize #3
    \line { \hspace #2 to \hspace #0.75 Jonathan \hspace #0.75 Hepfer }
    " "
    \override #'(font-name . "Adobe Garamond Pro Bold")
    \fontsize #16
    \line
    {
      \concat
      {
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
    \line
    {
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

