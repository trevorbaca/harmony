P_Global_Skips = {                                                             %! abjad.Path.extern()

    % [P Global_Skips measure 141 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \bar ""                                                                    %! baca.SegmentMaker._make_global_skips(4):+SEGMENT:EMPTY_START_BAR
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "P"                                          %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "141"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[P.1-6]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! REAPPLIED_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(2):baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"                        %! REAPPLIED_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(2):baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! REAPPLIED_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(2):baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! REAPPLIED_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'green4       %! REAPPLIED_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! REAPPLIED_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[7'28'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 142 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "142"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'29'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 143 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "143"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'31'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 144 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "144"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'33'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 145 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "145"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'35'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 146 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "146"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'37'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 147 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "147"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 148 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 2/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "148"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀O.4]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \baca-start-ct-left-only "[7'41'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 149 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "149"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[P.7-8]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \baca-start-ct-left-only "[7'42'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 150 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "150"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-both "[7'44'']" "[7'46'']"                                %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    \baca-bar-line-visible                                                     %! baca.SegmentMaker._attach_final_bar_line()
    \bar "|"                                                                   %! baca.SegmentMaker._attach_final_bar_line()

    % [P Global_Skips measure 151 / measure 11]                                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(3)
    \baca-time-signature-transparent                                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(2)
    s1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_skips(3)
    \bacaStopTextSpanLMN                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):SEGMENT_FINAL_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4)
%@% \bacaStopTextSpanCT                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    \once \override Score.BarLine.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)

}                                                                              %! abjad.Path.extern()


