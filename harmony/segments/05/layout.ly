% first_page_number = 7
% page_count = 1
% measure_count = 5 + 1
% time_signatures = [
% '5/4', '3/4', '3/4', '6/4', '6/4'
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
        {   %*% e_Page_Layout

            % [Page_Layout measure 35]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 36]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 37]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 38]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 39]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 40]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% e_Page_Layout

    >>

>>
