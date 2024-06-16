\version "2.25.16"

% page_count = 68
% measure_count = 268
% time_signatures = [
% '6/4', '5/4', '3/4', '4/4', '5/4', '4/4', '5/4', '4/4', '5/4', '3/4', '5/4',
%  '5/4', '5/4', '5/4', '1/4', '3/4', '3/4', '1/4', '5/4', '1/4', '5/4', '4/4',
%  '3/4', '3/4', '3/4', '3/4', '3/4', '3/4', '3/4', '1/4', '3/4', '5/4', '1/4',
%  '3/4', '5/4', '3/4', '3/4', '6/4', '6/4', '5/4', '1/4', '4/4', '4/4', '4/4',
%  '5/4', '4/4', '3/4', '1/4', '5/4', '4/4', '5/4', '4/4', '5/4', '4/4', '4/4',
%  '3/4', '1/4', '4/4', '4/4', '5/4', '6/4', '4/4', '3/4', '4/4', '3/4', '4/4',
%  '3/4', '4/4', '1/4', '3/4', '3/4', '6/4', '6/4', '6/4', '4/4', '6/4', '6/4',
%  '6/4', '6/4', '6/4', '6/4', '1/4', '6/4', '6/4', '6/4', '6/4', '6/4', '6/4',
%  '3/4', '4/4', '1/4', '4/4', '4/4', '6/4', '3/4', '3/4', '1/4', '4/4', '3/4',
%  '5/4', '3/4', '5/4', '3/4', '5/4', '3/4', '5/4', '1/4', '6/4', '3/4', '4/4',
%  '3/4', '3/4', '4/4', '5/4', '1/4', '6/4', '6/4', '3/4', '1/4', '4/4', '4/4',
%  '1/4', '4/4', '5/4', '4/4', '4/4', '4/4', '4/4', '1/4', '3/4', '4/4', '4/4',
%  '3/4', '3/4', '3/4', '3/4', '3/4', '3/4', '3/4', '2/4', '3/4', '3/4', '3/4',
%  '3/4', '3/4', '3/4', '1/4', '3/4', '3/4', '3/4', '6/4', '4/4', '1/4', '3/4',
%  '5/4', '1/4', '4/4', '3/4', '4/4', '3/4', '3/4', '6/4', '1/4', '4/4', '3/4',
%  '4/4', '3/4', '4/4', '4/4', '1/4', '5/4', '4/4', '5/4', '4/4', '5/4', '4/4',
%  '1/4', '4/4', '5/4', '4/4', '4/4', '3/4', '4/4', '4/4', '4/4', '4/4', '4/4',
%  '4/4', '4/4', '4/4', '6/4', '4/4', '1/4', '6/4', '5/4', '3/4', '3/4', '3/4',
%  '4/4', '3/4', '3/4', '3/4', '3/4', '3/4', '3/4', '1/4', '3/4', '4/4', '5/4',
%  '6/4', '1/4', '5/4', '5/4', '6/4', '3/4', '4/4', '4/4', '4/4', '4/4', '3/4',
%  '4/4', '4/4', '4/4', '4/4', '5/4', '7/4', '6/4', '5/4', '1/4', '6/4', '6/4',
%  '6/4', '6/4', '6/4', '6/4', '1/4', '4/4', '4/4', '1/4', '6/4', '4/4', '4/4',
%  '4/4', '5/4', '6/4', '4/4', '7/4', '1/4', '5/4', '7/4', '6/4', '6/4', '2/4',
%  '1/4', '7/4', '2/4', '2/4', '2/4', '2/4', '6/4', '1/4', '7/4', '7/4', '7/4',
%  '7/4', '6/4', '6/4', '1/4'
%  ]


