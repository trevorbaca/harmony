ab_Global_Skips = {                                                            %! ide.Path.extern()

    % [28 Global_Skips measure 256 / measure 1]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 2/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \bar ""                                                                    %! EMPTY_START_BAR:+SEGMENT:baca.SegmentMaker._make_global_skips(4)
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():-PARTS:baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "BB" #10                                     %! baca.rehearsal_mark():-PARTS:baca.IndicatorCommand._call()
%%% - \tweak extra-offset #'(0 . 10)                                           %! baca.rehearsal_mark():+PARTS:baca.IndicatorCommand._call()
%%% - \baca-rehearsal-mark-markup "BB" #4                                      %! baca.rehearsal_mark():+PARTS:baca.IndicatorCommand._call()
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "256"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[BB.1-4]"                                     %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1)   %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(0.525 . 0.525) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"                        %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[13'56'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 257 / measure 2]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "257"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[13'58'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 258 / measure 3]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "258"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[14'01'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 259 / measure 4]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "259"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[14'03'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 260 / measure 5]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 6/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "260"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀Y.2]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(0.525 . 0.525) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
%@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"   %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[14'06'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 261 / measure 6]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(4 . -30)                                          %! baca.markup():-PARTS:baca.IndicatorCommand._call()
    ^ \harmony-text-twenty-seven                                               %! baca.markup():-PARTS:baca.IndicatorCommand._call()
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "261"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 262 / measure 7]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 7/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 7/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "262"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[BB.5-8]"                                     %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(0.525 . 0.525) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"                        %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[14'14'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 263 / measure 8]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 7/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "263"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[14'23'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 264 / measure 9]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 7/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "264"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[14'31'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 265 / measure 10]                               %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 7/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "265"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-both "[14'40'']" "[14'49'']"                              %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [28 Global_Skips measure 266 / measure 11]                               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(3):PHANTOM:baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._style_phantom_measures(1)
    \baca-time-signature-transparent                                           %! baca.SegmentMaker._style_phantom_measures(2):PHANTOM
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(3):PHANTOM
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \bacaStopTextSpanMM                                                        %! EOS_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \once \override Score.BarLine.transparent = ##t                            %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM
    \once \override Score.SpanBar.transparent = ##t                            %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Global_Rests = {                                                            %! ide.Path.extern()

    % [28 Global_Rests measure 256 / measure 1]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 257 / measure 2]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 258 / measure 3]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 259 / measure 4]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 260 / measure 5]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 261 / measure 6]                                %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [28 Global_Rests measure 262 / measure 7]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 7/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 263 / measure 8]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 7/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 264 / measure 9]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 7/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 265 / measure 10]                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 7/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [28 Global_Rests measure 266 / measure 11]                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(2):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Bass_Flute_Music_Voice = {                                                  %! ide.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Bass_Flute_Music_Voice measure 256 / measure 1]              %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-bfl-markup               %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-bfl-markup                    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \override DynamicLineSpanner.staff-padding = 4                     %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            \clef "treble"                                                     %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
        %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            b'1 * 1/2                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \ff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
        %@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                      %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                 %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
        %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-bfl-markup               %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Bass_Flute_Rest_Voice measure 256 / measure 1]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/2                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Bass_Flute_Music_Voice measure 257 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [28 Bass_Flute_Music_Voice measure 258 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [28 Bass_Flute_Music_Voice measure 259 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.warble()
    \times 12/14 {                                                             %! harmony.warble()

        % [28 Bass_Flute_Music_Voice measure 260 / measure 5]                  %! baca.SegmentMaker._comment_measure_numbers()
        r32                                                                    %! harmony.warble()
    %@% - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %@% - \baca-text-spanner-left-text "warble(sixteenths=[12, 12, 1, 11, 12], extra_counts=[4, 0, 0, 2, 0], rest_tuplets_cyclic=([1, 2, 4], 5))" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %@% - \tweak bound-details.right.padding 2.75                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %@% - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %@% - \tweak staff-padding 8                                               %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

        \override NoteHead.font-size = -3                                      %! baca.note_head_font_size():baca.OverrideCommand._call(1)
        \override Accidental.font-size = -3                                    %! baca.accidental_font_size():baca.OverrideCommand._call(1)
        \override Accidental.X-offset = 0                                      %! baca.accidental_x_offset():baca.OverrideCommand._call(1)
        \override Accidental.Y-offset = -2                                     %! baca.accidental_y_offset():baca.OverrideCommand._call(1)
        af'!32                                                                 %! harmony.warble()
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak circled-tip ##t                                               %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        \<                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        [                                                                      %! harmony.warble()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
        \startTrillSpan                                                        %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

        g'32                                                                   %! harmony.warble()

        gs'!32                                                                 %! harmony.warble()

        a'32                                                                   %! harmony.warble()

        as'!32                                                                 %! harmony.warble()

        b'32                                                                   %! harmony.warble()

        c''32                                                                  %! harmony.warble()

        cs''!32                                                                %! harmony.warble()

        c''32                                                                  %! harmony.warble()

        b'32                                                                   %! harmony.warble()

        bf'!32                                                                 %! harmony.warble()

        a'32                                                                   %! harmony.warble()

        af'!32                                                                 %! harmony.warble()
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \mp                                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t                                               %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        \>                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

        g'32                                                                   %! harmony.warble()

        gs'!32                                                                 %! harmony.warble()

        a'32                                                                   %! harmony.warble()

        as'!32                                                                 %! harmony.warble()

        b'32                                                                   %! harmony.warble()

        c''32                                                                  %! harmony.warble()

        cs''!32                                                                %! harmony.warble()

        c''32                                                                  %! harmony.warble()

        b'32                                                                   %! harmony.warble()

        bf'!32                                                                 %! harmony.warble()

        a'32                                                                   %! harmony.warble()

        af'!32                                                                 %! harmony.warble()

        g'32                                                                   %! harmony.warble()

        gs'!32                                                                 %! harmony.warble()
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        ]                                                                      %! harmony.warble()
        \revert NoteHead.font-size                                             %! baca.note_head_font_size():baca.OverrideCommand._call(2)
        \revert Accidental.font-size                                           %! baca.accidental_font_size():baca.OverrideCommand._call(2)
        \revert Accidental.X-offset                                            %! baca.accidental_x_offset():baca.OverrideCommand._call(2)
        \revert Accidental.Y-offset                                            %! baca.accidental_y_offset():baca.OverrideCommand._call(2)

    }                                                                          %! harmony.warble()

    r2.                                                                        %! harmony.warble()
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Bass_Flute_Music_Voice measure 261 / measure 6]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Bass_Flute_Rest_Voice measure 261 / measure 6]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Bass_Flute_Music_Voice measure 262 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    \once \override Score.BarLine.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_261:baca.SegmentMaker._style_fermata_measures(7)
    \once \override Score.SpanBar.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_261:baca.SegmentMaker._style_fermata_measures(7)
    a''1.. * 1/7                                                               %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4], written_double_dotted_wholes=([0], 7), invisible=([1, 2, 3, 4, 5, 6], 7), talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \tweak bound-details.right.padding 3                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Bass_Flute_Music_Voice measure 263 / measure 8]                      %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''1.. * 1/7                                                               %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Bass_Flute_Music_Voice measure 264 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''1.. * 1/7                                                               %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Bass_Flute_Music_Voice measure 265 / measure 10]                     %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    a''1.. * 1/7                                                               %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Bass_Flute_Music_Voice measure 266 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Bass_Flute_Rest_Voice measure 266 / measure 11]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Bass_Flute_Music_Staff = <<                                                 %! ide.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \ab_Global_Rests                                                           %! ide.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \ab_Bass_Flute_Music_Voice                                                 %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Percussion_I_Music_Voice = {                                                %! ide.Path.extern()

    % [28 Percussion_I_Music_Voice measure 256 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-i-markup                         %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    d'2 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-triangle-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4, 4, 8, 4, 4, 7, -1], fuse=True, do_not_rewrite_meter=True, written_halves=([0],), talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Percussion_I_Music_Voice measure 257 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    d'2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Percussion_I_Music_Voice measure 258 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Percussion_I_Music_Voice measure 259 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    d'4..                                                                      %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    r16                                                                        %! harmony.sixteenths()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Percussion_I_Music_Voice measure 260 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    c'16                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-f-sempre                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-brake-drum-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([1, -23, -1, 1, -22], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r8.                                                                        %! harmony.sixteenths()

    r1                                                                         %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Percussion_I_Music_Voice measure 261 / measure 6]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Percussion_I_Rest_Voice measure 261 / measure 6]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Percussion_I_Music_Voice measure 262 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    d'1.. * 1/7                                                                %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-triangle-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4], written_double_dotted_wholes=([0], 7), invisible=([1, 2, 3, 4, 5, 6], 7), talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Percussion_I_Music_Voice measure 263 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'1.. * 1/7                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Percussion_I_Music_Voice measure 264 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'1.. * 1/7                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Percussion_I_Music_Voice measure 265 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    d'1.. * 1/7                                                                %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"7"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Percussion_I_Music_Voice measure 266 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Percussion_I_Rest_Voice measure 266 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Percussion_I_Music_Staff = <<                                               %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \ab_Percussion_I_Music_Voice                                               %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Percussion_II_Music_Voice = {                                               %! ide.Path.extern()

    % [28 Percussion_II_Music_Voice measure 256 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_256:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_256:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    cs''!8                                                                     %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
%@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding 4                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-glockenspiel-markup                                                %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r8                                                                         %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [28 Percussion_II_Music_Voice measure 257 / measure 2]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    % [28 Percussion_II_Music_Voice measure 258 / measure 3]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    % [28 Percussion_II_Music_Voice measure 259 / measure 4]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Percussion_II_Music_Voice measure 260 / measure 5]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Stem.direction = #down                                     %! baca.stem_down():baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up                                    %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_260:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_260:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    d'8                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-slate-brush-markup                                                 %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, -22, -1, 2, -21], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r8                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    r1                                                                         %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    \revert TupletBracket.direction                                            %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Percussion_II_Music_Voice measure 261 / measure 6]           %! baca.SegmentMaker._comment_measure_numbers()
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

            % [28 Percussion_II_Rest_Voice measure 261 / measure 6]            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Percussion_II_Music_Voice measure 262 / measure 7]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_262:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_262:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r2.                                                                        %! harmony.sixteenths()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([-26, 2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r2                                                                         %! harmony.sixteenths()

    r4.                                                                        %! harmony.sixteenths()

    a'8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X 0.25                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-sempre                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \tweak self-alignment-X 0.25                                             %! baca.markup():baca.IndicatorCommand._call()
    - \tweak staff-padding 4                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-glockenspiel-markup                                                %! baca.markup():baca.IndicatorCommand._call()

    % [28 Percussion_II_Music_Voice measure 263 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    r2                                                                         %! harmony.sixteenths()

    r4.                                                                        %! harmony.sixteenths()

    a'8                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    % [28 Percussion_II_Music_Voice measure 264 / measure 9]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    r2                                                                         %! harmony.sixteenths()

    r4.                                                                        %! harmony.sixteenths()

    a'8                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    % [28 Percussion_II_Music_Voice measure 265 / measure 10]                  %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    r2                                                                         %! harmony.sixteenths()

    r4.                                                                        %! harmony.sixteenths()

    a'8                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Percussion_II_Music_Voice measure 266 / measure 11]          %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Percussion_II_Rest_Voice measure 266 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Percussion_II_Music_Staff = <<                                              %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \ab_Percussion_II_Music_Voice                                              %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Harp_Music_Voice = {                                                        %! ide.Path.extern()

    % [28 Harp_Music_Voice measure 256 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 6                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_256:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_256:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    a,,4                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
%@% ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r4                                                                         %! harmony.sixteenths()

    % [28 Harp_Music_Voice measure 257 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    % [28 Harp_Music_Voice measure 258 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    % [28 Harp_Music_Voice measure 259 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Harp_Music_Voice measure 260 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 3/2                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"2"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Harp_Rest_Voice measure 260 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/2                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"2"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Harp_Music_Voice measure 261 / measure 6]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

    % [28 Harp_Music_Voice measure 262 / measure 7]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    <e ff!>1..
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-sempre                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 5.5                                                 %! baca.markup():baca.IndicatorCommand._call()
    ^ \harmony-rh-bow-plus-lh-bow-markup                                       %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16)"   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "0 pul. / beat"                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    % [28 Harp_Music_Voice measure 263 / measure 8]                            %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    <e ff!>1..
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "6 pul. / beat"                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    % [28 Harp_Music_Voice measure 264 / measure 9]                            %! baca.SegmentMaker._comment_measure_numbers()
    <e ff!>1..
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "0 pul. / beat"                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    % [28 Harp_Music_Voice measure 265 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    <e ff!>1..
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "8 pul. / beat"                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-right-text "0 pul. / beat"                            %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 0.5                                   %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center                   %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Harp_Music_Voice measure 266 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \stopTextSpan                                                      %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Harp_Rest_Voice measure 266 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Harp_Music_Staff = <<                                                       %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \ab_Harp_Music_Voice                                                       %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Viola_Music_Voice = {                                                       %! ide.Path.extern()

    % [28 Viola_Music_Voice measure 256 / measure 1]                           %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-va-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "alto"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(2):HIDE_TO_JOIN_BROKEN_SPANNERS:LEFT_BROKEN
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(2):HIDE_TO_JOIN_BROKEN_SPANNERS:LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(2):HIDE_TO_JOIN_BROKEN_SPANNERS:LEFT_BROKEN
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(2):HIDE_TO_JOIN_BROKEN_SPANNERS:LEFT_BROKEN
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(2):HIDE_TO_JOIN_BROKEN_SPANNERS:LEFT_BROKEN
    gqf!2                                                                      %! baca.make_notes()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "make_notes()"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):LEFT_BROKEN:SPANNER_START
    - \baca-text-spanner-left-text "poc. scr."                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):LEFT_BROKEN:SPANNER_START
    - \tweak bound-details.right.padding 6                                     %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):LEFT_BROKEN:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):LEFT_BROKEN:SPANNER_START
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):LEFT_BROKEN:SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [28 Viola_Music_Voice measure 257 / measure 2]                           %! baca.SegmentMaker._comment_measure_numbers()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(3):HIDE_TO_JOIN_BROKEN_SPANNERS:LEFT_BROKEN
    gqf!2                                                                      %! baca.make_notes()

    % [28 Viola_Music_Voice measure 258 / measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
    gqf!2                                                                      %! baca.make_notes()

    % [28 Viola_Music_Voice measure 259 / measure 4]                           %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    gqf!2                                                                      %! baca.make_notes()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Viola_Music_Voice measure 260 / measure 5]                           %! baca.SegmentMaker._comment_measure_numbers()
    \once \override NoteHead.style = #'harmonic-black                          %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(1)
    <g' af'! bf'!>1.
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-quasi-bisb-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "tessera_4(4)"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Viola_Music_Voice measure 261 / measure 6]                   %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Viola_Rest_Voice measure 261 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Viola_Music_Voice measure 262 / measure 7]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    e1..                                                                       %! baca.make_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-p-sempre                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "make_notes()"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "poco scr."                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    % [28 Viola_Music_Voice measure 263 / measure 8]                           %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    e1..                                                                       %! baca.make_notes()

    % [28 Viola_Music_Voice measure 264 / measure 9]                           %! baca.SegmentMaker._comment_measure_numbers()
    e1..                                                                       %! baca.make_notes()

    % [28 Viola_Music_Voice measure 265 / measure 10]                          %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    e1..                                                                       %! baca.make_notes()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Viola_Music_Voice measure 266 / measure 11]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \bacaStopTextSpanBowSpeed                                          %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Viola_Rest_Voice measure 266 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Viola_Music_Staff = <<                                                      %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \ab_Viola_Music_Voice                                                      %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Cello_I_Music_Voice = {                                                     %! ide.Path.extern()

    % [28 Cello_I_Music_Voice measure 256 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    e'''2                                                                      %! harmony.sixteenths()
%@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-i-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([10, 6], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [28 Cello_I_Music_Voice measure 257 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    e'''8                                                                      %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'''!8                                                                    %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    cs'''4                                                                     %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [28 Cello_I_Music_Voice measure 258 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    e'''2                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [28 Cello_I_Music_Voice measure 259 / measure 4]                         %! baca.SegmentMaker._comment_measure_numbers()
    e'''8                                                                      %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'''!8                                                                    %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    cs'''4                                                                     %! harmony.sixteenths()
    \repeatTie
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Cello_I_Music_Voice measure 260 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    \override NoteHead.style = #'harmonic-black                                %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(1)
    <a' b' c''>4
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-quasi-bisb-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #constante-hairpin                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "tessera_4(3)"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \override NoteHead.transparent = ##t                                       %! baca.note_head_transparent():baca.OverrideCommand._call(1)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'8
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'8
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'2.

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'8
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \revert NoteHead.transparent                                               %! baca.note_head_transparent():baca.OverrideCommand._call(2)

    <a' b' c''>8
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Cello_I_Music_Voice measure 261 / measure 6]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Cello_I_Rest_Voice measure 261 / measure 6]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Cello_I_Music_Voice measure 262 / measure 7]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \pitchedTrill                                                              %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-i-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #})) %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan e'''                                                       %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Cello_I_Music_Voice measure 263 / measure 8]                         %! baca.SegmentMaker._comment_measure_numbers()
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Cello_I_Music_Voice measure 264 / measure 9]                         %! baca.SegmentMaker._comment_measure_numbers()
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Cello_I_Music_Voice measure 265 / measure 10]                        %! baca.SegmentMaker._comment_measure_numbers()
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'''!4 * 1/2                                                              %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Cello_I_Music_Voice measure 266 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Cello_I_Rest_Voice measure 266 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Cello_I_Music_Staff = <<                                                    %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \ab_Cello_I_Music_Voice                                                    %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Cello_II_Music_Voice = {                                                    %! ide.Path.extern()

    % [28 Cello_II_Music_Voice measure 256 / measure 1]                        %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    a''2                                                                       %! harmony.sixteenths()
%@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-i-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([10, 6], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [28 Cello_II_Music_Voice measure 257 / measure 2]                        %! baca.SegmentMaker._comment_measure_numbers()
    a''8                                                                       %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'''!8                                                                    %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    cs'''4                                                                     %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [28 Cello_II_Music_Voice measure 258 / measure 3]                        %! baca.SegmentMaker._comment_measure_numbers()
    a''2                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [28 Cello_II_Music_Voice measure 259 / measure 4]                        %! baca.SegmentMaker._comment_measure_numbers()
    a''8                                                                       %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'''!8                                                                    %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    cs'''4                                                                     %! harmony.sixteenths()
    \repeatTie
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Cello_II_Music_Voice measure 260 / measure 5]                        %! baca.SegmentMaker._comment_measure_numbers()
    \override NoteHead.style = #'harmonic-black                                %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(1)
    <g' af'! bf'!>8
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-quasi-bisb-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #constante-hairpin                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "tessera_4(2)"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \override NoteHead.transparent = ##t                                       %! baca.note_head_transparent():baca.OverrideCommand._call(1)
    c''8
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    c''8.
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    c''16
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #constante-hairpin                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    c''4

    c''8
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    c''8
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \revert NoteHead.transparent                                               %! baca.note_head_transparent():baca.OverrideCommand._call(2)

    <g' af'! bf'!>2
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Cello_II_Music_Voice measure 261 / measure 6]                %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Cello_II_Rest_Voice measure 261 / measure 6]                 %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Cello_II_Music_Voice measure 262 / measure 7]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \pitchedTrill                                                              %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-i-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #})) %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan cs'''                                                      %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Cello_II_Music_Voice measure 263 / measure 8]                        %! baca.SegmentMaker._comment_measure_numbers()
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Cello_II_Music_Voice measure 264 / measure 9]                        %! baca.SegmentMaker._comment_measure_numbers()
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Cello_II_Music_Voice measure 265 / measure 10]                       %! baca.SegmentMaker._comment_measure_numbers()
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    a''4 * 1/2                                                                 %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a''4 * 1/2                                                                 %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Cello_II_Music_Voice measure 266 / measure 11]               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Cello_II_Rest_Voice measure 266 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Cello_II_Music_Staff = <<                                                   %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \ab_Cello_II_Music_Voice                                                   %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Contrabass_I_Music_Voice = {                                                %! ide.Path.extern()

    % [28 Contrabass_I_Music_Voice measure 256 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_256:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_256:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    cs'!4                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-iii-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4, 4, -8], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    cs'!4                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Contrabass_I_Music_Voice measure 257 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP

    % [28 Contrabass_I_Music_Voice measure 258 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    cs'!4                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak bound-details.right.padding 2                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

    cs'!4                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)

    % [28 Contrabass_I_Music_Voice measure 259 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Contrabass_I_Music_Voice measure 260 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override NoteHead.style = #'harmonic-black                                %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(1)
    <a' b' c''>4
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-quasi-bisb-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #constante-hairpin                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "tessera_4(1)"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \override NoteHead.transparent = ##t                                       %! baca.note_head_transparent():baca.OverrideCommand._call(1)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'8.
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'16
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'8.
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'16
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \revert NoteHead.transparent                                               %! baca.note_head_transparent():baca.OverrideCommand._call(2)

    <a' b' c''>2
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Contrabass_I_Music_Voice measure 261 / measure 6]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Contrabass_I_Rest_Voice measure 261 / measure 6]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Contrabass_I_Music_Voice measure 262 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-iii-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Contrabass_I_Music_Voice measure 263 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Contrabass_I_Music_Voice measure 264 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [28 Contrabass_I_Music_Voice measure 265 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    cs'!4 * 1/2                                                                %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Contrabass_I_Music_Voice measure 266 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Contrabass_I_Rest_Voice measure 266 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Contrabass_I_Music_Staff = <<                                               %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \ab_Contrabass_I_Music_Voice                                               %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


ab_Contrabass_II_Music_Voice = {                                               %! ide.Path.extern()

    % [28 Contrabass_II_Music_Voice measure 256 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-cb-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    a,2                                                                        %! harmony.sixteenths()
%@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-iii-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([8, 8, 8, 6, 2], fuse=True, do_not_rewrite_meter=True, written_halves=([-2],), invisible=([-1],), talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "T4"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [28 Contrabass_II_Music_Voice measure 257 / measure 2]                   %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    a,2                                                                        %! harmony.sixteenths()

    % [28 Contrabass_II_Music_Voice measure 258 / measure 3]                   %! baca.SegmentMaker._comment_measure_numbers()
    a,2                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "P1"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-right-text "T4"                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 0.5                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    % [28 Contrabass_II_Music_Voice measure 259 / measure 4]                   %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    a,2 * 3/4                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ff                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    a,8                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(3):SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [28 Contrabass_II_Music_Voice measure 260 / measure 5]                   %! baca.SegmentMaker._comment_measure_numbers()
    \override NoteHead.style = #'harmonic-black                                %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_260:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_260:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    <g' af'! bf'!>2.
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-quasi-bisb-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #constante-hairpin                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "tessera_4(0)"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \override NoteHead.transparent = ##t                                       %! baca.note_head_transparent():baca.OverrideCommand._call(1)
    c''8
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    c''8
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \revert NoteHead.transparent                                               %! baca.note_head_transparent():baca.OverrideCommand._call(2)

    <g' af'! bf'!>2
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic_black():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [28 Contrabass_II_Music_Voice measure 261 / measure 6]           %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [28 Contrabass_II_Rest_Voice measure 261 / measure 6]            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [28 Contrabass_II_Music_Voice measure 262 / measure 7]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_262:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_262:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    a,4                                                                        %! harmony.sixteenths()
    - \tweak padding 1                                                         %! baca.markup():baca.IndicatorCommand._call()
    _ \baca-string-iii-markup                                                  %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "T4+"                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "O"                                         %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "T2"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    % [28 Contrabass_II_Music_Voice measure 263 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "P1"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "T1"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "P3"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    % [28 Contrabass_II_Music_Voice measure 264 / measure 9]                   %! baca.SegmentMaker._comment_measure_numbers()
    a,4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ff                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "O"                                         %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "P1"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "O"                                         %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    % [28 Contrabass_II_Music_Voice measure 265 / measure 10]                  %! baca.SegmentMaker._comment_measure_numbers()
    a,4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-ff-parenthesized                                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \bacaStopTextSpanSCP                                                       %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_STOP
    - \abjad-solid-line-with-arrow                                             %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \baca-text-spanner-left-text "P1"                                        %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \baca-text-spanner-right-text "T4+"                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:AUTODETECT:SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()

    a,4                                                                        %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [28 Contrabass_II_Music_Voice measure 266 / measure 11]          %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \revert Accidental.stencil                                         %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert NoteColumn.glissando-skip                                  %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert NoteHead.no-ledgers                                        %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \undo \hide NoteHead                                               %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            a,1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(3):RIGHT_BROKEN:SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \!                                                                 %! baca.hairpin():baca.PiecewiseCommand._call(1):RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [28 Contrabass_II_Rest_Voice measure 266 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! ide.Path.extern()


ab_Contrabass_II_Music_Staff = <<                                              %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \ab_Global_Rests                                                           %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \ab_Contrabass_II_Music_Voice                                              %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()