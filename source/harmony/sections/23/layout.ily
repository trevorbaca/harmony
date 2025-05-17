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
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            s1 * 5/4

            % [Breaks measure 2]
            s1 * 6/4

            % [Breaks measure 3]
            s1 * 1/4

            % [Breaks measure 4]
            s1 * 5/4

            % [Breaks measure 5]
            s1 * 5/4

            % [Breaks measure 6]
            s1 * 6/4

            % [Breaks measure 7]
            s1 * 3/4

            % [Breaks measure 8]
            s1 * 4/4

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
            s1 * 5/4

            % [SpacingCommands measure 2]
            \baca-start-strict-spacing-section #1 #40
            s1 * 6/4

            % [SpacingCommands measure 3]
            \baca-start-strict-spacing-section #1 #4
            s1 * 1/4

            % [SpacingCommands measure 4]
            \baca-start-strict-spacing-section #1 #40
            s1 * 5/4

            % [SpacingCommands measure 5]
            \baca-start-strict-spacing-section #1 #40
            s1 * 5/4

            % [SpacingCommands measure 6]
            \baca-start-strict-spacing-section #1 #40
            s1 * 6/4

            % [SpacingCommands measure 7]
            \baca-start-strict-spacing-section #1 #40
            s1 * 3/4

            % [SpacingCommands measure 8]
            \baca-start-strict-spacing-section #1 #40
            s1 * 4/4

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