\context Score = "Score"
<<

    \context GlobalContext = "GlobalContext"
    {

        \context PageLayout = "PageLayout"
        {   %*% PageLayout

            % [PageLayout measure 1]
              %! BREAK
            \autoPageBreaksOff
              %! BREAK
            \baca-lbsd #90 #'(22 28 25 25 28 25 25 25 25 28)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 2]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 3]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 4]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 5]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 6]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 7]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 8]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
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
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 10]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 11]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 12]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 13]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 14]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 15]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 16]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 17]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 18]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 19]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #16
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/16]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 20]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 21]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 22]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 23]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 24]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 25]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 26]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 27]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 28]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 29]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 30]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #4
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/4]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 31]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 32]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 33]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #96
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/4 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 34]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 35]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 36]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 37]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 38]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 39]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 40]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #16
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/16]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 41]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 42]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #16
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/16]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 43]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #16
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/16]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 44]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #384
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/16 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 45]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #36
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/36]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 46]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #36
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/36]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 47]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #36
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/36]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 48]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 49]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 50]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 51]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 52]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 53]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 54]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 55]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 56]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 57]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 58]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 59]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 60]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 61]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 62]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 63]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 64]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 65]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 66]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 67]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 68]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 69]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 70]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 71]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 72]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 73]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 74]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 75]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 76]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 77]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 78]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 79]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 80]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 81]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 82]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 83]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 84]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 85]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 86]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 87]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 88]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 89]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 90]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 91]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 92]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 93]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 94]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 95]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 96]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 97]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 98]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 99]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 100]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 101]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 102]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 103]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 104]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 105]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 106]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 107]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 108]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 109]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 110]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 111]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 112]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 113]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 114]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 115]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 116]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 117]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 118]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 119]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 120]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #768
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/32 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 121]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 122]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 123]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 124]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #576
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/24 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 125]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 126]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 127]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 128]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 129]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 130]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 131]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 132]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 133]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 134]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 135]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 136]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 137]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 138]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 139]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 140]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 2/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 141]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 142]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 143]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 144]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 145]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 146]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 147]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #4
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/4]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 148]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 149]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 150]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 151]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 152]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 153]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #96
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/4 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 154]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 155]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 156]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 157]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 158]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 159]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 160]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 161]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 162]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 163]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 164]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #576
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/24 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 165]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 166]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 167]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 168]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 169]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 170]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 171]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 172]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #576
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/24 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 173]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 174]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 175]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 176]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 177]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 178]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 179]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 180]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 181]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 182]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 183]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 184]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 185]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 186]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 187]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 188]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 189]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 190]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 191]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 192]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 193]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 194]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 195]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 196]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 197]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 198]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 199]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 200]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 201]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 202]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 203]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 204]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 205]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \pageBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 206]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 207]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #32
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/32]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 208]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #768
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/32 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 209]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 210]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 211]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #4
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/4]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 212]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 213]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 214]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 215]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 216]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 217]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 218]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 219]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 220]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 3/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 221]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 222]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 223]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 224]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 225]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 226]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 227]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 228]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 229]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 230]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 231]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #480
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 232]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 233]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 234]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 235]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 236]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 237]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #12
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/12]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 238]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #12
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/12]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 239]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 240]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 241]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 242]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 243]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 244]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 245]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 246]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 4/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 247]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #20
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/20]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 248]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #3168
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/132 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 249]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 5/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 250]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 251]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 252]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 253]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 2/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 254]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 255]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #288
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/12 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 256]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #56
              %! BREAK
            \pageBreak
            s1 * 2/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/56]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 257]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #56
              %! BREAK
            \noBreak
            s1 * 2/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/56]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 258]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #56
              %! BREAK
            \noBreak
            s1 * 2/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/56]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 259]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #1344
              %! BREAK
            \noBreak
            s1 * 2/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/56 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 260]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 261]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #172
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/172]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 262]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #576
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/24 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 263]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \pageBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 264]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #40
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/40]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 265]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #960
              %! BREAK
            \noBreak
            s1 * 7/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 266]
              %! BREAK
            \baca-lbsd #32 #'(20 34 31 31 34 31 31 31 31 34)
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \pageBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 267]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #1 #24
              %! BREAK
            \noBreak
            s1 * 6/4
              %! SPACING
            %@% \bacaStopTextSpanSPM
              %! SPACING
            %@% - \baca-start-spm-left-only "[1/24]"
              %! SPACING
            %@% \bacaStartTextSpanSPM

            % [PageLayout measure 268]
              %! SPACING_COMMAND
            \baca-new-strict-spacing-section #35 #4128
              %! BREAK
            \noBreak
            s1 * 1/4
              %! SPACING
            %@% \bacaStopTextSpanSPM

        }   %*% PageLayout

    }

>>
