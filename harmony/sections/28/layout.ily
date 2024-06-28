\version "2.25.16"


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
            s1 * 2/4

            % [Breaks measure 2]
            s1 * 2/4

            % [Breaks measure 3]
            s1 * 2/4

            % [Breaks measure 4]
            s1 * 2/4

            % [Breaks measure 5]
            s1 * 6/4

            % [Breaks measure 6]
            s1 * 1/4

            % [Breaks measure 7]
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            \pageBreak
            s1 * 7/4

            % [Breaks measure 8]
            s1 * 7/4

            % [Breaks measure 9]
            s1 * 7/4

            % [Breaks measure 10]
            s1 * 7/4

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
            \baca-new-strict-spacing-section #1 #40
            s1 * 2/4

            % [SpacingCommands measure 2]
            \baca-new-strict-spacing-section #1 #40
            s1 * 2/4

            % [SpacingCommands measure 3]
            \baca-new-strict-spacing-section #1 #40
            s1 * 2/4

            % [SpacingCommands measure 4]
            \baca-new-strict-spacing-section #1 #40
            s1 * 2/4

            % [SpacingCommands measure 5]
            \baca-new-strict-spacing-section #1 #40
            s1 * 6/4

            % [SpacingCommands measure 6]
            \baca-new-strict-spacing-section #35 #6912
            s1 * 1/4

            % [SpacingCommands measure 7]
            \baca-new-strict-spacing-section #1 #40
            s1 * 7/4

            % [SpacingCommands measure 8]
            \baca-new-strict-spacing-section #1 #40
            s1 * 7/4

            % [SpacingCommands measure 9]
            \baca-new-strict-spacing-section #1 #40
            s1 * 7/4

            % [SpacingCommands measure 10]
            \baca-new-strict-spacing-section #1 #40
            s1 * 7/4

            % [anchor skip]
              %! ANCHOR_SKIP
            \baca-new-strict-spacing-section #1 #4
              %! ANCHOR_SKIP
            s1 * 1/4
              %! ANCHOR_SKIP
            \once \override Score.BarLine.transparent = ##t
              %! ANCHOR_SKIP
            \once \override Score.SpanBar.transparent = ##t

        }   %*% SpacingCommands

    >>

}
