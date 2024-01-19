\include "../stylesheet.ily"

\paper
{
  evenFooterMarkup = \markup \if \should-print-page-number \fill-line
  {
    \fontsize #3
    \override #'(font-name . "Adobe Garamond Pro")
    \concat
    {
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
      Bača
    }
  }
  oddFooterMarkup = \evenFooterMarkup
  print-first-page-number = ##t
}

\layout { \context { \Score barNumberVisibility = #all-bar-numbers-visible } }

local-measure-number-extra-offset = #'(0 . 7)
stage-number-extra-offset = #'(0 . 13)
