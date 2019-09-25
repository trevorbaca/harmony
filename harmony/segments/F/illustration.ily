F_Global_Skips = {                                                             %! abjad.Path.extern()

    % [F Global_Skips measure 40 / measure 1]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \bar ""                                                                    %! EMPTY_START_BAR:+SEGMENT:baca.SegmentMaker._make_global_skips(4)
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "F"                                          %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "40"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[F.1]"                                        %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1)   %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[1'48'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 41 / measure 2]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "41"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 42 / measure 3]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "42"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[▶G.1]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[1'56'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 43 / measure 4]                                  %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "43"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[F.2]"                                        %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[2'00'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 44 / measure 5]                                  %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "44"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[▶G.1]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[2'05'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 45 / measure 6]                                  %! baca.SegmentMaker._comment_measure_numbers()
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
%@% - \baca-start-mn-left-only "45"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[F.3-4]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[2'09'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 46 / measure 7]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "46"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[2'15'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 47 / measure 8]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "47"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀C.4]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[2'20'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 48 / measure 9]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "48"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 49 / measure 10]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "49"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[F.5-6]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[2'25'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 50 / measure 11]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "50"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[2'32'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 51 / measure 12]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "51"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[2'37'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 52 / measure 13]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "13"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "52"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[2'43'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 53 / measure 14]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "14"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "53"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[2'48'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [F Global_Skips measure 54 / measure 15]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "15"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "54"                                            %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-both "[2'54'']" "[2'59'']"                                %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    \baca-bar-line-visible                                                     %! baca.SegmentMaker._attach_final_bar_line()
    \bar "|"                                                                   %! baca.SegmentMaker._attach_final_bar_line()

    % [F Global_Skips measure 55 / measure 16]                                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(3):PHANTOM:baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._style_phantom_measures(1)
    \baca-time-signature-transparent                                           %! baca.SegmentMaker._style_phantom_measures(2):PHANTOM
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(3):PHANTOM
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \bacaStopTextSpanMM                                                        %! SEGMENT_FINAL_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    \once \override Score.BarLine.transparent = ##t                            %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM
    \once \override Score.SpanBar.transparent = ##t                            %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Global_Rests = {                                                             %! abjad.Path.extern()

    % [F Global_Rests measure 40 / measure 1]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 41 / measure 2]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [F Global_Rests measure 42 / measure 3]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 43 / measure 4]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 44 / measure 5]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 45 / measure 6]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 46 / measure 7]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 47 / measure 8]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 48 / measure 9]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [F Global_Rests measure 49 / measure 10]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 50 / measure 11]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 51 / measure 12]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 52 / measure 13]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 53 / measure 14]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 54 / measure 15]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [F Global_Rests measure 55 / measure 16]                                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(4):PHANTOM
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(2):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern()

    % [F Bass_Flute_Music_Voice measure 40 / measure 1]                        %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-bfl-markup                            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "treble"                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    R1 * 5/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-f-ancora                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-duration-multiplier-markup #"5" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [F Bass_Flute_Music_Voice measure 41 / measure 2]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(0 . 0)                             %! baca.SegmentMaker._style_fermata_measures(3)

    % [F Bass_Flute_Music_Voice measure 42 / measure 3]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
%%% \once \override Score.BarLine.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_41:baca.SegmentMaker._style_fermata_measures(4)
%%% \once \override Score.SpanBar.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_41:baca.SegmentMaker._style_fermata_measures(4)
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 43 / measure 4]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 44 / measure 5]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 45 / measure 6]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"5" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 46 / measure 7]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 47 / measure 8]                        %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 48 / measure 9]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(0 . 0)                             %! baca.SegmentMaker._style_fermata_measures(3)

    % [F Bass_Flute_Music_Voice measure 49 / measure 10]                       %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    \once \override Score.BarLine.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_48:baca.SegmentMaker._style_fermata_measures(4)
    \once \override Score.SpanBar.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_48:baca.SegmentMaker._style_fermata_measures(4)
    R1 * 5/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"5" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 50 / measure 11]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 51 / measure 12]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"5" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 52 / measure 13]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 53 / measure 14]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"5" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Bass_Flute_Music_Voice measure 54 / measure 15]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 4/4                                                                   %! baca.SegmentMaker._call_rhythm_commands()
