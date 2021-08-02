% first_page_number = 42
% page_count = 2
% measure_count = 9 + 1
% time_signatures = [
% '7/4', '1/4', '5/4', '7/4', '6/4', '6/4', '2/4', '1/4', '7/4'
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
        {   %*% segment.27.Page.Layout

            % [Page_Layout measure 247]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 7/4

            % [Page_Layout measure 248]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 249]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 5/4

            % [Page_Layout measure 250]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/4

            % [Page_Layout measure 251]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 252]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 3/2

            % [Page_Layout measure 253]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 254]
            \baca-new-spacing-section #1 #288
            \noBreak
            s1 * 1/4

            % [Page_Layout measure 255]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/4

            % [Page_Layout measure 256]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.27.Page.Layout

    >>

>>
