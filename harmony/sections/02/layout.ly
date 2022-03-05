% first_page_number = 2
% page_count = 2
% measure_count = 12 + 1
% time_signatures = [
% '4/4', '5/4', '4/4', '5/4', '4/4', '5/4', '3/4', '5/4', '5/4', '5/4', '5/4',
%  '1/4'
%  ]


%! baca.make_configuration_empty_score()
\context Score = "Score"
%! baca.make_configuration_empty_score()
<<

    %! baca.make_global_context()
    \context GlobalContext = "Global_Context"
    %! baca.make_global_context()
    <<

        %! baca.make_global_context()
        \context PageLayout = "Page_Layout"
        %! baca.make_global_context()
        {   %*% Page.Layout

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 1]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(1)
            \autoPageBreaksOff
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! BREAK
            %! baca.IndicatorCommand._call()
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            %! BREAK
            %! baca.IndicatorCommand._call()
            \pageBreak
            %! baca._make_global_skips(1)
            s1 * 1
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 2]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 3]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 1
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 4]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 5]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 1
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 6]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #35 #960
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[[1/40 * 35/24]]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 7]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! BREAK
            %! baca.IndicatorCommand._call()
            \baca-lbsd #40 #'(18 32 26 26 32 26 26 26 26 32)
            %! BREAK
            %! baca.IndicatorCommand._call()
            \pageBreak
            %! baca._make_global_skips(1)
            s1 * 3/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 8]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 9]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 10]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 11]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #40
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 5/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/40]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            % [Page_Layout measure 12]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            \baca-new-spacing-section #1 #288
            %! BREAK
            %! baca._apply_breaks(2)
            \noBreak
            %! baca._make_global_skips(1)
            s1 * 1/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %@% \bacaStopTextSpanSPM
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% - \baca-start-spm-left-only "[1/288]"
            %! SPACING
            %! baca.SpacingSpecifier.__call__(2)
            %@% \bacaStartTextSpanSPM

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(1)
            %! PHANTOM
            % [Page_Layout measure 13]
            %! SPACING_COMMAND
            %! baca.SpacingSpecifier.__call__(1)
            %! baca._style_phantom_measures(1)
            %! PHANTOM
            \baca-new-spacing-section #1 #4
            %! BREAK
            %! baca._apply_breaks(2)
            %! baca._style_phantom_measures(1)
            %! PHANTOM
            \noBreak
            %! baca._style_phantom_measures(2)
            %! PHANTOM
            \baca-time-signature-transparent
            %! baca._make_global_skips(3)
            %! PHANTOM
            s1 * 1/4
            %! SPACING
            %! baca.SpacingSpecifier.__call__(3)
            %! baca._style_phantom_measures(1)
            %! PHANTOM
            %@% \bacaStopTextSpanSPM
            %! baca._style_phantom_measures(3)
            %! PHANTOM
            \once \override Score.BarLine.transparent = ##t
            %! baca._style_phantom_measures(3)
            %! PHANTOM
            \once \override Score.SpanBar.transparent = ##t

        %! baca.make_global_context()
        }   %*% Page.Layout

    %! baca.make_global_context()
    >>

%! baca.make_configuration_empty_score()
>>