%@% ^ \baca-duration-multiplier-markup #"4" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Bass_Flute_Music_Voice measure 55 / measure 16]               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_MULTIMEASURE_REST:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_MULTIMEASURE_REST:baca.SegmentMaker._style_phantom_measures(5)
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Bass_Flute_Rest_Voice measure 55 / measure 16]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \F_Global_Rests                                                            %! abjad.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \F_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [F Percussion_I_Music_Voice measure 40 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-i-markup                         %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    r1                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r8.                                                                        %! harmony.sixteenths()

    \once \override Stem.direction = #down                                     %! baca.stem_down():baca.OverrideCommand._call(1)
    b16                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()
    ^ \baca-bd-struck-markup                                                   %! baca.markup():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_I_Music_Voice measure 41 / measure 2]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_I_Rest_Voice measure 41 / measure 2]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_I_Music_Voice measure 42 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 1)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Percussion_I_Music_Voice measure 43 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r8.                                                                        %! harmony.sixteenths()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT

    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    b16                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-bd-struck-markup                                                   %! baca.markup():baca.IndicatorCommand._call()
    ~

    b4                                                                         %! harmony.sixteenths()

    b16                                                                        %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_I_Music_Voice measure 44 / measure 5]              %! baca.SegmentMaker._comment_measure_numbers()
            \override Staff.BarLine.bar-extent = #'(-2 . 1)                    %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c'1 * 1                                                            %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_I_Rest_Voice measure 44 / measure 5]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1                                                             %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_I_Music_Voice measure 45 / measure 6]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r1                                                                         %! harmony.sixteenths()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT

    r8.                                                                        %! harmony.sixteenths()

    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    b16                                                                        %! harmony.sixteenths()
    ^ \baca-bd-superball-markup                                                %! baca.markup():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~

    % [F Percussion_I_Music_Voice measure 46 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    b16                                                                        %! harmony.sixteenths()
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    r2.                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_I_Music_Voice measure 47 / measure 8]              %! baca.SegmentMaker._comment_measure_numbers()
            \override Staff.BarLine.bar-extent = #'(-2 . 1)                    %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_I_Rest_Voice measure 47 / measure 8]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_I_Music_Voice measure 48 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(3)

    % [F Percussion_I_Music_Voice measure 49 / measure 10]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Stem.direction = #down                                     %! baca.stem_down():baca.OverrideCommand._call(1)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    b8                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    r8                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    r1                                                                         %! harmony.sixteenths()

    % [F Percussion_I_Music_Voice measure 50 / measure 11]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r16                                                                        %! harmony.sixteenths()

    \once \override Stem.direction = #down                                     %! baca.stem_down():baca.OverrideCommand._call(1)
    b8.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    r4                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_I_Music_Voice measure 51 / measure 12]             %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_I_Rest_Voice measure 51 / measure 12]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_I_Music_Voice measure 52 / measure 13]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Percussion_I_Music_Voice measure 53 / measure 14]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"5" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Percussion_I_Music_Voice measure 54 / measure 15]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()

    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    b8                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(1):baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    b4                                                                         %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Percussion_I_Music_Voice measure 55 / measure 16]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \ff                                                                %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Percussion_I_Rest_Voice measure 55 / measure 16]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \F_Percussion_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [F Percussion_II_Music_Voice measure 40 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    r2                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r8                                                                         %! harmony.sixteenths()

    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    c'8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    c'4                                                                        %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r4                                                                         %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_II_Music_Voice measure 41 / measure 2]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_II_Rest_Voice measure 41 / measure 2]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_II_Music_Voice measure 42 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Percussion_II_Music_Voice measure 43 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    c'2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_II_Music_Voice measure 44 / measure 5]             %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1                                                            %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_II_Rest_Voice measure 44 / measure 5]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1                                                             %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_II_Music_Voice measure 45 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    c'16                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-brake-drum-markup                                                  %! baca.markup():baca.IndicatorCommand._call()

    % [F Percussion_II_Music_Voice measure 46 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_II_Music_Voice measure 47 / measure 8]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_II_Rest_Voice measure 47 / measure 8]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_II_Music_Voice measure 48 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Percussion_II_Music_Voice measure 49 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    c'16                                                                       %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r1                                                                         %! harmony.sixteenths()

    % [F Percussion_II_Music_Voice measure 50 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()

    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    c'8                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Percussion_II_Music_Voice measure 51 / measure 12]            %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
            - \baca-damp                                                       %! baca.articulation():baca.IndicatorCommand._call()
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Percussion_II_Rest_Voice measure 51 / measure 12]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"5" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Percussion_II_Music_Voice measure 52 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Percussion_II_Music_Voice measure 53 / measure 14]                    %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.sixteenths()

    r16                                                                        %! harmony.sixteenths()

    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    c'8.                                                                       %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    % [F Percussion_II_Music_Voice measure 54 / measure 15]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r8                                                                         %! harmony.sixteenths()

    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    c'8                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \laissezVibrer                                                           %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Percussion_II_Music_Voice measure 55 / measure 16]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Percussion_II_Rest_Voice measure 55 / measure 16]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \F_Percussion_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Harp_Music_Voice = {                                                         %! abjad.Path.extern()

    % [F Harp_Music_Voice measure 40 / measure 1]                              %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_40:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_40:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    r2                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r8                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Harp_Music_Voice measure 41 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Harp_Rest_Voice measure 41 / measure 2]                       %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Harp_Music_Voice measure 42 / measure 3]                              %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_42:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_42:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    % [F Harp_Music_Voice measure 43 / measure 4]                              %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_43:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_43:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,16                                                                       %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Harp_Music_Voice measure 44 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.Clef.X-extent = ##f                          %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_44:baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)             %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_44:baca.OverrideCommand._call(1)
            \clef "percussion"                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.Clef.color = #(x11-color 'blue)              %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c'1 * 1                                                            %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)            %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Harp_Rest_Voice measure 44 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1                                                             %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Harp_Music_Voice measure 45 / measure 6]                              %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_45:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_45:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r8                                                                         %! harmony.sixteenths()
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \laissezVibrer                                                           %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    ^ \baca-pdlt-markup                                                        %! baca.markup():baca.IndicatorCommand._call()

    r2.                                                                        %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'8                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \laissezVibrer                                                           %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    % [F Harp_Music_Voice measure 46 / measure 7]                              %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Harp_Music_Voice measure 47 / measure 8]                      %! baca.SegmentMaker._comment_measure_numbers()
            \once \override Staff.Clef.X-extent = ##f                          %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_47:baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)            %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_47:baca.OverrideCommand._call(1)
            \clef "bass"                                                       %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.Clef.color = #(x11-color 'blue)              %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)            %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Harp_Rest_Voice measure 47 / measure 8]                       %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Harp_Music_Voice measure 48 / measure 9]                              %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! baca.SegmentMaker._style_fermata_measures(3)

    \tweak text #tuplet-number::calc-fraction-text
    \times 10/11 {

        % [F Harp_Music_Voice measure 49 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.SegmentMaker._style_fermata_measures(2)
        \once \override Staff.StaffSymbol.line-count = 5                       %! baca.SegmentMaker._style_fermata_measures(2)
        \startStaff                                                            %! baca.SegmentMaker._style_fermata_measures(2)
        \override Staff.BarLine.bar-extent = #'(-2 . 2)                        %! baca.SegmentMaker._style_fermata_measures(2.5)
    %%% \once \override Staff.Clef.X-extent = ##f                              %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_49:baca.OverrideCommand._call(1)
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                 %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_49:baca.OverrideCommand._call(1)
        \clef "treble"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.Clef.color = #(x11-color 'blue)                  %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %@% \override Staff.Clef.color = ##f                                       %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
        \set Staff.forceClef = ##t                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        r8
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        r1

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [F Harp_Music_Voice measure 50 / measure 11]                         %! baca.SegmentMaker._comment_measure_numbers()
        r1

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'4
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 10/11 {

        % [F Harp_Music_Voice measure 51 / measure 12]                         %! baca.SegmentMaker._comment_measure_numbers()
        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        r8

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        r8

        r2.

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [F Harp_Music_Voice measure 52 / measure 13]                         %! baca.SegmentMaker._comment_measure_numbers()
        r1

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'4
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'4
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/6 {

        % [F Harp_Music_Voice measure 53 / measure 14]                         %! baca.SegmentMaker._comment_measure_numbers()
        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        r2..

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [F Harp_Music_Voice measure 54 / measure 15]                         %! baca.SegmentMaker._comment_measure_numbers()
        r2

        r8

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
        b'8
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \laissezVibrer                                                       %! baca.laissez_vibrer():baca.IndicatorCommand._call()

        r4

    }

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Harp_Music_Voice measure 55 / measure 16]                     %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Harp_Rest_Voice measure 55 / measure 16]                      %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Harp_Music_Staff = <<                                                        %! abjad.Path.extern()

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \F_Harp_Music_Voice                                                        %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Viola_Music_Voice = {                                                        %! abjad.Path.extern()

    % [F Viola_Music_Voice measure 40 / measure 1]                             %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-va-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "alto"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r1                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Viola_Music_Voice measure 41 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Viola_Rest_Voice measure 41 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Viola_Music_Voice measure 42 / measure 3]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Viola_Music_Voice measure 43 / measure 4]                             %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16                                                                       %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Viola_Music_Voice measure 44 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1                                                            %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Viola_Rest_Voice measure 44 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1                                                             %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Viola_Music_Voice measure 45 / measure 6]                             %! baca.SegmentMaker._comment_measure_numbers()
    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r1                                                                         %! harmony.sixteenths()

    % [F Viola_Music_Voice measure 46 / measure 7]                             %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16                                                                       %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8                                                                        %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Viola_Music_Voice measure 47 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.Clef.X-extent = ##f                          %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_47:baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)             %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_47:baca.OverrideCommand._call(1)
            \clef "percussion"                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.Clef.color = #(x11-color 'blue)              %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)            %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Viola_Rest_Voice measure 47 / measure 8]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Viola_Music_Voice measure 48 / measure 9]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(3)

    % [F Viola_Music_Voice measure 49 / measure 10]                            %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_49:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_49:baca.OverrideCommand._call(1)
    \clef "alto"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r4                                                                         %! harmony.sixteenths()
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16
    ~
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    % [F Viola_Music_Voice measure 50 / measure 11]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()

    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16                                                                       %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    % [F Viola_Music_Voice measure 51 / measure 12]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8                                                                        %! harmony.sixteenths()
    \repeatTie

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'16                                                                       %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'4                                                                        %! harmony.sixteenths()

    % [F Viola_Music_Voice measure 52 / measure 13]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8.                                                                       %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r8                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'2                                                                        %! harmony.sixteenths()
    \repeatTie

    % [F Viola_Music_Voice measure 53 / measure 14]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'4                                                                        %! harmony.sixteenths()
    \repeatTie

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'8                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.5                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie

    % [F Viola_Music_Voice measure 54 / measure 15]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    c'1                                                                        %! harmony.sixteenths()
    - \tweak direction #up
    \repeatTie

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Viola_Music_Voice measure 55 / measure 16]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \bacaStopTextSpanBowSpeed                                          %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Viola_Rest_Voice measure 55 / measure 16]                     %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Viola_Music_Staff = <<                                                       %! abjad.Path.extern()

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \F_Viola_Music_Voice                                                       %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern()

    % [F Cello_I_Music_Voice measure 40 / measure 1]                           %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r1                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Cello_I_Music_Voice measure 41 / measure 2]                   %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Cello_I_Rest_Voice measure 41 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Cello_I_Music_Voice measure 42 / measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Cello_I_Music_Voice measure 43 / measure 4]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Cello_I_Music_Voice measure 44 / measure 5]                   %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1                                                            %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Cello_I_Rest_Voice measure 44 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1                                                             %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Cello_I_Music_Voice measure 45 / measure 6]                           %! baca.SegmentMaker._comment_measure_numbers()
    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r1                                                                         %! harmony.sixteenths()

    % [F Cello_I_Music_Voice measure 46 / measure 7]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Cello_I_Music_Voice measure 47 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Cello_I_Rest_Voice measure 47 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Cello_I_Music_Voice measure 48 / measure 9]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Cello_I_Music_Voice measure 49 / measure 10]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    r4                                                                         %! harmony.sixteenths()

    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    ~
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    % [F Cello_I_Music_Voice measure 50 / measure 11]                          %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    % [F Cello_I_Music_Voice measure 51 / measure 12]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()

    r2                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    % [F Cello_I_Music_Voice measure 52 / measure 13]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    % [F Cello_I_Music_Voice measure 53 / measure 14]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()
    \repeatTie

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.5                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    % [F Cello_I_Music_Voice measure 54 / measure 15]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d1                                                                         %! harmony.sixteenths()
    - \tweak direction #up
    \repeatTie

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Cello_I_Music_Voice measure 55 / measure 16]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \bacaStopTextSpanBowSpeed                                          %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Cello_I_Rest_Voice measure 55 / measure 16]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern()

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \F_Cello_I_Music_Voice                                                     %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern()

    % [F Cello_II_Music_Voice measure 40 / measure 1]                          %! baca.SegmentMaker._comment_measure_numbers()
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
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r1                                                                         %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Cello_II_Music_Voice measure 41 / measure 2]                  %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Cello_II_Rest_Voice measure 41 / measure 2]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Cello_II_Music_Voice measure 42 / measure 3]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Cello_II_Music_Voice measure 43 / measure 4]                          %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-mp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Cello_II_Music_Voice measure 44 / measure 5]                  %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 1                                                            %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Cello_II_Rest_Voice measure 44 / measure 5]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1                                                             %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"1"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Cello_II_Music_Voice measure 45 / measure 6]                          %! baca.SegmentMaker._comment_measure_numbers()
    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r1                                                                         %! harmony.sixteenths()

    % [F Cello_II_Music_Voice measure 46 / measure 7]                          %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Cello_II_Music_Voice measure 47 / measure 8]                  %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Cello_II_Rest_Voice measure 47 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Cello_II_Music_Voice measure 48 / measure 9]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Cello_II_Music_Voice measure 49 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    r4                                                                         %! harmony.sixteenths()

    r16                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    ~
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r4                                                                         %! harmony.sixteenths()

    % [F Cello_II_Music_Voice measure 50 / measure 11]                         %! baca.SegmentMaker._comment_measure_numbers()
    r8                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()
    \repeatTie

    r8                                                                         %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r8                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    % [F Cello_II_Music_Voice measure 51 / measure 12]                         %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    % [F Cello_II_Music_Voice measure 52 / measure 13]                         %! baca.SegmentMaker._comment_measure_numbers()
    r8.                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()

    % [F Cello_II_Music_Voice measure 53 / measure 14]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r16
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP

    r16

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    ~
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "p.sc."                                     %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.5                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(1)

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d1                                                                         %! harmony.sixteenths()

    % [F Cello_II_Music_Voice measure 54 / measure 15]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d1                                                                         %! harmony.sixteenths()
    - \tweak direction #up
    \repeatTie

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Cello_II_Music_Voice measure 55 / measure 16]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \bacaStopTextSpanBowSpeed                                          %! baca.bow_speed_spanner():BOW_SPEED:baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Cello_II_Rest_Voice measure 55 / measure 16]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern()

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \F_Cello_II_Music_Voice                                                    %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [F Contrabass_I_Music_Voice measure 40 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \glissando                                                                 %! baca.glissando()
    - \abjad-dashed-line-with-hook                                             %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "SCP (to-do)"                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #3.25                                 %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    \hide NoteHead                                                             %! baca.glissando()
    \override Accidental.stencil = ##f                                         %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando()
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \revert Accidental.stencil                                                 %! baca.glissando()
    \revert NoteColumn.glissando-skip                                          %! baca.glissando()
    \revert NoteHead.no-ledgers                                                %! baca.glissando()
    \undo \hide NoteHead                                                       %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Contrabass_I_Music_Voice measure 41 / measure 2]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(3):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Contrabass_I_Rest_Voice measure 41 / measure 2]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Contrabass_I_Music_Voice measure 42 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Contrabass_I_Music_Voice measure 43 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()
    \glissando                                                                 %! baca.glissando()
    - \abjad-dashed-line-with-hook                                             %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "SCP (to-do)"                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)

    \hide NoteHead                                                             %! baca.glissando()
    \override Accidental.stencil = ##f                                         %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando()
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 44 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 45 / measure 6]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 46 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \revert Accidental.stencil                                                 %! baca.glissando()
    \revert NoteColumn.glissando-skip                                          %! baca.glissando()
    \revert NoteHead.no-ledgers                                                %! baca.glissando()
    \undo \hide NoteHead                                                       %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Contrabass_I_Music_Voice measure 47 / measure 8]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \startStaff                                                        %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
            c''1 * 3/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(3):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Contrabass_I_Rest_Voice measure 47 / measure 8]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Contrabass_I_Music_Voice measure 48 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Contrabass_I_Music_Voice measure 49 / measure 10]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()
    \glissando                                                                 %! baca.glissando()
    - \abjad-dashed-line-with-hook                                             %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "SCP (to-do)"                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.5                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)

    \hide NoteHead                                                             %! baca.glissando()
    \override Accidental.stencil = ##f                                         %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando()
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 50 / measure 11]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 51 / measure 12]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 52 / measure 13]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 53 / measure 14]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_I_Music_Voice measure 54 / measure 15]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \revert Accidental.stencil                                                 %! baca.glissando()
    \revert NoteColumn.glissando-skip                                          %! baca.glissando()
    \revert NoteHead.no-ledgers                                                %! baca.glissando()
    \undo \hide NoteHead                                                       %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Contrabass_I_Music_Voice measure 55 / measure 16]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Contrabass_I_Rest_Voice measure 55 / measure 16]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \F_Contrabass_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


