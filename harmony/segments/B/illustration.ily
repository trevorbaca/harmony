B_Global_Skips = {                                                             %! abjad.Path.extern

    % [B Global_Skips measure 4 / measure 1]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \bar ""                                                                    %! baca.SegmentMaker._make_global_skips(4):+SEGMENT:EMPTY_START_BAR
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark:IndicatorCommand
    - \baca-rehearsal-mark-markup "B"                                          %! baca.rehearsal_mark:IndicatorCommand
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "4"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[B.1-5]"                                      %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'11'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 5 / measure 2]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "5"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'12'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 6 / measure 3]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "6"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'14'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 7 / measure 4]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "7"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'16'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 8 / measure 5]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "8"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'18'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 9 / measure 6]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "9"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[◀A.2]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1)   %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'20'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 10 / measure 7]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "10"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'23'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 11 / measure 8]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "11"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[B.6]"                                        %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'26'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 12 / measure 9]                                  %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "12"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'28'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 13 / measure 10]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "13"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'30'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 14 / measure 11]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "14"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'32'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [B Global_Skips measure 15 / measure 12]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "15"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-both-left-fermata "2''" "[0'36'']"                        %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME
    \baca-bar-line-visible                                                     %! baca.SegmentMaker._attach_final_bar_line()
    \bar "|"                                                                   %! baca.SegmentMaker._attach_final_bar_line()

    % [B Global_Skips measure 16 / measure 13]                                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):baca.SegmentMaker._comment_measure_numbers()
    \baca-time-signature-transparent                                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(2)
    s1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_skips(3)
    \bacaStopTextSpanLMN                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):SEGMENT_FINAL_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4)
%@% \bacaStopTextSpanCT                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):CLOCK_TIME
    \once \override Score.BarLine.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)

}                                                                              %! abjad.Path.extern


B_Global_Rests = {                                                             %! abjad.Path.extern

    % [B Global_Rests measure 4 / measure 1]                                   %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 5 / measure 2]                                   %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 6 / measure 3]                                   %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 7 / measure 4]                                   %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 8 / measure 5]                                   %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 9 / measure 6]                                   %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 10 / measure 7]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 11 / measure 8]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 12 / measure 9]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 13 / measure 10]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 14 / measure 11]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [B Global_Rests measure 15 / measure 12]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata:GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata:GlobalFermataCommand(1)

    % [B Global_Rests measure 16 / measure 13]                                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(4):baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_rests(2)

}                                                                              %! abjad.Path.extern


B_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern

    % [B Bass_Flute_Music_Voice measure 4 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-bfl-markup                            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = #5.5                          %! baca.dls_staff_padding:OverrideCommand(1)
    \clef "treble"                                                             %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''2.                                                                      %! harmony.flutter_initiated_cells()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    % [B Bass_Flute_Music_Voice measure 5 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''1                                                                       %! harmony.flutter_initiated_cells()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    % [B Bass_Flute_Music_Voice measure 6 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''2                                                                       %! harmony.flutter_initiated_cells()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    % [B Bass_Flute_Music_Voice measure 7 / measure 4]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''2                                                                       %! harmony.flutter_initiated_cells()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''2                                                                       %! harmony.flutter_initiated_cells()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    % [B Bass_Flute_Music_Voice measure 8 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''8                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c''2.                                                                      %! harmony.flutter_initiated_cells()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding:OverrideCommand(2)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Bass_Flute_Music_Voice measure 9 / measure 6]                 %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 5/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Bass_Flute_Rest_Voice measure 9 / measure 6]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Bass_Flute_Music_Voice measure 10 / measure 7]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Bass_Flute_Music_Voice measure 11 / measure 8]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Bass_Flute_Music_Voice measure 12 / measure 9]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Bass_Flute_Music_Voice measure 13 / measure 10]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Bass_Flute_Music_Voice measure 14 / measure 11]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Bass_Flute_Music_Voice measure 15 / measure 12]                       %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
    \override Staff.BarLine.bar-extent = #'(0 . 0)                             %! baca.SegmentMaker._style_fermata_measures(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Bass_Flute_Music_Voice measure 16 / measure 13]               %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Score.BarLine.transparent = ##t                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._style_fermata_measures(4):EOL_FERMATA:MEASURE_15
            \once \override Score.SpanBar.transparent = ##t                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._style_fermata_measures(4):EOL_FERMATA:MEASURE_15
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Bass_Flute_Rest_Voice measure 16 / measure 13]                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context
    \B_Global_Rests                                                            %! abjad.Path.extern

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__
    \B_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Percussion_I_Music_Voice_A = {                                               %! abjad.Path.extern

    r1                                                                         %! harmony.rest_appoggiato()

}                                                                              %! abjad.Path.extern


