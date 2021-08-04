% first_page_number = 11
% page_count = 2
% measure_count = 8 + 1
% time_signatures = [
% '4/4', '3/4', '1/4', '4/4', '4/4', '5/4', '6/4', '4/4'
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

            % [Page_Layout measure 55]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 1

            % [Page_Layout measure 56]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 57]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 58]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 59]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 1

            % [Page_Layout measure 60]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 61]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 62]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 63]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page.Layout

    >>

>>
