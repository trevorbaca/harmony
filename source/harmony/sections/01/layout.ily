\version "2.25.26"


\context Score = "Score"
{

    \context GlobalContext = "GlobalContext"
    <<

        \context GlobalSkips = "Breaks"
        {   %*% Breaks

            % [Breaks measure 1]
            \autoLineBreaksOff
            \autoPageBreaksOff
            \baca-lbsd #90 #'(18 26 21 21 26 21 21 21 21 26)
            s1 * 6/4

            % [Breaks measure 2]
            s1 * 5/4

            % [Breaks measure 3]
            s1 * 3/4

            % [anchor skip]
              %! ANCHOR_SKIP
            s1 * 1/4
              %! ANCHOR_SKIP
            \once \override Score.BarLine.transparent = ##t
              %! ANCHOR_SKIP
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Breaks

        \context GlobalSkips = "SpacingCommands"
        {   %*% SpacingCommands

            % [SpacingCommands measure 1]
            \baca-start-strict-spacing-section #1 #40
            s1 * 6/4

            % [SpacingCommands measure 2]
            \baca-start-strict-spacing-section #1 #40
            s1 * 5/4

            % [SpacingCommands measure 3]
            \baca-start-strict-spacing-section #1 #64
            s1 * 3/4

            % [anchor skip]
              %! ANCHOR_SKIP
            \baca-start-strict-spacing-section #1 #4
              %! ANCHOR_SKIP
            s1 * 1/4
              %! ANCHOR_SKIP
            \once \override Score.BarLine.transparent = ##t
              %! ANCHOR_SKIP
            \once \override Score.SpanBar.transparent = ##t

        }   %*% SpacingCommands

    >>

}