B_Percussion_I_Music_Voice_B = {                                               %! abjad.Path.extern

    r2.                                                                        %! harmony.rest_appoggiato()

    r2                                                                         %! harmony.rest_appoggiato()

}                                                                              %! abjad.Path.extern


B_Percussion_I_Music_Voice_C = {                                               %! abjad.Path.extern

    r1                                                                         %! harmony.rest_appoggiato()

}                                                                              %! abjad.Path.extern


B_Percussion_I_Music_Voice_D = {                                               %! abjad.Path.extern

    r2.                                                                        %! harmony.rest_appoggiato()

    r2                                                                         %! harmony.rest_appoggiato()

}                                                                              %! abjad.Path.extern


B_Percussion_I_Music_Voice_E = {                                               %! abjad.Path.extern

    r1                                                                         %! harmony.rest_appoggiato()

}                                                                              %! abjad.Path.extern


B_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Percussion_I_Music_Voice measure 4 / measure 1]               %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-perc-i-markup            %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.BarLine.bar-extent = #'(-2 . 1)                    %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \stopStaff                                                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.line-count = 3                   %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \startStaff                                                        %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \set Staff.instrumentName = \harmony-perc-i-markup                 %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "percussion"                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \slash
            \voiceOne
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <c'>8 * 2/5
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \f                                                                 %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                   %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Percussion”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            [
            (
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-perc-i-markup            %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_A                                          %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Percussion_I_Music_Voice measure 5 / measure 2]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <c'>8 * 2/5
            [
            (

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_B                                          %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Percussion_I_Music_Voice measure 6 / measure 3]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <c'>8 * 2/5
            [
            (

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_C                                          %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Percussion_I_Music_Voice measure 7 / measure 4]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <c'>8 * 2/5
            [
            (

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_D                                          %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Percussion_I_Music_Voice measure 8 / measure 5]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <c'>8 * 2/5
            [
            (

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_E                                          %! abjad.Path.extern

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_I_Music_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \once \override Staff.StaffSymbol.line-count = 1                   %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_I_Rest_Voice measure 9 / measure 6]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Percussion_I_Music_Voice measure 10 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 1)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 3                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_I_Music_Voice measure 11 / measure 8]                      %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_I_Music_Voice measure 12 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_I_Music_Voice measure 13 / measure 10]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_I_Music_Voice measure 14 / measure 11]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_I_Music_Voice measure 15 / measure 12]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_I_Music_Voice measure 16 / measure 13]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_I_Rest_Voice measure 16 / measure 13]              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \B_Percussion_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern

    % [B Percussion_II_Music_Voice measure 4 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    c'1                                                                        %! baca.make_repeat_tied_notes
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-tam-tam-markup                                                     %! baca.markup:IndicatorCommand
    \glissando                                                                 %! baca.glissando
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [B Percussion_II_Music_Voice measure 5 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando
    \override Accidental.stencil = ##f                                         %! baca.glissando
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando
    \override Dots.transparent = ##t                                           %! baca.glissando
    \override Stem.transparent = ##t                                           %! baca.glissando
    c'2.

    c'2

    % [B Percussion_II_Music_Voice measure 6 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    c'1                                                                        %! baca.make_repeat_tied_notes

    % [B Percussion_II_Music_Voice measure 7 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    c'2.

    c'2

    % [B Percussion_II_Music_Voice measure 8 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando
    \revert NoteColumn.glissando-skip                                          %! baca.glissando
    \revert NoteHead.no-ledgers                                                %! baca.glissando
    \undo \hide NoteHead                                                       %! baca.glissando
    \revert Dots.transparent                                                   %! baca.glissando
    \revert Stem.transparent                                                   %! baca.glissando
    c'1                                                                        %! baca.make_repeat_tied_notes
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_II_Music_Voice measure 9 / measure 6]              %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_II_Rest_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Percussion_II_Music_Voice measure 10 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 3                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_II_Music_Voice measure 11 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_II_Music_Voice measure 12 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_II_Music_Voice measure 13 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_II_Music_Voice measure 14 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Percussion_II_Music_Voice measure 15 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_II_Music_Voice measure 16 / measure 13]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Percussion_II_Rest_Voice measure 16 / measure 13]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \B_Percussion_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Harp_Music_Voice = {                                                         %! abjad.Path.extern

    % [B Harp_Music_Voice measure 4 / measure 1]                               %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = #4.5                          %! baca.dls_staff_padding:OverrideCommand(1)
    \clef "treble"                                                             %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-bisb-markup                                                        %! baca.markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    % [B Harp_Music_Voice measure 5 / measure 2]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    % [B Harp_Music_Voice measure 6 / measure 3]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    % [B Harp_Music_Voice measure 7 / measure 4]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    % [B Harp_Music_Voice measure 8 / measure 5]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.flutter_initiated_cells()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding:OverrideCommand(2)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Harp_Music_Voice measure 9 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Harp_Rest_Voice measure 9 / measure 6]                        %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Harp_Music_Voice measure 10 / measure 7]                              %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Harp_Music_Voice measure 11 / measure 8]                              %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Harp_Music_Voice measure 12 / measure 9]                              %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Harp_Music_Voice measure 13 / measure 10]                             %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Harp_Music_Voice measure 14 / measure 11]                             %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Harp_Music_Voice measure 15 / measure 12]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! baca.SegmentMaker._style_fermata_measures(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Harp_Music_Voice measure 16 / measure 13]                     %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Harp_Rest_Voice measure 16 / measure 13]                      %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Harp_Music_Staff = <<                                                        %! abjad.Path.extern

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__
    \B_Harp_Music_Voice                                                        %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Viola_Music_Voice_A = {                                                      %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Viola_Music_Voice_B = {                                                      %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.string_appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.string_appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Viola_Music_Voice_C = {                                                      %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Viola_Music_Voice_D = {                                                      %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'4

    % [B Viola_Music_Voice measure 7 / measure 4]                              %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Viola_Music_Voice_E = {                                                      %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Viola_Music_Voice_F = {                                                      %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Viola_Music_Voice = {                                                        %! abjad.Path.extern

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Viola_Music_Voice measure 4 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-va-markup                %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \once \override Staff.StaffSymbol.line-count = 5                   %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \set Staff.instrumentName = \harmony-va-markup                     %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \clef "alto"                                                       %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \slash
            \voiceOne
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            ^ \baca-reapplied-indicator-markup "[“Va.”]"                       %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Viola”)"                     %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            [
            (
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-va-markup                %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_A                                                 %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Viola_Music_Voice measure 5 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_B                                                 %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Viola_Music_Voice measure 6 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_C                                                 %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_D                                                 %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_E                                                 %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Viola_Music_Voice measure 8 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_F                                                 %! abjad.Path.extern

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Viola_Music_Voice measure 9 / measure 6]                      %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Viola_Rest_Voice measure 9 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Viola_Music_Voice measure 10 / measure 7]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand

    % [B Viola_Music_Voice measure 11 / measure 8]                             %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Viola_Music_Voice measure 12 / measure 9]                             %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Viola_Music_Voice measure 13 / measure 10]                            %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Viola_Music_Voice measure 14 / measure 11]                            %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Viola_Music_Voice measure 15 / measure 12]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Viola_Music_Voice measure 16 / measure 13]                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Viola_Rest_Voice measure 16 / measure 13]                     %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Viola_Music_Staff = <<                                                       %! abjad.Path.extern

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__
    \B_Viola_Music_Voice                                                       %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Cello_I_Music_Voice_A = {                                                    %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2.                                                                        %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Cello_I_Music_Voice_B = {                                                    %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d4

    % [B Cello_I_Music_Voice measure 6 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Cello_I_Music_Voice_C = {                                                    %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2

    % [B Cello_I_Music_Voice measure 7 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d4
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Cello_I_Music_Voice_D = {                                                    %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d1                                                                         %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Cello_I_Music_Voice_E = {                                                    %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d1                                                                         %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern

    % [B Cello_I_Music_Voice measure 4 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r1                                                                         %! harmony.string_appoggiato()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [B Cello_I_Music_Voice measure 5 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.string_appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_A                                               %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_B                                               %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_C                                               %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_D                                               %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Cello_I_Music_Voice measure 8 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_E                                               %! abjad.Path.extern

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_I_Music_Voice measure 9 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_I_Rest_Voice measure 9 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Cello_I_Music_Voice measure 10 / measure 7]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_I_Music_Voice measure 11 / measure 8]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_I_Music_Voice measure 12 / measure 9]                           %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_I_Music_Voice measure 13 / measure 10]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_I_Music_Voice measure 14 / measure 11]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_I_Music_Voice measure 15 / measure 12]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_I_Music_Voice measure 16 / measure 13]                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_I_Rest_Voice measure 16 / measure 13]                   %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__
    \B_Cello_I_Music_Voice                                                     %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Cello_II_Music_Voice_A = {                                                   %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2.                                                                        %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Cello_II_Music_Voice_B = {                                                   %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d1                                                                         %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Cello_II_Music_Voice_C = {                                                   %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d1                                                                         %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Cello_II_Music_Voice_D = {                                                   %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d4

    % [B Cello_II_Music_Voice measure 8 / measure 5]                           %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d1
    - \tweak direction #up
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern

    % [B Cello_II_Music_Voice measure 4 / measure 1]                           %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-vc-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r2.                                                                        %! harmony.string_appoggiato()
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.string_appoggiato()

    % [B Cello_II_Music_Voice measure 5 / measure 2]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.string_appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_A                                              %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Cello_II_Music_Voice measure 6 / measure 3]                   %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_B                                              %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [B Cello_II_Music_Voice measure 7 / measure 4]                   %! baca.SegmentMaker._comment_measure_numbers()
            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_C                                              %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_D                                              %! abjad.Path.extern

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_II_Music_Voice measure 9 / measure 6]                   %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_II_Rest_Voice measure 9 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Cello_II_Music_Voice measure 10 / measure 7]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_II_Music_Voice measure 11 / measure 8]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_II_Music_Voice measure 12 / measure 9]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_II_Music_Voice measure 13 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_II_Music_Voice measure 14 / measure 11]                         %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Cello_II_Music_Voice measure 15 / measure 12]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_II_Music_Voice measure 16 / measure 13]                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Cello_II_Rest_Voice measure 16 / measure 13]                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__
    \B_Cello_II_Music_Voice                                                    %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Contrabass_I_Music_Voice_A = {                                               %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2.

    % [B Contrabass_I_Music_Voice measure 7 / measure 4]                       %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d4
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Contrabass_I_Music_Voice_B = {                                               %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d1                                                                         %! harmony.string_appoggiato()

    % [B Contrabass_I_Music_Voice measure 8 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.string_appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Contrabass_I_Music_Voice_C = {                                               %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2.                                                                        %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern

    % [B Contrabass_I_Music_Voice measure 4 / measure 1]                       %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r2.                                                                        %! harmony.string_appoggiato()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.string_appoggiato()

    % [B Contrabass_I_Music_Voice measure 5 / measure 2]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.string_appoggiato()

    r2.                                                                        %! harmony.string_appoggiato()

    % [B Contrabass_I_Music_Voice measure 6 / measure 3]                       %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.string_appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
                d'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_A                                          %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
                d'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_B                                          %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
                d'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_C                                          %! abjad.Path.extern

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_I_Music_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 5/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_I_Rest_Voice measure 9 / measure 6]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Contrabass_I_Music_Voice measure 10 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_I_Music_Voice measure 11 / measure 8]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_I_Music_Voice measure 12 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_I_Music_Voice measure 13 / measure 10]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_I_Music_Voice measure 14 / measure 11]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_I_Music_Voice measure 15 / measure 12]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_I_Music_Voice measure 16 / measure 13]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_I_Rest_Voice measure 16 / measure 13]              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \B_Contrabass_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


