% first_page_number = 38
% page_count = 2
% measure_count = 11 + 1
% time_signatures = [
% '7/4', '6/4', '5/4', '1/4', '6/4', '6/4', '6/4', '6/4', '6/4', '6/4', '1/4'
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
        {   %*% y_Page_Layout

            % [25 Page_Layout measure 226]
            \baca-new-spacing-section #1 #20
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 7/4

            % [25 Page_Layout measure 227]
            \baca-new-spacing-section #1 #20
            \noBreak
            s1 * 3/2

            % [25 Page_Layout measure 228]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 5/4

            % [25 Page_Layout measure 229]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [25 Page_Layout measure 230]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [25 Page_Layout measure 231]
            \baca-new-spacing-section #35 #768
            \noBreak
            s1 * 3/2

            % [25 Page_Layout measure 232]
            \baca-new-spacing-section #1 #32
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 3/2

            % [25 Page_Layout measure 233]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [25 Page_Layout measure 234]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [25 Page_Layout measure 235]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [25 Page_Layout measure 236]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [25 Page_Layout measure 237]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% y_Page_Layout

    >>

>>
