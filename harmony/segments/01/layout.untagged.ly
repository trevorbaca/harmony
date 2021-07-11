% page_count = 1
% measure_count = 3 + 1
% time_signatures = [
% '6/4', '5/4', '3/4'
%  ]


\context Score = "Score"
\with
{
    currentBarNumber = 1
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% Page_Layout

            % [Page_Layout measure 1]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #90 #'(18 26 21 21 26 21 21 21 21 26)
            \pageBreak
            s1 * 3/2

            % [Page_Layout measure 2]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 3]
            \baca-new-spacing-section #1 #64
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 4]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page_Layout

    >>

>>
