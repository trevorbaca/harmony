% first_page_number = 22
% page_count = 1
% measure_count = 6 + 1
% time_signatures = [
% '5/4', '1/4', '6/4', '6/4', '3/4', '1/4'
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
        {   %*% segment.13.Page.Layout

            % [Page_Layout measure 114]
            \baca-new-spacing-section #1 #32
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 5/4

            % [Page_Layout measure 115]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 116]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 117]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 118]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 119]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 120]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.13.Page.Layout

    >>

>>
