% first_page_number = 30
% page_count = 2
% measure_count = 13 + 1
% time_signatures = [
% '4/4', '4/4', '1/4', '5/4', '4/4', '5/4', '4/4', '5/4', '4/4', '1/4', '4/4',
%  '5/4', '4/4'
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
        {   %*% s_Page_Layout

            % [Page_Layout measure 168]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 1

            % [Page_Layout measure 169]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 170]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 171]
            \baca-new-spacing-section #1 #20
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 172]
            \baca-new-spacing-section #1 #20
            \noBreak
            s1 * 1

            % [Page_Layout measure 173]
            \baca-new-spacing-section #1 #20
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 174]
            \baca-new-spacing-section #35 #480
            \noBreak
            s1 * 1

            % [Page_Layout measure 175]
            \baca-new-spacing-section #1 #20
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 176]
            \baca-new-spacing-section #1 #20
            \noBreak
            s1 * 1

            % [Page_Layout measure 177]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 178]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 179]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 180]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 181]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% s_Page_Layout

    >>

>>
