% first_page_number = 34
% page_count = 2
% measure_count = 13 + 1
% time_signatures = [
% '3/4', '3/4', '3/4', '4/4', '3/4', '3/4', '3/4', '3/4', '3/4', '3/4', '1/4',
%  '3/4', '4/4'
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

            % [Page_Layout measure 196]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 3/4

            % [Page_Layout measure 197]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 198]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 199]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 200]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 201]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 202]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 203]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 3/4

            % [Page_Layout measure 204]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 205]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 206]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 207]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 208]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 209]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page.Layout

    >>

>>
