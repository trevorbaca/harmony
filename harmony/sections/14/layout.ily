\version "2.25.16"


\context Score = "Score"
<<

    \context GlobalContext = "GlobalContext"
    <<

        \context PageLayout = "PageLayout"
        {   %*% PageLayout

            % [PageLayout measure 1]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 2]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 3]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #288
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/288]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 4]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 5]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 6]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 7]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 8]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 9]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 10]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #288
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/288]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 11]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [anchor skip]
              %! ANCHOR_SKIP
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #4
              %! ANCHOR_SKIP
            \baca-time-signature-transparent
              %! ANCHOR_SKIP
            s1 * 1/4
              %! ANCHOR_SKIP
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! ANCHOR_SKIP
            \once \override Score.BarLine.transparent = ##t
              %! ANCHOR_SKIP
            \once \override Score.SpanBar.transparent = ##t

        }   %*% PageLayout

        \context GlobalSkips = "Breaks"
        {

            % [Breaks measure 1]
              %! BREAK
            \autoPageBreaksOff
              %! BREAK
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
              %! BREAK
            \pageBreak
            s1 * 4/4

            % [Breaks measure 2]
              %! BREAK
            \noBreak
            s1 * 4/4

            % [Breaks measure 3]
              %! BREAK
            \noBreak
            s1 * 1/4

            % [Breaks measure 4]
              %! BREAK
            \noBreak
            s1 * 4/4

            % [Breaks measure 5]
              %! BREAK
            \noBreak
            s1 * 5/4

            % [Breaks measure 6]
              %! BREAK
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
              %! BREAK
            \pageBreak
            s1 * 4/4

            % [Breaks measure 7]
              %! BREAK
            \noBreak
            s1 * 4/4

            % [Breaks measure 8]
              %! BREAK
            \noBreak
            s1 * 4/4

            % [Breaks measure 9]
              %! BREAK
            \noBreak
            s1 * 4/4

            % [Breaks measure 10]
              %! BREAK
            \noBreak
            s1 * 1/4

            % [Breaks measure 11]
              %! BREAK
            \noBreak
            s1 * 3/4

            % [anchor skip]
              %! BREAK
            \noBreak
              %! ANCHOR_SKIP
            s1 * 1/4

        }

    >>

>>
