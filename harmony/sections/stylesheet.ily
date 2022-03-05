\include "../stylesheet.ily"

\paper
{
  evenFooterMarkup = \markup \on-the-fly #print-page-number-check-first \fill-line
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
