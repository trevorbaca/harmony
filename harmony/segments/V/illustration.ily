V_Global_Skips = {                                                             %! abjad.Path.extern()

    % [V Global_Skips measure 196 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \bar ""                                                                    %! EMPTY_START_BAR:+SEGMENT:baca.SegmentMaker._make_global_skips(4)
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "V"                                          %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "196"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[V.1-3]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[10'15'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 197 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "197"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'17'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 198 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "198"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'20'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 199 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "199"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀T.1]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1)  %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[10'22'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 200 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "200"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[V.4-5]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"72" #1 #0 #2 #0 #'(1 . 1)   %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"72" #1 #0 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[10'24'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 201 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "201"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'26'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 202 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "202"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'29'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 203 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "203"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'31'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 204 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "204"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'34'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 205 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "205"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[10'36'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 206 / measure 11]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "206"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 207 / measure 12]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "207"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[V.6]"                                        %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \baca-start-ct-left-only "[10'41'']"                                     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 208 / measure 13]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 4/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1                                                                     %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "13"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "208"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀T.2]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1)  %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-both "[10'43'']" "[10'45'']"                              %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [V Global_Skips measure 209 / measure 14]                                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
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

}                                                                              %! abjad.Path.extern()


V_Global_Rests = {                                                             %! abjad.Path.extern()

    % [V Global_Rests measure 196 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 197 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 198 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 199 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 200 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 201 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 202 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 203 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 204 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 205 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 206 / measure 11]                                %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [V Global_Rests measure 207 / measure 12]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 208 / measure 13]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [V Global_Rests measure 209 / measure 14]                                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(4):PHANTOM
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(2):PHANTOM

}                                                                              %! abjad.Path.extern()