F_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [F Contrabass_II_Music_Voice measure 40 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
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
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \glissando                                                                 %! baca.glissando()
    - \abjad-dashed-line-with-hook                                             %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "SCP (to-do)"                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #3.25                                 %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    \hide NoteHead                                                             %! baca.glissando()
    \override Accidental.stencil = ##f                                         %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando()
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \revert Accidental.stencil                                                 %! baca.glissando()
    \revert NoteColumn.glissando-skip                                          %! baca.glissando()
    \revert NoteHead.no-ledgers                                                %! baca.glissando()
    \undo \hide NoteHead                                                       %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Contrabass_II_Music_Voice measure 41 / measure 2]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(3):SPANNER_STOP
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Contrabass_II_Rest_Voice measure 41 / measure 2]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Contrabass_II_Music_Voice measure 42 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1                                                                     %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"1"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [F Contrabass_II_Music_Voice measure 43 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()
    \glissando                                                                 %! baca.glissando()
    - \abjad-dashed-line-with-hook                                             %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "SCP (to-do)"                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)

    \hide NoteHead                                                             %! baca.glissando()
    \override Accidental.stencil = ##f                                         %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando()
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 44 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 45 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 46 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \revert Accidental.stencil                                                 %! baca.glissando()
    \revert NoteColumn.glissando-skip                                          %! baca.glissando()
    \revert NoteHead.no-ledgers                                                %! baca.glissando()
    \undo \hide NoteHead                                                       %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [F Contrabass_II_Music_Voice measure 47 / measure 8]             %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            c''1 * 3/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(3):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [F Contrabass_II_Rest_Voice measure 47 / measure 8]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [F Contrabass_II_Music_Voice measure 48 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0                           %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(1)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! baca.SegmentMaker._style_fermata_measures(3)

    % [F Contrabass_II_Music_Voice measure 49 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()
    \glissando                                                                 %! baca.glissando()
    - \abjad-dashed-line-with-hook                                             %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "SCP (to-do)"                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.5                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanSCP                                                      %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(1)

    \hide NoteHead                                                             %! baca.glissando()
    \override Accidental.stencil = ##f                                         %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando()
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 50 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 51 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 52 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 53 / measure 14]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    % [F Contrabass_II_Music_Voice measure 54 / measure 15]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    \revert Accidental.stencil                                                 %! baca.glissando()
    \revert NoteColumn.glissando-skip                                          %! baca.glissando()
    \revert NoteHead.no-ledgers                                                %! baca.glissando()
    \undo \hide NoteHead                                                       %! baca.glissando()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e,4                                                                        %! baca.make_repeated_duration_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [F Contrabass_II_Music_Voice measure 55 / measure 16]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \bacaStopTextSpanSCP                                               %! baca.scp_spanner():SCP:baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [F Contrabass_II_Rest_Voice measure 55 / measure 16]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f                 %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            \once \override MultiMeasureRest.transparent = ##t                 %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            \stopStaff                                                         %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t                %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            \startStaff                                                        %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

}                                                                              %! abjad.Path.extern()


F_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \F_Contrabass_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()
