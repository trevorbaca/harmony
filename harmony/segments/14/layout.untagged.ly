% first_page_number = 23
% page_count = 2
% measure_count = 11 + 1
% time_signatures = [
% '4/4', '4/4', '1/4', '4/4', '5/4', '4/4', '4/4', '4/4', '4/4', '1/4', '3/4'
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

            % [Page_Layout measure 120]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 1

            % [Page_Layout measure 121]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 122]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 123]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 124]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 125]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 1

            % [Page_Layout measure 126]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 127]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 128]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1

            % [Page_Layout measure 129]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 130]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/4

            % [Page_Layout measure 131]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page_Layout

    >>

>>