V_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Bass_Flute_Music_Voice measure 196 / measure 1]               %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-bfl-markup               %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-bfl-markup                    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "treble"                                                     %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                      %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                 %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-bfl-markup               %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Bass_Flute_Rest_Voice measure 196 / measure 1]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Bass_Flute_Music_Voice measure 197 / measure 2]                       %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Bass_Flute_Music_Voice measure 198 / measure 3]                       %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 2, 2, -4], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding #3                                                  %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    r4                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Bass_Flute_Music_Voice measure 199 / measure 4]                       %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-8, 8, -16, 4], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        r8.                                                                    %! harmony.sixteenths()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
        b'8                                                                    %! harmony.sixteenths()
        ~
        - \abjad-dashed-line-with-hook                                         %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-markup \baca-covered-markup                  %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak staff-padding #3                                              %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanCovered                                              %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    }                                                                          %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4                                                                        %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
        b'16                                                                   %! harmony.sixteenths()
        \repeatTie

        r4                                                                     %! harmony.sixteenths()
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }                                                                          %! harmony.sixteenths()

    % [V Bass_Flute_Music_Voice measure 200 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \bacaStopTextSpanCovered                                                   %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([2, 2], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #3                                    %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    - \tweak staff-padding #3                                                  %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Bass_Flute_Music_Voice measure 201 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Bass_Flute_Music_Voice measure 202 / measure 7]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Bass_Flute_Music_Voice measure 203 / measure 8]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Bass_Flute_Music_Voice measure 204 / measure 9]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Bass_Flute_Music_Voice measure 205 / measure 10]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'4 * 1/2                                                                  %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Bass_Flute_Music_Voice measure 206 / measure 11]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Bass_Flute_Rest_Voice measure 206 / measure 11]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Bass_Flute_Music_Voice measure 207 / measure 12]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4)
    \once \override Score.BarLine.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_206:baca.SegmentMaker._style_fermata_measures(7)
    \once \override Score.SpanBar.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_206:baca.SegmentMaker._style_fermata_measures(7)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Bass_Flute_Music_Voice measure 208 / measure 13]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-12, 4, '-'], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        r8                                                                     %! harmony.sixteenths()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
        b'8.                                                                   %! harmony.sixteenths()
        - \abjad-dashed-line-with-hook                                         %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-markup \baca-covered-markup                  %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #3.25                             %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak staff-padding #3                                              %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanCovered                                              %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-not-yet-pitched-coloring                                         %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
        b'16                                                                   %! harmony.sixteenths()
        \repeatTie

        r4                                                                     %! harmony.sixteenths()
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }                                                                          %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Bass_Flute_Music_Voice measure 209 / measure 14]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \bacaStopTextSpanCovered                                           %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Bass_Flute_Rest_Voice measure 209 / measure 14]               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \V_Global_Rests                                                            %! abjad.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \V_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Percussion_I_Music_Voice measure 196 / measure 1]             %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-perc-i-markup            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-perc-i-markup                 %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "percussion"                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                   %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Percussion”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-perc-i-markup            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Percussion_I_Rest_Voice measure 196 / measure 1]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Percussion_I_Music_Voice measure 197 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Percussion_I_Music_Voice measure 198 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 2, 2, -4], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    d'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak staff-padding #9.25                                               %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-triangle-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    d'4 * 1/2                                                                  %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    r4                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Percussion_I_Music_Voice measure 199 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    d'4                                                                        %! harmony.sixteenths()
    ^ \baca-slate-scrape-markup                                                %! baca.markup():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([8, -8, 8, -8, 8, -16], extra_counts=[2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        d'8                                                                    %! harmony.sixteenths()
        \repeatTie

        r4                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        r4                                                                     %! harmony.sixteenths()

        d'8                                                                    %! harmony.sixteenths()
        ~

    }                                                                          %! harmony.sixteenths()

    d'4                                                                        %! harmony.sixteenths()
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Percussion_I_Music_Voice measure 200 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    d'2.                                                                       %! baca.make_notes()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding #9.25                                               %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-triangle-markup                                                    %! baca.markup():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "make_notes()"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [V Percussion_I_Music_Voice measure 201 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    d'2.                                                                       %! baca.make_notes()

    % [V Percussion_I_Music_Voice measure 202 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    d'2.                                                                       %! baca.make_notes()

    % [V Percussion_I_Music_Voice measure 203 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    d'2.                                                                       %! baca.make_notes()

    % [V Percussion_I_Music_Voice measure 204 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    d'2.                                                                       %! baca.make_notes()

    % [V Percussion_I_Music_Voice measure 205 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    d'2.                                                                       %! baca.make_notes()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Percussion_I_Music_Voice measure 206 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Percussion_I_Rest_Voice measure 206 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Percussion_I_Music_Voice measure 207 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(4)
    \once \override Stem.direction = #up                                       %! baca.stem_up():baca.OverrideCommand._call(1)
    d'2.                                                                       %! baca.make_notes()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-pp-ancora                                                            %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "make_notes()"                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Percussion_I_Music_Voice measure 208 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-8, 8, '-'], extra_counts=[2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        r8                                                                     %! harmony.sixteenths()

        \override Stem.direction = #down                                       %! baca.stem_down():baca.OverrideCommand._call(1)
        d'4                                                                    %! harmony.sixteenths()
        ^ \baca-slate-scrape-markup                                            %! baca.markup():baca.IndicatorCommand._call()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        d'4                                                                    %! harmony.sixteenths()
        \repeatTie
        \revert Stem.direction                                                 %! baca.stem_down():baca.OverrideCommand._call(2)

        r8                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Percussion_I_Music_Voice measure 209 / measure 14]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Percussion_I_Rest_Voice measure 209 / measure 14]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \V_Percussion_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Percussion_II_Music_Voice measure 196 / measure 1]            %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup           %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-perc-ii-markup                %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "percussion"                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                  %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Percussion”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup           %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Percussion_II_Rest_Voice measure 196 / measure 1]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Percussion_II_Music_Voice measure 197 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Percussion_II_Music_Voice measure 198 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 4, -4], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \once \override Stem.direction = #down                                     %! baca.stem_down():baca.OverrideCommand._call(1)
    c'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Percussion_II_Music_Voice measure 199 / measure 4]                %! baca.SegmentMaker._comment_measure_numbers()
        \override Stem.direction = #down                                       %! baca.stem_down():baca.OverrideCommand._call(1)
        d'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        ^ \baca-slate-brush-markup                                             %! baca.markup():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([2, -8, 2, -8, 2, -20], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

        r8.                                                                    %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        d'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        \revert Stem.direction                                                 %! baca.stem_down():baca.OverrideCommand._call(2)

        r8.                                                                    %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Percussion_II_Music_Voice measure 200 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    c'4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-p-sempre                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([4, -8], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r2                                                                         %! harmony.sixteenths()

    % [V Percussion_II_Music_Voice measure 201 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Percussion_II_Music_Voice measure 202 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Percussion_II_Music_Voice measure 203 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Percussion_II_Music_Voice measure 204 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Percussion_II_Music_Voice measure 205 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r2                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Percussion_II_Music_Voice measure 206 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers()
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

            % [V Percussion_II_Rest_Voice measure 206 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Percussion_II_Music_Voice measure 207 / measure 12]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Percussion_II_Music_Voice measure 208 / measure 13]               %! baca.SegmentMaker._comment_measure_numbers()
        \once \override Stem.direction = #down                                 %! baca.stem_down():baca.OverrideCommand._call(1)
        d'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        ^ \baca-slate-brush-markup                                             %! baca.markup():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([2, '-'], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

        r8.                                                                    %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r2.                                                                        %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Percussion_II_Music_Voice measure 209 / measure 14]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Percussion_II_Rest_Voice measure 209 / measure 14]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \V_Percussion_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Harp_Music_Voice = {                                                         %! abjad.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Harp_Music_Voice measure 196 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-hp-markup                %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-hp-markup                     %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "treble"                                                     %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \mf                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "(“Harp”)"                      %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "[“Hp.”]"                       %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-hp-markup                %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Harp_Rest_Voice measure 196 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Harp_Music_Voice measure 197 / measure 2]                             %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Harp_Music_Voice measure 198 / measure 3]                             %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_198:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_198:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 4, -4], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Harp_Music_Voice measure 199 / measure 4]                             %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    b'8                                                                        %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    ^ \baca-sons-xylophoniques-markup                                          %! baca.markup():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([2, -20, 2, -24], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r8                                                                         %! harmony.sixteenths()

    r2.                                                                        %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Harp_Music_Voice measure 200 / measure 5]                             %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X #-0.75                                           %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-p-sempre                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([4, -8], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r2                                                                         %! harmony.sixteenths()

    % [V Harp_Music_Voice measure 201 / measure 6]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Harp_Music_Voice measure 202 / measure 7]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Harp_Music_Voice measure 203 / measure 8]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Harp_Music_Voice measure 204 / measure 9]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()

    % [V Harp_Music_Voice measure 205 / measure 10]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e,4                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Harp_Music_Voice measure 206 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
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

            % [V Harp_Rest_Voice measure 206 / measure 11]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Harp_Music_Voice measure 207 / measure 12]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Harp_Music_Voice measure 208 / measure 13]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-6, 2, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r8                                                                         %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d8                                                                         %! harmony.sixteenths()
    \laissezVibrer                                                             %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    ^ \baca-sons-xylophoniques-markup                                          %! baca.markup():baca.IndicatorCommand._call()

    r2                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Harp_Music_Voice measure 209 / measure 14]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Harp_Rest_Voice measure 209 / measure 14]                     %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Harp_Music_Staff = <<                                                        %! abjad.Path.extern()

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \V_Harp_Music_Voice                                                        %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Viola_Music_Voice = {                                                        %! abjad.Path.extern()

    % [V Viola_Music_Voice measure 196 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
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
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([32], extra_counts=[1], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [V Viola_Music_Voice measure 197 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e'2.                                                                       %! harmony.sixteenths()
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Viola_Music_Voice measure 198 / measure 3]                        %! baca.SegmentMaker._comment_measure_numbers()
        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8                                                                    %! harmony.sixteenths()
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8.                                                                    %! harmony.sixteenths()
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    a2                                                                         %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        g'8
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        % [V Viola_Music_Voice measure 199 / measure 4]                        %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1                       %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \startStaff                                                            %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.Clef.X-extent = ##f                              %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                 %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
        \clef "percussion"                                                     %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.Clef.color = #(x11-color 'blue)                  %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %@% \override Staff.Clef.color = ##f                                       %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
        \set Staff.forceClef = ##t                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)           %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([2, -8, 2, -4, 2, -26], extra_counts=[2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \override Staff.BarLine.bar-extent = #'(-2 . 0)                        %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        r4                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        r4                                                                     %! harmony.sixteenths()

        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        r4                                                                     %! harmony.sixteenths()

        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Viola_Music_Voice measure 200 / measure 5]                            %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \clef "alto"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([18, 13, 9, 6, 3, 2, 2, 2, 2, 2, 3, 3, 6, '+'], extra_counts=[1], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Viola_Music_Voice measure 201 / measure 6]                        %! baca.SegmentMaker._comment_measure_numbers()
        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8.                                                                   %! harmony.sixteenths()
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8                                                                     %! harmony.sixteenths()
        ~
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    a2                                                                         %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Viola_Music_Voice measure 202 / measure 7]                        %! baca.SegmentMaker._comment_measure_numbers()
        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a16                                                                    %! harmony.sixteenths()
        \repeatTie
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'4                                                                    %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e'4                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    a4                                                                         %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Viola_Music_Voice measure 203 / measure 8]                        %! baca.SegmentMaker._comment_measure_numbers()
        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a16                                                                    %! harmony.sixteenths()
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8.                                                                   %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a16                                                                    %! harmony.sixteenths()
        ~
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a16                                                                    %! harmony.sixteenths()
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8                                                                    %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8                                                                     %! harmony.sixteenths()
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8                                                                    %! harmony.sixteenths()
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \ff                                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t                                               %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        \>                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8                                                                     %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'16                                                                   %! harmony.sixteenths()
        ~
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Viola_Music_Voice measure 204 / measure 9]                        %! baca.SegmentMaker._comment_measure_numbers()
        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8                                                                    %! harmony.sixteenths()
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8.                                                                    %! harmony.sixteenths()
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

    }                                                                          %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    e'4                                                                        %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'16                                                                   %! harmony.sixteenths()
        \repeatTie
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a4                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    % [V Viola_Music_Voice measure 205 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    a2.                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        e'8
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Viola_Music_Voice measure 206 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Viola_Rest_Voice measure 206 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Viola_Music_Voice measure 207 / measure 12]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4)
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    e'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    % [V Viola_Music_Voice measure 208 / measure 13]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    r2.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-20, 2, '-'], extra_counts=[2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        r8                                                                     %! harmony.sixteenths()

        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        r8                                                                     %! harmony.sixteenths()
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }                                                                          %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Viola_Music_Voice measure 209 / measure 14]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Viola_Rest_Voice measure 209 / measure 14]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Viola_Music_Staff = <<                                                       %! abjad.Path.extern()

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \V_Viola_Music_Voice                                                       %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Cello_I_Music_Voice measure 196 / measure 1]                  %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-vc-i-markup              %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-vc-i-markup                   %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "bass"                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                     %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Cello”)"                     %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-vc-i-markup              %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Cello_I_Rest_Voice measure 196 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Cello_I_Music_Voice measure 197 / measure 2]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Cello_I_Music_Voice measure 198 / measure 3]                          %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 2, 2, -4], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding #3                                                  %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)

    r4                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Cello_I_Music_Voice measure 199 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1                       %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \startStaff                                                            %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.Clef.X-extent = ##f                              %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                 %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
        \clef "percussion"                                                     %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.Clef.color = #(x11-color 'blue)                  %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %@% \override Staff.Clef.color = ##f                                       %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
        \set Staff.forceClef = ##t                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)           %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
        c'8.                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([3, -7, 3, -7, 3, -7, 3, -14], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        r8                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        c'8.                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        r8                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Cello_I_Music_Voice measure 200 / measure 5]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([2, 2], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #3                                                  %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Cello_I_Music_Voice measure 201 / measure 6]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Cello_I_Music_Voice measure 202 / measure 7]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Cello_I_Music_Voice measure 203 / measure 8]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Cello_I_Music_Voice measure 204 / measure 9]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Cello_I_Music_Voice measure 205 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Cello_I_Music_Voice measure 206 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Cello_I_Rest_Voice measure 206 / measure 11]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Cello_I_Music_Voice measure 207 / measure 12]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Cello_I_Music_Voice measure 208 / measure 13]                     %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1                       %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \startStaff                                                            %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.Clef.X-extent = ##f                              %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                 %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
        \clef "percussion"                                                     %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)           %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.Clef.color = #(x11-color 'blue)                  %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %@% \override Staff.Clef.color = ##f                                       %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
        \set Staff.forceClef = ##t                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        c'8.                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([3, -7, 3, '-'], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        r8                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        c'8.                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        r8                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Cello_I_Music_Voice measure 209 / measure 14]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Cello_I_Rest_Voice measure 209 / measure 14]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern()

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \V_Cello_I_Music_Voice                                                     %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern()

    % [V Cello_II_Music_Voice measure 196 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
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
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([46], extra_counts=[2], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [V Cello_II_Music_Voice measure 197 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2.                                                                        %! harmony.sixteenths()
    \repeatTie

    % [V Cello_II_Music_Voice measure 198 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f4                                                                         %! harmony.sixteenths()
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        f4                                                                     %! harmony.sixteenths()
        \repeatTie
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8                                                                    %! harmony.sixteenths()
        ~

    }                                                                          %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Cello_II_Music_Voice measure 199 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1                       %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \startStaff                                                            %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.Clef.X-extent = ##f                              %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                 %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
        \clef "percussion"                                                     %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.Clef.color = #(x11-color 'blue)                  %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %@% \override Staff.Clef.color = ##f                                       %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
        \set Staff.forceClef = ##t                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)           %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
        c'8.                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([3, -5, 3, -5, 3, -5, 3, -23], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        r8                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        r8.                                                                    %! harmony.sixteenths()

        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        ~

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        c'16                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()

        r4                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        r16                                                                    %! harmony.sixteenths()

        c'8.                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        r16                                                                    %! harmony.sixteenths()
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }                                                                          %! harmony.sixteenths()

    % [V Cello_II_Music_Voice measure 200 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([18, 14, 12, 6, 4, 2, 2, 2, 2, 4, 6, 12, '+'], extra_counts=[2], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    % [V Cello_II_Music_Voice measure 201 / measure 6]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,2                                                                        %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8                                                                    %! harmony.sixteenths()
        \repeatTie
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        f4                                                                     %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    % [V Cello_II_Music_Voice measure 202 / measure 7]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f4                                                                         %! harmony.sixteenths()
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        f8                                                                     %! harmony.sixteenths()
        \repeatTie
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,4                                                                    %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8                                                                    %! harmony.sixteenths()
        \repeatTie
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        f4                                                                     %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        % [V Cello_II_Music_Voice measure 203 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8                                                                    %! harmony.sixteenths()
        [                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        f8                                                                     %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8                                                                    %! harmony.sixteenths()
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \ff                                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t                                               %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        \>                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        f8                                                                     %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,4                                                                    %! harmony.sixteenths()
        \glissando                                                             %! baca.glissando():abjad.glissando(7)

    }                                                                          %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f4                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [V Cello_II_Music_Voice measure 204 / measure 9]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,2                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f4                                                                         %! harmony.sixteenths()

    % [V Cello_II_Music_Voice measure 205 / measure 10]                        %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    f2.                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Cello_II_Music_Voice measure 206 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Cello_II_Rest_Voice measure 206 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Cello_II_Music_Voice measure 207 / measure 12]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    f2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [V Cello_II_Music_Voice measure 208 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
        \stopStaff                                                             %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1                       %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \startStaff                                                            %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
        \once \override Staff.Clef.X-extent = ##f                              %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                 %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
        \clef "percussion"                                                     %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)           %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.Clef.color = #(x11-color 'blue)                  %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %@% \override Staff.Clef.color = ##f                                       %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
        \set Staff.forceClef = ##t                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
        r4                                                                     %! harmony.sixteenths()
        - \abjad-dashed-line-with-hook                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \baca-text-spanner-left-text "sixteenths([-4, 3, '-'], extra_counts=[1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak bound-details.right.padding #2.75                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
        - \tweak color #darkyellow                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        - \tweak staff-padding #8                                              %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \bacaStartTextSpanRhythmAnnotation                                     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

        c'16                                                                   %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()
        ~

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()

        r8.                                                                    %! harmony.sixteenths()

    }                                                                          %! harmony.sixteenths()

    r2                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Cello_II_Music_Voice measure 209 / measure 14]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Cello_II_Rest_Voice measure 209 / measure 14]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern()

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \V_Cello_II_Music_Voice                                                    %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Contrabass_I_Music_Voice measure 196 / measure 1]             %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-cb-i-markup              %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
            \stopStaff                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5                   %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \startStaff                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
            \set Staff.instrumentName = \harmony-cb-i-markup                   %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "bass"                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
        %@% \override Staff.Clef.color = ##f                                   %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
            \set Staff.forceClef = ##t                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \p                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
            ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                     %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            \set Staff.shortInstrumentName = \harmony-cb-i-markup              %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Contrabass_I_Rest_Voice measure 196 / measure 1]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Contrabass_I_Music_Voice measure 197 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Contrabass_I_Music_Voice measure 198 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 2, 2, -4], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    \override NoteHead.style = #'harmonic                                      %! baca.note_head_style_harmonic():baca.OverrideCommand._call(1)
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding #3                                                  %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \revert NoteHead.style                                                     %! baca.note_head_style_harmonic():baca.OverrideCommand._call(2)

    r4                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Contrabass_I_Music_Voice measure 199 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([3, -7, 3, -7, 3, -7, 3, -14], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()

    c'8                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    c'16                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Contrabass_I_Music_Voice measure 200 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([2, 2], written_quarters=True, invisible_pairs=True, talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #3                                                  %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Contrabass_I_Music_Voice measure 201 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Contrabass_I_Music_Voice measure 202 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Contrabass_I_Music_Voice measure 203 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Contrabass_I_Music_Voice measure 204 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    % [V Contrabass_I_Music_Voice measure 205 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \!                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%@% \abjad-invisible-music                                                     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    \abjad-invisible-music-coloring                                            %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING
    d4 * 1/2                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Contrabass_I_Music_Voice measure 206 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
            - \tweak color #(x11-color 'blue)                                  %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            \!                                                                 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \stopTrillSpan                                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Contrabass_I_Rest_Voice measure 206 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Contrabass_I_Music_Voice measure 207 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [V Contrabass_I_Music_Voice measure 208 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    r4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([-4, 3, -7, 2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    r8                                                                         %! harmony.sixteenths()

    c'8                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Contrabass_I_Music_Voice measure 209 / measure 14]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Contrabass_I_Rest_Voice measure 209 / measure 14]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \V_Contrabass_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


V_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [V Contrabass_II_Music_Voice measure 196 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
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
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([27], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [V Contrabass_II_Music_Voice measure 197 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2.                                                                        %! harmony.sixteenths()
    \repeatTie

    % [V Contrabass_II_Music_Voice measure 198 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f8.                                                                        %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,16                                                                       %! harmony.sixteenths()
    ~
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    b,2                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        a8
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    % [V Contrabass_II_Music_Voice measure 199 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_199:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([3, -5, 3, -5, 3, -5, 3, -23], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [V Contrabass_II_Music_Voice measure 200 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_200:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([9, 7, 6, 3, 2, 1, 1, 1, 1, 2, 3, 6, '+'], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f16                                                                        %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,8.                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    % [V Contrabass_II_Music_Voice measure 201 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,4                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f4                                                                         %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f8                                                                         %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,8                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    % [V Contrabass_II_Music_Voice measure 202 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,16                                                                       %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f16
    ~

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f16
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f16                                                                        %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,16                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f16                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,16                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ff                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ~
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,16                                                                       %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f8.                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [V Contrabass_II_Music_Voice measure 203 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,4                                                                        %! harmony.sixteenths()

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    b,8                                                                        %! harmony.sixteenths()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f8                                                                         %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f4                                                                         %! harmony.sixteenths()
    \repeatTie

    % [V Contrabass_II_Music_Voice measure 204 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    f2.                                                                        %! harmony.sixteenths()
    \repeatTie

    % [V Contrabass_II_Music_Voice measure 205 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    f2.                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [V Contrabass_II_Music_Voice measure 206 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers()
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

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [V Contrabass_II_Rest_Voice measure 206 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [V Contrabass_II_Music_Voice measure 207 / measure 12]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4)
    \baca-mock-coloring                                                        %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
    \afterGrace
    f2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t                                                   %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \>                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16, after_graces=[1])" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    {

        \baca-mock-coloring                                                    %! baca.SegmentMaker._color_mock_pitch():MOCK_COLORING
        b,8
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \!                                                                     %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }


    % [V Contrabass_II_Music_Voice measure 208 / measure 13]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_208:baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "sixteenths([3, -5, 3, -5], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding #2.75                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT
    - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak staff-padding #8                                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()
    <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [V Contrabass_II_Music_Voice measure 209 / measure 14]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [V Contrabass_II_Rest_Voice measure 209 / measure 14]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


V_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \V_Contrabass_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()