P_Global_Rests = {                                                             %! abjad.Path.extern()

    % [P Global_Rests measure 141 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 142 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 143 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 144 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 145 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 146 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 147 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():GlobalFermataCommand(1)

    % [P Global_Rests measure 148 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 149 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 150 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 151 / measure 11]                                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(4):baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_rests(2)

}                                                                              %! abjad.Path.extern()


P_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern()

    % [P Bass_Flute_Music_Voice measure 141 / measure 1]                       %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-bfl-markup                            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "treble"                                                             %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'8.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-p-sempre                                                             %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'2                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    % [P Bass_Flute_Music_Voice measure 142 / measure 2]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'4                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    % [P Bass_Flute_Music_Voice measure 143 / measure 3]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'8.                                                                       %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'4                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    r4                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    % [P Bass_Flute_Music_Voice measure 144 / measure 4]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Bass_Flute_Music_Voice measure 145 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'2.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    % [P Bass_Flute_Music_Voice measure 146 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'4                                                                        %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'4                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #3.25                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Bass_Flute_Music_Voice measure 147 / measure 7]               %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \stopTextSpan                                                      %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Bass_Flute_Rest_Voice measure 147 / measure 7]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Bass_Flute_Music_Voice measure 148 / measure 8]                       %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
%%% \once \override Score.BarLine.transparent = ##t                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE:MEASURE_147
%%% \once \override Score.SpanBar.transparent = ##t                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE:MEASURE_147
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Bass_Flute_Music_Voice measure 149 / measure 9]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'2                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    % [P Bass_Flute_Music_Voice measure 150 / measure 10]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    b'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! SPANNER_STOP:baca.text_spanner():PiecewiseCommand(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Bass_Flute_Music_Voice measure 151 / measure 11]              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Bass_Flute_Rest_Voice measure 151 / measure 11]               %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \P_Global_Rests                                                            %! abjad.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \P_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [P Percussion_I_Music_Voice measure 141 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-perc-i-markup                         %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.dynamic():baca.IndicatorCommand._call()
    ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-brake-drum-paper-towel-markup                                      %! baca.markup():baca.IndicatorCommand._call()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [P Percussion_I_Music_Voice measure 142 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie

    % [P Percussion_I_Music_Voice measure 143 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie

    % [P Percussion_I_Music_Voice measure 144 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \repeatTie

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [P Percussion_I_Music_Voice measure 145 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()

    % [P Percussion_I_Music_Voice measure 146 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_I_Music_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_I_Rest_Voice measure 147 / measure 7]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Percussion_I_Music_Voice measure 148 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Percussion_I_Music_Voice measure 149 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    c'2.                                                                       %! harmony.sixteenths()
    ^ \baca-brake-drum-paper-towel-markup                                      %! baca.markup():baca.IndicatorCommand._call()

    % [P Percussion_I_Music_Voice measure 150 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'2                                                                        %! harmony.sixteenths()
    \repeatTie

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_I_Music_Voice measure 151 / measure 11]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_I_Rest_Voice measure 151 / measure 11]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \P_Percussion_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [P Percussion_II_Music_Voice measure 141 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! MEASURE_141:SHIFTED_CLEF:baca.clef_shift():baca.clef_x_extent_false():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! MEASURE_141:SHIFTED_CLEF:baca.clef_extra_offset():baca.clef_shift():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! EXPLICIT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! EXPLICIT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    d2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! EXPLICIT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [P Percussion_II_Music_Voice measure 142 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    % [P Percussion_II_Music_Voice measure 143 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    d16                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ~

    % [P Percussion_II_Music_Voice measure 144 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    d2.                                                                        %! harmony.sixteenths()

    % [P Percussion_II_Music_Voice measure 145 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    d16                                                                        %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    % [P Percussion_II_Music_Voice measure 146 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_II_Music_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_II_Rest_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Percussion_II_Music_Voice measure 148 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 3                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Percussion_II_Music_Voice measure 149 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    d2.                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()

    % [P Percussion_II_Music_Voice measure 150 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    d16                                                                        %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_II_Music_Voice measure 151 / measure 11]           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Percussion_II_Rest_Voice measure 151 / measure 11]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \P_Percussion_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Harp_Music_Voice = {                                                         %! abjad.Path.extern()

    % [P Harp_Music_Voice measure 141 / measure 1]                             %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
%%% \once \override Staff.Clef.X-extent = ##f                                  %! MEASURE_141:SHIFTED_CLEF:baca.clef_shift():baca.clef_x_extent_false():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! MEASURE_141:SHIFTED_CLEF:baca.clef_extra_offset():baca.clef_shift():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! EXPLICIT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! EXPLICIT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.clef():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! EXPLICIT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [P Harp_Music_Voice measure 142 / measure 2]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    % [P Harp_Music_Voice measure 143 / measure 3]                             %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d16                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ~

    % [P Harp_Music_Voice measure 144 / measure 4]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2.                                                                        %! harmony.sixteenths()

    % [P Harp_Music_Voice measure 145 / measure 5]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    % [P Harp_Music_Voice measure 146 / measure 6]                             %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Harp_Music_Voice measure 147 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Harp_Rest_Voice measure 147 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Harp_Music_Voice measure 148 / measure 8]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Harp_Music_Voice measure 149 / measure 9]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2.                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    % [P Harp_Music_Voice measure 150 / measure 10]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Harp_Music_Voice measure 151 / measure 11]                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Harp_Rest_Voice measure 151 / measure 11]                     %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Harp_Music_Staff = <<                                                        %! abjad.Path.extern()

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \P_Harp_Music_Voice                                                        %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Viola_Music_Voice = {                                                        %! abjad.Path.extern()

    % [P Viola_Music_Voice measure 141 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-va-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "alto"                                                               %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    a8                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-p-sempre                                                             %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    a2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        ]

    }


    % [P Viola_Music_Voice measure 142 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    e'4                                                                        %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 143 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    e'8.                                                                       %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    e'4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 144 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 145 / measure 5]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    a2.                                                                        %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 146 / measure 6]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    a4                                                                         %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    e'4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        ]

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Viola_Music_Voice measure 147 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Viola_Rest_Voice measure 147 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Viola_Music_Voice measure 148 / measure 8]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Viola_Music_Voice measure 149 / measure 9]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    a8                                                                         %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    a2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        ]

    }


    % [P Viola_Music_Voice measure 150 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    e'8.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        a8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Viola_Music_Voice measure 151 / measure 11]                   %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Viola_Rest_Voice measure 151 / measure 11]                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Viola_Music_Staff = <<                                                       %! abjad.Path.extern()

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \P_Viola_Music_Voice                                                       %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern()

    % [P Cello_I_Music_Voice measure 141 / measure 1]                          %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_I_Music_Voice measure 142 / measure 2]                          %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_I_Music_Voice measure 143 / measure 3]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    % [P Cello_I_Music_Voice measure 144 / measure 4]                          %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Cello_I_Music_Voice measure 145 / measure 5]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_I_Music_Voice measure 146 / measure 6]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #3.25                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_I_Music_Voice measure 147 / measure 7]                  %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \bacaStopTextSpanDamp                                              %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_I_Rest_Voice measure 147 / measure 7]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Cello_I_Music_Voice measure 148 / measure 8]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Cello_I_Music_Voice measure 149 / measure 9]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_I_Music_Voice measure 150 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_I_Music_Voice measure 151 / measure 11]                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_I_Rest_Voice measure 151 / measure 11]                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern()

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \P_Cello_I_Music_Voice                                                     %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern()

    % [P Cello_II_Music_Voice measure 141 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-vc-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_II_Music_Voice measure 142 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_II_Music_Voice measure 143 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    % [P Cello_II_Music_Voice measure 144 / measure 4]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Cello_II_Music_Voice measure 145 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_II_Music_Voice measure 146 / measure 6]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #3.25                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_II_Music_Voice measure 147 / measure 7]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \bacaStopTextSpanDamp                                              %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_II_Rest_Voice measure 147 / measure 7]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Cello_II_Music_Voice measure 148 / measure 8]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Cello_II_Music_Voice measure 149 / measure 9]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [P Cello_II_Music_Voice measure 150 / measure 10]                        %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #3                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_II_Music_Voice measure 151 / measure 11]                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Cello_II_Rest_Voice measure 151 / measure 11]                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern()

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \P_Cello_II_Music_Voice                                                    %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [P Contrabass_I_Music_Voice measure 141 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,2                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    % [P Contrabass_I_Music_Voice measure 142 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,4                                                                        %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 143 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f4                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 144 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 145 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,2.                                                                       %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 146 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_I_Music_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_I_Rest_Voice measure 147 / measure 7]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Contrabass_I_Music_Voice measure 148 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Contrabass_I_Music_Voice measure 149 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,8                                                                        %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,2                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    % [P Contrabass_I_Music_Voice measure 150 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_I_Music_Voice measure 151 / measure 11]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_I_Rest_Voice measure 151 / measure 11]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \P_Contrabass_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [P Contrabass_II_Music_Voice measure 141 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-cb-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! REAPPLIED_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REDRAWN_REAPPLIED_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    % [P Contrabass_II_Music_Voice measure 142 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,4                                                                        %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 143 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f4                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 144 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 145 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    f2.                                                                        %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 146 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f4                                                                         %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_II_Music_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_II_Rest_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [P Contrabass_II_Music_Voice measure 148 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    % [P Contrabass_II_Music_Voice measure 149 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    b,8                                                                        %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    f2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        ]

    }


    % [P Contrabass_II_Music_Voice measure 150 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! MOCK:baca.SegmentMaker._color_mock_pitch()
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_II_Music_Voice measure 151 / measure 11]           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM_NOTE:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [P Contrabass_II_Rest_Voice measure 151 / measure 11]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


P_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \P_Contrabass_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()
