B_Global_Skips = {                                                             %! abjad.Path.extern()

    % [B Global_Skips measure 4 / measure 1]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \bar ""                                                                    %! EMPTY_START_BAR:+SEGMENT:baca.SegmentMaker._make_global_skips(4)
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "B"                                          %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "4"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[B.1-5]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'11'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 5 / measure 2]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "5"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'12'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 6 / measure 3]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "6"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'14'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 7 / measure 4]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "7"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'16'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 8 / measure 5]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "8"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'18'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 9 / measure 6]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "9"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀A.2]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1)   %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'20'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 10 / measure 7]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "10"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'23'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 11 / measure 8]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "11"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[B.6]"                                        %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'26'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 12 / measure 9]                                  %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "12"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'28'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 13 / measure 10]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "13"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'30'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 14 / measure 11]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "14"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[0'32'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 15 / measure 12]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "15"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-both-left-fermata "2''" "[0'36'']"                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [B Global_Skips measure 16 / measure 13]                                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \baca-time-signature-transparent                                           %! baca.SegmentMaker._style_phantom_measures(2):PHANTOM
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(3):PHANTOM
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \bacaStopTextSpanMM                                                        %! EOS_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \once \override Score.BarLine.transparent = ##t                            %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM
    \once \override Score.SpanBar.transparent = ##t                            %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Global_Rests = {                                                             %! abjad.Path.extern()

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
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [B Global_Rests measure 16 / measure 13]                                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(4):PHANTOM
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(2):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern()

    % [B Bass_Flute_Music_Voice measure 4 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-bfl-markup                            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = #5.5                          %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "sixteenths([2, 2, 12, 2, 2, 16, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 12], written_quarters=([0, 1], 3), invisible=([1], 3), tie=([2], 3))" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Bass_Flute_Music_Voice measure 5 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'1                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Bass_Flute_Music_Voice measure 6 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [B Bass_Flute_Music_Voice measure 7 / measure 4]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Bass_Flute_Music_Voice measure 8 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Bass_Flute_Music_Voice measure 9 / measure 6]                 %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Bass_Flute_Rest_Voice measure 9 / measure 6]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Bass_Flute_Music_Voice measure 10 / measure 7]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [B Bass_Flute_Music_Voice measure 11 / measure 8]                        %! baca.SegmentMaker._comment_measure_numbers()
    \override DynamicLineSpanner.staff-padding = #5.5                          %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "sixteenths([2, 2, 16], written_quarters=([0, 1], 3), invisible=([1], 3), tie=([2], 3))" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'1                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Bass_Flute_Music_Voice measure 12 / measure 9]                        %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'1                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Bass_Flute_Music_Voice measure 13 / measure 10]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'1                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Bass_Flute_Music_Voice measure 14 / measure 11]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'1                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Bass_Flute_Music_Voice measure 15 / measure 12]               %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Bass_Flute_Rest_Voice measure 15 / measure 12]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Bass_Flute_Music_Voice measure 16 / measure 13]               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \once \override Score.BarLine.transparent = ##t                    %! FERMATA_MEASURE:MEASURE_15:baca.SegmentMaker._style_fermata_measures(7):baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.SpanBar.transparent = ##t                    %! FERMATA_MEASURE:MEASURE_15:baca.SegmentMaker._style_fermata_measures(7):baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Bass_Flute_Rest_Voice measure 16 / measure 13]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \B_Global_Rests                                                            %! abjad.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \B_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Percussion_I_Music_Voice_A = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[4], rest_all=True)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_B = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()

    r4                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_C = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_D = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()

    r4                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_E = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_F = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[7], rest_all=True)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    r4                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_G = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()

    r4                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_H = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()

    r4                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice_I = {                                               %! abjad.Path.extern()

    r1                                                                         %! harmony.appoggiato()

    r4                                                                         %! harmony.appoggiato()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 4 / measure 1]               %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-perc-i-markup            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \override Staff.BarLine.bar-extent = #'(-2 . 1)                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-perc-i-markup                 %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "percussion"                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <c'>8 * 2/5
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \f                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                   %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Percussion”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-perc-i-markup            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_A                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 5 / measure 2]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_B                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 6 / measure 3]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_C                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 7 / measure 4]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_D                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 8 / measure 5]               %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_E                                          %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Percussion_I_Music_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Percussion_I_Rest_Voice measure 9 / measure 6]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Percussion_I_Music_Voice measure 10 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 1)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 11 / measure 8]              %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_F                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 12 / measure 9]              %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_G                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 13 / measure 10]             %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_H                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Percussion_I_Music_Voice measure 14 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <c'>8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \B_Percussion_I_Music_Voice_I                                          %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Percussion_I_Music_Voice measure 15 / measure 12]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Percussion_I_Rest_Voice measure 15 / measure 12]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Percussion_I_Music_Voice measure 16 / measure 13]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Percussion_I_Rest_Voice measure 16 / measure 13]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \B_Percussion_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [B Percussion_II_Music_Voice measure 4 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    c'1                                                                        %! baca.make_repeat_tied_notes()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "make_repeat_tied_notes()"                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [B Percussion_II_Music_Voice measure 5 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    c'2.

    c'2

    % [B Percussion_II_Music_Voice measure 6 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    c'1                                                                        %! baca.make_repeat_tied_notes()

    % [B Percussion_II_Music_Voice measure 7 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    c'2.

    c'2

    % [B Percussion_II_Music_Voice measure 8 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    c'1                                                                        %! baca.make_repeat_tied_notes()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Percussion_II_Music_Voice measure 9 / measure 6]              %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Percussion_II_Rest_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Percussion_II_Music_Voice measure 10 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [B Percussion_II_Music_Voice measure 11 / measure 8]                 %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1                       %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \startStaff                                                            %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \override Stem.direction = #down                                       %! baca.stem_down():baca.OverrideCommand._call(1)
        \override TupletBracket.direction = #up                                %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)           %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
        c'1
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \tweak color #(x11-color 'DeepPink1)                                 %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \p                                                                     %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
        - \tweak staff-padding #5.5                                            %! baca.markup():baca.IndicatorCommand._call()
        ^ \baca-tam-tam-markup                                                 %! baca.markup():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        - \baca-text-spanner-left-text "tuplet([(1,)], force_augmentation=True)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        \glissando                                                             %! baca.glissando():abjad.glissando(7)
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }

    % [B Percussion_II_Music_Voice measure 12 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    c'2.
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "make_notes()"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    c'2

    % [B Percussion_II_Music_Voice measure 13 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'2.

    c'2
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [B Percussion_II_Music_Voice measure 14 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers()
        \revert Accidental.stencil                                             %! baca.glissando():abjad.glissando(6)
        \revert NoteColumn.glissando-skip                                      %! baca.glissando():abjad.glissando(6)
        \revert NoteHead.no-ledgers                                            %! baca.glissando():abjad.glissando(6)
        \undo \hide NoteHead                                                   %! baca.glissando():abjad.glissando(6)
        \revert Dots.transparent                                               %! baca.glissando():abjad.glissando(6)
        \revert Stem.transparent                                               %! baca.glissando():abjad.glissando(6)
        c'1
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        - \baca-text-spanner-left-text "tuplet([(1,)], force_augmentation=True)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
        \revert Stem.direction                                                 %! baca.stem_down():baca.OverrideCommand._call(2)
        \revert TupletBracket.direction                                        %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Percussion_II_Music_Voice measure 15 / measure 12]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Percussion_II_Rest_Voice measure 15 / measure 12]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Percussion_II_Music_Voice measure 16 / measure 13]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Percussion_II_Rest_Voice measure 16 / measure 13]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \B_Percussion_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Harp_Music_Voice = {                                                         %! abjad.Path.extern()

    % [B Harp_Music_Voice measure 4 / measure 1]                               %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = #4.5                          %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-bisb-markup                                                        %! baca.markup():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "sixteenths([2, 2, 12, 2, 2, 16, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 12], written_quarters=([0, 1], 3), invisible=([1], 3), tie=([2], 3))" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2.                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Harp_Music_Voice measure 5 / measure 2]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Harp_Music_Voice measure 6 / measure 3]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [B Harp_Music_Voice measure 7 / measure 4]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Harp_Music_Voice measure 8 / measure 5]                               %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2.                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie                                                                 %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Harp_Music_Voice measure 9 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Harp_Rest_Voice measure 9 / measure 6]                        %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Harp_Music_Voice measure 10 / measure 7]                              %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [B Harp_Music_Voice measure 11 / measure 8]                              %! baca.SegmentMaker._comment_measure_numbers()
    \override DynamicLineSpanner.staff-padding = #4.5                          %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding #5.5                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-bisb-markup                                                        %! baca.markup():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "sixteenths([2, 2, 16], written_quarters=([0, 1], 3), invisible=([1], 3), tie=([2], 3))" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Harp_Music_Voice measure 12 / measure 9]                              %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Harp_Music_Voice measure 13 / measure 10]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()

    % [B Harp_Music_Voice measure 14 / measure 11]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak direction #up                                                     %! harmony.sixteenths()
    \repeatTie                                                                 %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Harp_Music_Voice measure 15 / measure 12]                     %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Harp_Rest_Voice measure 15 / measure 12]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Harp_Music_Voice measure 16 / measure 13]                     %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Harp_Rest_Voice measure 16 / measure 13]                      %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Harp_Music_Staff = <<                                                        %! abjad.Path.extern()

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \B_Harp_Music_Voice                                                        %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Viola_Music_Voice_A = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(divisions=[16, 20, 12, 12, 12, 16], counts=[2, 3, 4, 5, 6, 7])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_B = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_C = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2.                                                                       %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_D = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4

    % [B Viola_Music_Voice measure 7 / measure 4]                              %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_E = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2.                                                                       %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_F = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_G = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[7])"                    %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_H = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_I = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice_J = {                                                      %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Voice = {                                                        %! abjad.Path.extern()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 4 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-va-markup                %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \set Staff.instrumentName = \harmony-va-markup                     %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \clef "percussion"                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \sfp                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Va.”]"                       %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Viola”)"                     %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-va-markup                %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_A                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 5 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_B                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 6 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_C                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_D                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_E                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 8 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_F                                                 %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Viola_Music_Voice measure 9 / measure 6]                      %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Viola_Rest_Voice measure 9 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Viola_Music_Voice measure 10 / measure 7]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 11 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_G                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 12 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_H                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 13 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_I                                                 %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Viola_Music_Voice measure 14 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Viola_Music_Voice"
        \B_Viola_Music_Voice_J                                                 %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Viola_Music_Voice measure 15 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Viola_Rest_Voice measure 15 / measure 12]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Viola_Music_Voice measure 16 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Viola_Rest_Voice measure 16 / measure 13]                     %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Viola_Music_Staff = <<                                                       %! abjad.Path.extern()

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \B_Viola_Music_Voice                                                       %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Cello_I_Music_Voice_A = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2.                                                                       %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_B = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4

    % [B Cello_I_Music_Voice measure 6 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_C = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2

    % [B Cello_I_Music_Voice measure 7 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_D = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_E = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_F = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[7])"                    %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_G = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_H = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice_I = {                                                    %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern()

    % [B Cello_I_Music_Voice measure 4 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r1                                                                         %! harmony.appoggiato()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \sfp                                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(divisions=[20, 12, 12, 12, 16, 16], counts=[3, 4, 5, 6, 7], rest_to=1)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [B Cello_I_Music_Voice measure 5 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_A                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_B                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_C                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_D                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_I_Music_Voice measure 8 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_E                                               %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Cello_I_Music_Voice measure 9 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Cello_I_Rest_Voice measure 9 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Cello_I_Music_Voice measure 10 / measure 7]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_I_Music_Voice measure 11 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_F                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_I_Music_Voice measure 12 / measure 9]                   %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_G                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_I_Music_Voice measure 13 / measure 10]                  %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_H                                               %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_I_Music_Voice measure 14 / measure 11]                  %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_I_Music_Voice"
        \B_Cello_I_Music_Voice_I                                               %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Cello_I_Music_Voice measure 15 / measure 12]                  %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Cello_I_Rest_Voice measure 15 / measure 12]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Cello_I_Music_Voice measure 16 / measure 13]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Cello_I_Rest_Voice measure 16 / measure 13]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern()

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \B_Cello_I_Music_Voice                                                     %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Cello_II_Music_Voice_A = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2.                                                                        %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_B = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_C = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_D = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4

    % [B Cello_II_Music_Voice measure 8 / measure 5]                           %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1
    - \tweak direction #up
    \repeatTie
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_E = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[7])"                    %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_F = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_G = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice_H = {                                                   %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern()

    % [B Cello_II_Music_Voice measure 4 / measure 1]                           %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    r2.                                                                        %! harmony.appoggiato()
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(divisions=[12, 12, 12, 16, 16, 20], counts=[4, 5, 6, 7], rest_to=2)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r4                                                                         %! harmony.appoggiato()

    % [B Cello_II_Music_Voice measure 5 / measure 2]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_A                                              %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_II_Music_Voice measure 6 / measure 3]                   %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_B                                              %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_II_Music_Voice measure 7 / measure 4]                   %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_C                                              %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_D                                              %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Cello_II_Music_Voice measure 9 / measure 6]                   %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            d1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Cello_II_Rest_Voice measure 9 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Cello_II_Music_Voice measure 10 / measure 7]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_II_Music_Voice measure 11 / measure 8]                  %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_E                                              %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_II_Music_Voice measure 12 / measure 9]                  %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_F                                              %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_II_Music_Voice measure 13 / measure 10]                 %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_G                                              %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Cello_II_Music_Voice measure 14 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Cello_II_Music_Voice"
        \B_Cello_II_Music_Voice_H                                              %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Cello_II_Music_Voice measure 15 / measure 12]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Cello_II_Rest_Voice measure 15 / measure 12]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Cello_II_Music_Voice measure 16 / measure 13]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Cello_II_Rest_Voice measure 16 / measure 13]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern()

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \B_Cello_II_Music_Voice                                                    %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_A = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2.

    % [B Contrabass_I_Music_Voice measure 7 / measure 4]                       %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_B = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    % [B Contrabass_I_Music_Voice measure 8 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_C = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'2.                                                                       %! harmony.appoggiato()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_D = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[7])"                    %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_E = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_F = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice_G = {                                               %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'1                                                                        %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    c'4                                                                        %! harmony.appoggiato()
    \repeatTie
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [B Contrabass_I_Music_Voice measure 4 / measure 1]                       %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r2.                                                                        %! harmony.appoggiato()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \sfp                                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(divisions=[12, 12, 16, 16, 20, 12], counts=[5, 6, 7], rest_to=3)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r4                                                                         %! harmony.appoggiato()

    % [B Contrabass_I_Music_Voice measure 5 / measure 2]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.appoggiato()

    r2.                                                                        %! harmony.appoggiato()

    % [B Contrabass_I_Music_Voice measure 6 / measure 3]                       %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_A                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_B                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_C                                          %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Contrabass_I_Music_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Contrabass_I_Rest_Voice measure 9 / measure 6]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Contrabass_I_Music_Voice measure 10 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_I_Music_Voice measure 11 / measure 8]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_D                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_I_Music_Voice measure 12 / measure 9]              %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_E                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_I_Music_Voice measure 13 / measure 10]             %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_F                                          %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_I_Music_Voice measure 14 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                c'
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            c'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \B_Contrabass_I_Music_Voice_G                                          %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Contrabass_I_Music_Voice measure 15 / measure 12]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Contrabass_I_Rest_Voice measure 15 / measure 12]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Contrabass_I_Music_Voice measure 16 / measure 13]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Contrabass_I_Rest_Voice measure 16 / measure 13]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \B_Contrabass_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


