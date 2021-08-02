% first_page_number = 44
% page_count = 2
% measure_count = 10 + 1
% time_signatures = [
% '2/4', '2/4', '2/4', '2/4', '6/4', '1/4', '7/4', '7/4', '7/4', '7/4'
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
        {   %*% segment.28.Page.Layout

            % [Page_Layout measure 256]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 257]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 258]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 259]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 260]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 261]
            \baca-new-spacing-section #35 #6912
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 262]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 7/4

            % [Page_Layout measure 263]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/4

            % [Page_Layout measure 264]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/4

            % [Page_Layout measure 265]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/4

            % [Page_Layout measure 266]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.28.Page.Layout

    >>

>>