B_Contrabass_II_Music_Voice_A = {                                              %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2

    % [B Contrabass_II_Music_Voice measure 8 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d4
    \repeatTie

}                                                                              %! abjad.Path.extern


B_Contrabass_II_Music_Voice_B = {                                              %! abjad.Path.extern

    \once \override NoteHead.style = #'harmonic                                %! baca.literal:IndicatorCommand
    \oneVoice
    \voiceTwo
    \baca-unpitched-music-warning                                              %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
    d2.                                                                        %! harmony.string_appoggiato()

}                                                                              %! abjad.Path.extern


B_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern

    % [B Contrabass_II_Music_Voice measure 4 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-cb-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r2.                                                                        %! harmony.string_appoggiato()
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.string_appoggiato()

    % [B Contrabass_II_Music_Voice measure 5 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.string_appoggiato()

    r2                                                                         %! harmony.string_appoggiato()

    % [B Contrabass_II_Music_Voice measure 6 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.string_appoggiato()

    r2                                                                         %! harmony.string_appoggiato()

    % [B Contrabass_II_Music_Voice measure 7 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.string_appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
                d'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_A                                         %! abjad.Path.extern

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
                d'
            >8 * 2/5
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5

            \once \override NoteHead.style = #'harmonic                        %! baca.literal:IndicatorCommand
            \baca-unpitched-music-warning                                      %! NOT_YET_PITCHED:baca.SegmentMaker._color_unpitched_notes()
            d8 * 2/5
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_B                                         %! abjad.Path.extern

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_II_Music_Voice measure 9 / measure 6]              %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 5/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_II_Rest_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [B Contrabass_II_Music_Voice measure 10 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_II_Music_Voice measure 11 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_II_Music_Voice measure 12 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_II_Music_Voice measure 13 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_II_Music_Voice measure 14 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [B Contrabass_II_Music_Voice measure 15 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! baca.SegmentMaker._style_fermata_measures(3)

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_II_Music_Voice measure 16 / measure 13]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [B Contrabass_II_Rest_Voice measure 16 / measure 13]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


B_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \B_Contrabass_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern
