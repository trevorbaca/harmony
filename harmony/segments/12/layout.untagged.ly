% first_page_number = 20
% page_count = 2
% measure_count = 15 + 1
% time_signatures = [
% '3/4', '5/4', '3/4', '5/4', '3/4', '5/4', '3/4', '5/4', '1/4', '6/4', '3/4',
%  '4/4', '3/4', '3/4', '4/4'
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

            % [Page_Layout measure 99]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 3/4

            % [Page_Layout measure 100]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 101]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 102]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 103]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 104]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 105]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 106]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 107]
            \baca-new-spacing-section #35 #6912
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 108]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 3/2

            % [Page_Layout measure 109]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 110]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 111]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 112]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 113]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 114]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page_Layout

    >>

>>