B_Contrabass_II_Music_Voice_A = {                                              %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2

    % [B Contrabass_II_Music_Voice measure 8 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Voice_B = {                                              %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d2.                                                                        %! harmony.appoggiato()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Voice_C = {                                              %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(counts=[7])"                    %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Voice_D = {                                              %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Voice_E = {                                              %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Voice_F = {                                              %! abjad.Path.extern()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d1                                                                         %! harmony.appoggiato()

    \once \override NoteHead.style = #'harmonic                                %! baca.literal():baca.IndicatorCommand._call()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4                                                                         %! harmony.appoggiato()
    \repeatTie
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [B Contrabass_II_Music_Voice measure 4 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-cb-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    r2.                                                                        %! harmony.appoggiato()
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \baca-text-spanner-left-text "appoggiato(divisions=[12, 16, 16, 20, 12, 12], counts=[6, 7], rest_to=4)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r4                                                                         %! harmony.appoggiato()

    % [B Contrabass_II_Music_Voice measure 5 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.appoggiato()

    r2                                                                         %! harmony.appoggiato()

    % [B Contrabass_II_Music_Voice measure 6 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.appoggiato()

    r2                                                                         %! harmony.appoggiato()

    % [B Contrabass_II_Music_Voice measure 7 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_A                                         %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_B                                         %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Contrabass_II_Music_Voice measure 9 / measure 6]              %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            d1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Contrabass_II_Rest_Voice measure 9 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [B Contrabass_II_Music_Voice measure 10 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_II_Music_Voice measure 11 / measure 8]             %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_C                                         %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_II_Music_Voice measure 12 / measure 9]             %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_D                                         %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_II_Music_Voice measure 13 / measure 10]            %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_E                                         %! abjad.Path.extern()

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            % [B Contrabass_II_Music_Voice measure 14 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers()
            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            <
                \tweak font-size #0
                \tweak transparent ##t
                d
            >8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            \once \override NoteHead.style = #'harmonic                        %! baca.literal():baca.IndicatorCommand._call()
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
            d8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Contrabass_II_Music_Voice"
        \B_Contrabass_II_Music_Voice_F                                         %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [B Contrabass_II_Music_Voice measure 15 / measure 12]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \oneVoice                                                          %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [B Contrabass_II_Rest_Voice measure 15 / measure 12]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [B Contrabass_II_Music_Voice measure 16 / measure 13]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:MULTIMEASURE_REST:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [B Contrabass_II_Rest_Voice measure 16 / measure 13]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


B_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \B_Contrabass_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()
