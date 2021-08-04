% first_page_number = 8
% page_count = 3
% measure_count = 15 + 1
% time_signatures = [
% '5/4', '1/4', '4/4', '4/4', '4/4', '5/4', '4/4', '3/4', '1/4', '5/4', '4/4',
%  '5/4', '4/4', '5/4', '4/4'
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
        {   %*% Page.Layout

            % [Page_Layout measure 40]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 41]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 42]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 43]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 44]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 1

            % [Page_Layout measure 45]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 46]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 47]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 48]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 49]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 50]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 1

            % [Page_Layout measure 51]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 52]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 53]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 54]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 55]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page.Layout

    >>

>>
