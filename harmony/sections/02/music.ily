%! baca.path.extern()
segment.02.Global.Skips = {

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 1]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    %! EMPTY_START_BAR
    %! +SEGMENT
    %! baca._attach_nonfirst_empty_start_bar()
    \bar ""
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 1
    %! baca.rehearsal_mark()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \tweak extra-offset #'(0 . 18)
    %! baca.rehearsal_mark()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "B" #10
    %! baca.rehearsal_mark()
    %! +PARTS
    %! baca.IndicatorCommand._call()
%%% - \tweak extra-offset #'(0 . 10)
    %! baca.rehearsal_mark()
    %! +PARTS
    %! baca.IndicatorCommand._call()
%%% - \baca-rehearsal-mark-markup "B" #4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "1"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "4"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[B.1-5]"
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(0.525 . 0.525)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "144"
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'11'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 2]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "2"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "5"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'12'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 3]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 1
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "3"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "6"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'14'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 4]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "4"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "7"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'16'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 5]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 1
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "5"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "8"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'18'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 6]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "6"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "9"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[◀A.2]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(0.525 . 0.525)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'20'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 7]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 3/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "7"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "10"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(0.525 . 0.525)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'23'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 8]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "8"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "11"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[B.6]"
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(0.525 . 0.525)
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "144"
    %! baca._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'26'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 9]
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "9"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "12"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'28'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 10]
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "10"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "13"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'30'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 11]
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "11"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "14"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[0'32'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 12]
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    %! baca.attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 1/4
    %! baca.markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \tweak extra-offset #'(4 . -30)
    %! baca.markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    ^ \harmony-text-one
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "12"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "15"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-both-left-fermata "2''" "[0'36'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    %! baca._style_phantom_measures(1)
    %! PHANTOM
    % [Global_Skips measure 13]
    %! baca._style_phantom_measures(2)
    %! PHANTOM
    \baca-time-signature-transparent
    %! baca._make_global_skips(3)
    %! PHANTOM
    s1 * 1/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %! baca._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %! baca._style_phantom_measures(1)
    %! PHANTOM
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    %! baca._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanSNM
    %! EOS_STOP_MM_SPANNER
    %! baca._attach_metronome_marks(4)
    %! baca._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %! baca._style_phantom_measures(1)
    %! PHANTOM
    %@% \bacaStopTextSpanCT
    %! baca._style_phantom_measures(3)
    %! PHANTOM
    \once \override Score.BarLine.transparent = ##t
    %! baca._style_phantom_measures(3)
    %! PHANTOM
    \once \override Score.SpanBar.transparent = ##t

%! baca.make_global_context()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Global.Rests = {

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 1]
    %! baca._make_global_rests(1)
    R1 * 1

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 2]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 3]
    %! baca._make_global_rests(1)
    R1 * 1

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 4]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 5]
    %! baca._make_global_rests(1)
    R1 * 1

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 6]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 7]
    %! baca._make_global_rests(1)
    R1 * 3/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 8]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 9]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 10]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 11]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 12]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    %! baca.global_fermata()
    %! baca.GlobalFermataCommand._call(2)
    \baca-fermata-measure
    %! baca._make_global_rests(1)
    R1 * 1/4
    %! baca.global_fermata()
    %! baca.GlobalFermataCommand._call(1)
    ^ \baca-fermata-markup

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 13]
    %! baca._make_global_rests(2)
    %! PHANTOM
    R1 * 1/4

%! baca.make_global_context()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Bass.Flute.Music.Voice.count.1 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    a'8.
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    a'2
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Bass.Flute.Music.Voice.count.2 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    a'4..
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-mf-mp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Bass.Flute.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 1]
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_BAR_EXTENT
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-bfl-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "treble"
    %! baca.attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! baca.attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! baca.attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(3)
    %! baca._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-bfl-markup

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''2.
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 2]
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 3]
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 4]
    %! harmony.sixteenths()
    af''2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 5]
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''2.
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 6]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! harmony.appoggiato()
    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                cs'''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            d'''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs'''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs'''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Bass.Flute.Music.Voice.count.1 }

    >>
    %! abjad.on_beat_grace_container(5)
    \oneVoice

    %! harmony.appoggiato()
    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                b''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs'''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs'''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            d'''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Bass.Flute.Music.Voice.count.2 }

    >>

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 7]
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! harmony.sixteenths()
    r2
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    f'16
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-cov-markup
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanCovered

    %! harmony.sixteenths()
    r16
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 8]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanCovered

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 9]
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 10]
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 11]
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    af''!4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    af''1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! harmony.sixteenths()
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Bass_Flute_Music_Voice measure 12]
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Bass_Flute_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Bass_Flute_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! FERMATA_MEASURE
            %! MEASURE_15
            %! baca._style_fermata_measures(7)
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            \once \override Score.BarLine.transparent = ##t
            %! FERMATA_MEASURE
            %! MEASURE_15
            %! baca._style_fermata_measures(7)
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            \once \override Score.SpanBar.transparent = ##t
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Bass_Flute_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Bass.Flute.Music.Staff = <<

    %! baca.make_global_context()
    \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! baca.path.extern()
    { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Bass_Flute_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Bass.Flute.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.1 = {

    %! harmony.appoggiato()
    r1

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.2 = {

    %! harmony.appoggiato()
    r1

    %! harmony.appoggiato()
    r4

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.3 = {

    %! harmony.appoggiato()
    r1

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.4 = {

    %! harmony.appoggiato()
    r1

    %! harmony.appoggiato()
    r4

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.5 = {

    %! harmony.appoggiato()
    r2

    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.appoggiato()
    r8
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.6 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5.5
    %! harmony.appoggiato()
    r1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \p

    %! harmony.appoggiato()
    r4

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.7 = {

    %! harmony.appoggiato()
    r1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp

    %! harmony.appoggiato()
    r4

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.8 = {

    %! harmony.appoggiato()
    r1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf

    %! harmony.appoggiato()
    r4

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice.count.9 = {

    %! harmony.appoggiato()
    r1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f

    %! harmony.appoggiato()
    r4
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 1]
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_STAFF_LINES
            \stopStaff
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_STAFF_LINES
            \startStaff
            %! -PARTS
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_MARGIN_MARKUP
            \set Staff.shortInstrumentName = \harmony-perc-i-markup
            %! -PARTS
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_BAR_EXTENT
            %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 1)
            %! baca._clone_segment_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-perc-i-markup
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_CLEF
            \clef "percussion"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! REAPPLIED_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)
            %! baca.attach_color_literal(1)
            %! REAPPLIED_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca._reapply_persistent_indicators(3)
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! REAPPLIED_CLEF
            \set Staff.forceClef = ##t
            %! baca.attach_color_literal(2)
            %! REAPPLIED_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            %! baca.attach_color_literal(2)
            %! REAPPLIED_MARGIN_MARKUP_COLOR
            %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
            a8 * 2/5
            %! REAPPLIED_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_DYNAMIC
            - \tweak color #(x11-color 'green4)
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_DYNAMIC
            \p
            %! REAPPLIED_INSTRUMENT_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
            %! REAPPLIED_MARGIN_MARKUP_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! REAPPLIED_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'OliveDrab)
            %! baca.attach_color_literal(2)
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
            %! -PARTS
            %! baca._reapply_persistent_indicators(3)
            %! baca.treat_persistent_wrapper(3)
            %! baca._set_status_tag()
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP
            \set Staff.shortInstrumentName = \harmony-perc-i-markup

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 2]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 3]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 4]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 5]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.5 }

    >>
    %! abjad.on_beat_grace_container(5)
    \oneVoice

    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! harmony.appoggiato()
    b8
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-bd-superball-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 10.5
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "MM"
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanMetricModulation
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    b4 * 3/4
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    %! harmony.appoggiato()
    \repeatTie

    %! harmony.appoggiato()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.appoggiato()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.appoggiato()
    b16
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 6]
    %! harmony.sixteenths()
    b4 * 3/4
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    b4 * 1/4
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    %! harmony.sixteenths()
    r2.
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

    %! harmony.sixteenths()
    b4 * 3/4
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    b4 * 1/4
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 7]
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.tuplet_bracket_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.staff-padding = 0.5
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5.5
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.phjc()
    r2

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 2/3
    %! harmony.phjc()
    {

        %! harmony.phjc()
        r8

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \override Stem.direction = #down
        %! harmony.phjc()
        c'8
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \f
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak self-alignment-X 0.25
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak staff-padding 6
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        ^ \baca-purpleheart-markup
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \>
        %! harmony.phjc()
        [

        %! harmony.phjc()
        c'16

        %! harmony.phjc()
        a16
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \p
        %! harmony.phjc()
        ]
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction
        %! baca.tuplet_bracket_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.staff-padding
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding

    %! harmony.phjc()
    }

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 8]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 9]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 10]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.8 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 11]
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Percussion.I.Music.Voice.count.9 }

    >>

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 12]
            %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
            %! ONE_VOICE_COMMAND
            \oneVoice
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_I_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Percussion_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Percussion_I_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Percussion_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Percussion_I_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.I.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Percussion_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Percussion.I.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Percussion.II.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 1]
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-ii-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "percussion"
    %! baca.attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! baca.make_repeat_tied_notes()
    c'1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.75
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-ancora
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! baca.attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(3)
    %! baca._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 2]
    %! baca.glissando()
    %! abjad.glissando(1)
    \hide NoteHead
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Accidental.stencil = ##f
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Stem.transparent = ##t
    c'2.

    c'2

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 3]
    %! baca.make_repeat_tied_notes()
    c'1
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        %! baca._comment_measure_numbers()
        % [Percussion_II_Music_Voice measure 4]
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(1)
        \once \override TupletBracket.direction = #up
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Accidental.stencil
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteColumn.glissando-skip
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteHead.no-ledgers
        %! baca.glissando()
        %! abjad.glissando(6)
        \undo \hide NoteHead
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Dots.transparent
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Stem.transparent
        c'1
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction

    }

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 5]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! harmony.sixteenths()
    r2

    %! harmony.sixteenths()
    r8

    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down
    %! harmony.sixteenths()
    d'8
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-slate-scrape-markup
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 10.5
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "MM"
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanMetricModulation
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    d'4
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 6]
    %! harmony.sixteenths()
    d'4

    %! harmony.sixteenths()
    r4
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    d'8
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    d'8
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! harmony.sixteenths()
    d'8
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    d'8
    \repeatTie
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction

    %! harmony.sixteenths()
    r8
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 7]
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.tuplet_bracket_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.staff-padding = 0.5
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5.5
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.phjc()
    r4

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/7
    %! harmony.phjc()
    {

        %! harmony.phjc()
        r8

        %! harmony.phjc()
        r8

        %! harmony.phjc()
        r8

        %! harmony.phjc()
        r8

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \override Stem.direction = #down
        %! harmony.phjc()
        c'8
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \f
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak self-alignment-X 0.25
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak staff-padding 3
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        ^ \baca-purpleheart-markup
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \>
        %! harmony.phjc()
        [

        %! harmony.phjc()
        c'16

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'16
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \p
        %! harmony.phjc()
        ]
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction
        %! baca.tuplet_bracket_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.staff-padding
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding

    %! harmony.phjc()
    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        %! baca._comment_measure_numbers()
        % [Percussion_II_Music_Voice measure 8]
        %! baca.staff_lines()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_STAFF_LINES
        \stopStaff
        %! baca.staff_lines()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1
        %! baca.staff_lines()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_STAFF_LINES
        \startStaff
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(1)
        \override TupletBracket.direction = #up
        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \override Stem.direction = #down
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(1)
        \override TupletBracket.direction = #up
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(1)
        \override DynamicLineSpanner.staff-padding = 6.5
        %! baca.attach_color_literal(2)
        %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'1
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \p
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak staff-padding 6
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        ^ \baca-tam-tam-markup
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \<
        %! baca.glissando()
        %! abjad.glissando(7)
        \glissando

    }

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 9]
    %! baca.glissando()
    %! abjad.glissando(1)
    \hide NoteHead
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Accidental.stencil = ##f
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Stem.transparent = ##t
    c'2.

    c'2

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 10]
    c'2.

    c'2

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        %! baca._comment_measure_numbers()
        % [Percussion_II_Music_Voice measure 11]
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Accidental.stencil
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteColumn.glissando-skip
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteHead.no-ledgers
        %! baca.glissando()
        %! abjad.glissando(6)
        \undo \hide NoteHead
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Dots.transparent
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Stem.transparent
        c'1
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \mf
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding

    }

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_II_Music_Voice measure 12]
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_II_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Percussion_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Percussion_II_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Percussion_II_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Percussion.II.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Percussion_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Percussion.II.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Harp.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 1]
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-hp-markup
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_BAR_EXTENT
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-hp-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_4
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_4
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! baca.attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Harp”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 4
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-bisb-markup
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(3)
    %! baca._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-hp-markup
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>2.
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 2]
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 3]
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 4]
    <gs'! a' b'>2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 5]
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>2.
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 6]
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    c'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-whisk-markup
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    r4

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    c'8
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    c'8
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! harmony.sixteenths()
    c'8
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    c'8
    \repeatTie
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction

    %! harmony.sixteenths()
    r8
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 7]
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_10
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_10
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    g,,2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    g,,8
    \repeatTie

    %! harmony.sixteenths()
    r8
    %! baca.damp()
    %! baca.IndicatorCommand._call()
    - \baca-damp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 8]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_11
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_11
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 4
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-bisb-markup
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 9]
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 10]
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 11]
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-parenthesized
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    <gs'! a' b'>1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Harp_Music_Voice measure 12]
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Harp_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Harp_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Harp_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Harp_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Harp_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Harp.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Harp_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Harp.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.1 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.2 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!2.
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.3 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 3]
    af2
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.4 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 4]
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.5 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.6 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.7 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.8 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.9 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice.count.10 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 1]
            %! -PARTS
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_MARGIN_MARKUP
            \set Staff.shortInstrumentName = \harmony-va-markup
            %! -PARTS
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \stopStaff
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \startStaff
            %! baca._clone_segment_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-va-markup
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_4
            %! baca.OverrideCommand._call(1)
        %%% \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_4
            %! baca.OverrideCommand._call(1)
        %%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "alto"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! REAPPLIED_MARGIN_MARKUP_COLOR
            %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            %! baca.attach_color_literal(2)
            %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! REAPPLIED_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_DYNAMIC
            - \tweak color #(x11-color 'green4)
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! REAPPLIED_DYNAMIC
            \sfp
            %! REAPPLIED_INSTRUMENT_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“Viola”)"
            %! REAPPLIED_MARGIN_MARKUP_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Va.”]"
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
            %! -PARTS
            %! baca._reapply_persistent_indicators(3)
            %! baca.treat_persistent_wrapper(3)
            %! baca._set_status_tag()
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP
            \set Staff.shortInstrumentName = \harmony-va-markup
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 2]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                a'
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                b'
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 5]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.6 }

    >>

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 6]
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! harmony.appoggiato()
    r16
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan

    %! harmony.appoggiato()
    gqf'!4..
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 5.5
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-seven-a
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp

    %! harmony.appoggiato()
    r16
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp

    gqf'!8.
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    gqf'2
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 7]
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_10
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_10
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r4
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 2/3
    %! harmony.sixteenths()
    {

        %! harmony.sixteenths()
        r4

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \once \override Stem.direction = #down
        %! harmony.sixteenths()
        c'16
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \baca-effort-ff
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent

        %! harmony.sixteenths()
        r16

    %! harmony.sixteenths()
    }

    %! harmony.sixteenths()
    r4
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 8]
            %! -PARTS
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \stopStaff
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \startStaff
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "alto"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            %! baca.attach_color_literal(2)
            %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 9]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                as'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.8 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 10]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                a'
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.9 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 11]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Viola.Music.Voice.count.10 }

    >>

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Viola_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 12]
            %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
            %! ONE_VOICE_COMMAND
            \oneVoice
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.text_spanner()
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            \stopTextSpan
            %! baca._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Viola_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Viola_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Viola_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Viola_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Viola_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Viola_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Viola.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Viola_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Viola.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.1 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!4
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 2]
    af2.
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.2 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 3]
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.3 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2.
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 4]
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.4 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.5 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.6 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.7 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice.count.8 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 1]
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-i-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_4
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_4
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "tenor"
    %! baca.attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.appoggiato()
    r2.
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_DYNAMIC
    \sfp
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"
    %! baca.attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(3)
    %! baca._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                as'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.4 }

    >>

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 5]
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_8
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_8
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.make_notes()
    a,1
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! baca.skeleton()
    \tweak text #tuplet-number::calc-fraction-text
    %! baca.skeleton()
    \times 5/3
    %! baca.skeleton()
    {

        %! baca._comment_measure_numbers()
        % [Cello_I_Music_Voice measure 6]
        %! baca.tuplet_bracket_down()
        %! baca.OverrideCommand._call(1)
        \override TupletBracket.direction = #down
        %! baca.skeleton()
        a,4
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \f
        %! baca.repeat_tie()
        %! baca.IndicatorCommand._call()
        \repeatTie
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak to-barline ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \>
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
    %@%     %! baca.rhythm_annotation_spanner()
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
    %@%     %! RHYTHM_ANNOTATION_SPANNER
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
    %@%     %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
    %@%     %! AUTODETECT
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
    %@%     %! SPANNER_START
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \tweak bound-details.right.padding 2.75
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \tweak color #darkcyan
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \tweak staff-padding 8
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \abjad-dashed-line-with-hook
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \baca-text-spanner-left-text "baca.skeleton()"
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% \bacaStartTextSpanRhythmAnnotation

        %! baca.skeleton()
        a,4
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-solid-line-with-arrow
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P4"
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! AUTODETECT
        %! SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.right.padding 2.75
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 8
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-dashed-line-with-hook
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "MM"
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanMetricModulation

        %! baca.skeleton()
        a,4
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.right.padding 0.5
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.right.stencil-align-dir-y #center
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-solid-line-with-arrow
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P1"
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-right-text "P3"
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP
        %! baca.tuplet_bracket_down()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
        %@% <>
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
        %@% \bacaStopTextSpanRhythmAnnotation

    %! baca.skeleton()
    }

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 7]
    %! harmony.sixteenths()
    a,4
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP

    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r4
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 4/5
    %! harmony.sixteenths()
    {

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \once \override Stem.direction = #down
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(1)
        \once \override TupletBracket.direction = #up
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(1)
        \once \override DynamicLineSpanner.staff-padding = 6
        %! harmony.sixteenths()
        c'16
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \baca-effort-ff
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent

        %! harmony.sixteenths()
        r4

    %! harmony.sixteenths()
    }

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 8]
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \stopStaff
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \startStaff
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "tenor"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            %! baca.attach_color_literal(2)
            %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                bqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 9]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 10]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 11]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.I.Music.Voice.count.8 }

    >>

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 12]
            %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
            %! ONE_VOICE_COMMAND
            \oneVoice
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            a1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.text_spanner()
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            \stopTextSpan

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Cello_I_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Cello_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Cello_I_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Cello_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Cello_I_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.I.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Cello_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Cello.I.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.1 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 4]
    af2
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.2 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!2.
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.3 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.4 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.5 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.6 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice.count.7 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Voice = {

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 5/4
    %! harmony.sixteenths()
    {

        %! baca._comment_measure_numbers()
        % [Cello_II_Music_Voice measure 1]
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_STAFF_LINES
        \stopStaff
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 5
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_STAFF_LINES
        \startStaff
        %! -PARTS
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_MARGIN_MARKUP
        \set Staff.shortInstrumentName = \harmony-vc-ii-markup
        %! baca._clone_segment_initial_short_instrument_name()
        \set Staff.instrumentName = \harmony-vc-ii-markup
        %! baca.tuplet_bracket_down()
        %! baca.OverrideCommand._call(1)
        \override TupletBracket.direction = #down
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(1)
        \override DynamicLineSpanner.staff-padding = 5
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_CLEF
        \clef "bass"
        %! baca.attach_color_literal(2)
        %! REAPPLIED_CLEF_COLOR
        \once \override Staff.Clef.color = #(x11-color 'green4)
        %! baca.attach_color_literal(1)
        %! REAPPLIED_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        %! baca._reapply_persistent_indicators(3)
        %! baca.treat_persistent_wrapper(2)
        %! baca._set_status_tag()
        %! REAPPLIED_CLEF
        \set Staff.forceClef = ##t
        %! baca.attach_color_literal(2)
        %! REAPPLIED_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
        %! baca.attach_color_literal(2)
        %! REAPPLIED_MARGIN_MARKUP_COLOR
        %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
        %! harmony.sixteenths()
        g,1
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \mf
        %! REAPPLIED_INSTRUMENT_ALERT
        %! baca._attach_latent_indicator_alert()
        %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
        %! REAPPLIED_MARGIN_MARKUP_ALERT
        %! baca._attach_latent_indicator_alert()
        %@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak to-barline ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \>
        %! baca.glissando()
        %! abjad.glissando(7)
        \glissando
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-dashed-line-with-hook
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P1"
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP
        %! baca.attach_color_literal(2)
        %! REAPPLIED_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'OliveDrab)
        %! baca.attach_color_literal(2)
        %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
        %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
        %! -PARTS
        %! baca._reapply_persistent_indicators(3)
        %! baca.treat_persistent_wrapper(3)
        %! baca._set_status_tag()
        %! REDRAWN_REAPPLIED_MARGIN_MARKUP
        \set Staff.shortInstrumentName = \harmony-vc-ii-markup

        %! baca.glissando()
        %! abjad.glissando(1)
        \hide NoteHead
        %! baca.glissando()
        %! abjad.glissando(1)
        \override Accidental.stencil = ##f
        %! baca.glissando()
        %! abjad.glissando(1)
        \override NoteColumn.glissando-skip = ##t
        %! baca.glissando()
        %! abjad.glissando(1)
        \override NoteHead.no-ledgers = ##t
        \afterGrace
        %! harmony.sixteenths()
        g,4
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        {

            %! baca.glissando()
            %! abjad.glissando(6)
            \revert Accidental.stencil
            %! baca.glissando()
            %! abjad.glissando(6)
            \revert NoteColumn.glissando-skip
            %! baca.glissando()
            %! abjad.glissando(6)
            \revert NoteHead.no-ledgers
            %! baca.glissando()
            %! abjad.glissando(6)
            \undo \hide NoteHead
            f,8
            %! baca.stem_tremolo()
            %! baca.IndicatorCommand._call()
            :32

        }


        %! harmony.sixteenths()
        r4
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \!
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP

    %! harmony.sixteenths()
    }

    %! harmony.sixteenths()
    r4.
    %! baca.tuplet_bracket_down()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 3]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_6
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_6
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "tenor"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.appoggiato()
    r2
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                as'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 5]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                ctqs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.3 }

    >>

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 6]
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.appoggiato()
    r16
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    b8.
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    b2
    \repeatTie

    %! harmony.appoggiato()
    r16
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp

    %! harmony.appoggiato()
    b4..
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 7]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! harmony.sixteenths()
    g,2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! baca.glissando()
    %! abjad.glissando(1)
    \hide NoteHead
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Accidental.stencil = ##f
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t
    \afterGrace
    %! harmony.sixteenths()
    g,8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    {

        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Accidental.stencil
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteColumn.glissando-skip
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteHead.no-ledgers
        %! baca.glissando()
        %! abjad.glissando(6)
        \undo \hide NoteHead
        f,8

    }


    %! harmony.sixteenths()
    r8
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 8]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "tenor"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                b'
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 9]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                ctqs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 10]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                bqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 11]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Cello.II.Music.Voice.count.7 }

    >>

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 12]
            %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
            %! ONE_VOICE_COMMAND
            \oneVoice
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            a1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.text_spanner()
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            \stopTextSpan

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Cello_II_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Cello_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Cello_II_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Cello_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Cello_II_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Cello.II.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Cello_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Cello.II.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.1 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 10
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.2 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!4
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 3]
    af2.
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.3 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!4
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 4]
    af2
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.4 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2.
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 5]
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.5 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!2.
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.6 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 10
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.7 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.8 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice.count.9 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 1]
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-i-markup
    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "percussion"
    %! baca.attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! baca.attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    c'8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! REAPPLIED_DYNAMIC
    \sfp
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! AUTODETECT
    %! SPANNER_START
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \tweak staff-padding 5.5
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \baca-text-spanner-left-text "MM"
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    \bacaStartTextSpanMetricModulation
    %! baca.attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! baca.attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca._reapply_persistent_indicators(3)
    %! baca.treat_persistent_wrapper(3)
    %! baca._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    c'8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction

    %! harmony.sixteenths()
    r8
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

    %! harmony.sixteenths()
    r2
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 2]
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \stopStaff
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \startStaff
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_5
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_5
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "treble"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            %! baca.attach_color_literal(2)
            %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                a'
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                ctqs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.5 }

    >>

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 6]
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.sixteenths()
    a,2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    a,8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! harmony.sixteenths()
    a,8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    a,8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! harmony.sixteenths()
    a,8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    a,4
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 7]
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_10
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_10
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r2
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    r8

    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \once \override Stem.direction = #down
    %! harmony.sixteenths()
    c'16
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-effort-ff
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent

    %! baca.rest_extra_offset()
    %! baca.OverrideCommand._call(1)
    \once \override Rest.extra-offset = #'(-1 . 0)
    %! harmony.sixteenths()
    r16
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 8]
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \stopStaff
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5
            %! baca.staff_lines()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_STAFF_LINES
            \startStaff
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "treble"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            %! baca.attach_color_literal(2)
            %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                bqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 9]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 10]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.8 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 11]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.I.Music.Voice.count.9 }

    >>

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 12]
            %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
            %! ONE_VOICE_COMMAND
            \oneVoice
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.text_spanner()
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            \stopTextSpan

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Contrabass_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Contrabass_I_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Contrabass_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Contrabass_I_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.I.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Contrabass_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Contrabass.I.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.1 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    af!2
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 10
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 4]
    af2
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.2 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!2.
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.3 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! REDUNDANT_DYNAMIC
    \baca-f-mp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.4 = {

    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 10
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.5 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.6 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice.count.7 = {

    %! abjad.on_beat_grace_container(4)
    \voiceTwo
    %! harmony.appoggiato()
    af!1
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.appoggiato()
    af4
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Voice = {

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 5/4
    %! harmony.sixteenths()
    {

        %! baca._comment_measure_numbers()
        % [Contrabass_II_Music_Voice measure 1]
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_STAFF_LINES
        \stopStaff
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 5
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_STAFF_LINES
        \startStaff
        %! -PARTS
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_MARGIN_MARKUP
        \set Staff.shortInstrumentName = \harmony-cb-ii-markup
        %! -PARTS
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_BAR_EXTENT
        %! EXPLICIT_BAR_EXTENT
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
        %! baca._clone_segment_initial_short_instrument_name()
        \set Staff.instrumentName = \harmony-cb-ii-markup
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(1)
        \override DynamicLineSpanner.staff-padding = 5
        %! baca._reapply_persistent_indicators(3)
        %! baca._set_status_tag()
        %! REAPPLIED_CLEF
        \clef "bass"
        %! baca.attach_color_literal(2)
        %! REAPPLIED_CLEF_COLOR
        \once \override Staff.Clef.color = #(x11-color 'green4)
        %! baca.attach_color_literal(1)
        %! REAPPLIED_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        %! baca._reapply_persistent_indicators(3)
        %! baca.treat_persistent_wrapper(2)
        %! baca._set_status_tag()
        %! REAPPLIED_CLEF
        \set Staff.forceClef = ##t
        %! baca.attach_color_literal(2)
        %! REAPPLIED_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
        %! baca.attach_color_literal(2)
        %! REAPPLIED_MARGIN_MARKUP_COLOR
        %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
        %! harmony.sixteenths()
        g1
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \mf
        %! REAPPLIED_INSTRUMENT_ALERT
        %! baca._attach_latent_indicator_alert()
        %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
        %! REAPPLIED_MARGIN_MARKUP_ALERT
        %! baca._attach_latent_indicator_alert()
        %@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak to-barline ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \>
        %! baca.glissando()
        %! abjad.glissando(7)
        \glissando
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 5.5
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-dashed-line-with-hook
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P1"
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP
        %! baca.attach_color_literal(2)
        %! REAPPLIED_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'OliveDrab)
        %! baca.attach_color_literal(2)
        %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
        %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
        %! -PARTS
        %! baca._reapply_persistent_indicators(3)
        %! baca.treat_persistent_wrapper(3)
        %! baca._set_status_tag()
        %! REDRAWN_REAPPLIED_MARGIN_MARKUP
        \set Staff.shortInstrumentName = \harmony-cb-ii-markup

        %! baca.glissando()
        %! abjad.glissando(1)
        \hide NoteHead
        %! baca.glissando()
        %! abjad.glissando(1)
        \override Accidental.stencil = ##f
        %! baca.glissando()
        %! abjad.glissando(1)
        \override NoteColumn.glissando-skip = ##t
        %! baca.glissando()
        %! abjad.glissando(1)
        \override NoteHead.no-ledgers = ##t
        \afterGrace
        %! harmony.sixteenths()
        g4
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32
        {

            %! baca.glissando()
            %! abjad.glissando(6)
            \revert Accidental.stencil
            %! baca.glissando()
            %! abjad.glissando(6)
            \revert NoteColumn.glissando-skip
            %! baca.glissando()
            %! abjad.glissando(6)
            \revert NoteHead.no-ledgers
            %! baca.glissando()
            %! abjad.glissando(6)
            \undo \hide NoteHead
            fs!8
            %! baca.stem_tremolo()
            %! baca.IndicatorCommand._call()
            :32

        }


        %! harmony.sixteenths()
        r4
        %! EXPLICIT_DYNAMIC_COLOR
        %! baca.treat_persistent_wrapper()
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \!
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP

    %! harmony.sixteenths()
    }

    %! harmony.sixteenths()
    r4.
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 3]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_6
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_6
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.appoggiato()
    r2
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cqs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 5]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.3 }

    >>

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 6]
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_9
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.treat_persistent_wrapper(2)
    %! baca._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.appoggiato()
    r16
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    dqs'!8.
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6.5
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-eleven-a
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    dqs'2
    \repeatTie

    %! harmony.appoggiato()
    r16
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp

    %! harmony.appoggiato()
    dqs'!4..
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 7]
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3
    %! harmony.sixteenths()
    g2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! baca.glissando()
    %! abjad.glissando(1)
    \hide NoteHead
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Accidental.stencil = ##f
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t
    \afterGrace
    %! harmony.sixteenths()
    g8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    {

        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Accidental.stencil
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteColumn.glissando-skip
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteHead.no-ledgers
        %! baca.glissando()
        %! abjad.glissando(6)
        \undo \hide NoteHead
        fs!8

    }


    %! harmony.sixteenths()
    r8
    %! EXPLICIT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 8]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! baca.clef_x_extent_false()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.X-extent = ##f
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            %! SHIFTED_CLEF
            %! MEASURE_11
            %! baca.OverrideCommand._call(1)
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \clef "treble"
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'blue)
            %! baca.attach_color_literal(1)
            %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.clef()
            %! baca.IndicatorCommand._call()
            %! baca.treat_persistent_wrapper(2)
            %! baca._set_status_tag()
            %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cqs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
            %! baca.attach_color_literal(2)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 9]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            b'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 10]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            ctqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a'8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            atqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 11]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(1)
            \override NoteHead.style = #'harmonic
            %! abjad.on_beat_grace_container(2)
            \slash
            %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                b'
            >8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            bqs'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as'!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c''8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cqs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs''!8 * 2/5
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            %! baca.note_head_style_harmonic()
            %! baca.OverrideCommand._call(2)
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.path.extern()
        { \segment.02.Contrabass.II.Music.Voice.count.7 }

    >>

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 12]
            %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
            %! ONE_VOICE_COMMAND
            \oneVoice
            %! baca._style_fermata_measures(1)
            \stopStaff
            %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca._style_fermata_measures(1)
            \startStaff
            %! baca._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.text_spanner()
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            \stopTextSpan
            %! baca._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Rest_Voice measure 12]
            %! baca._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Contrabass_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Contrabass_II_Music_Voice measure 13]
            %! baca._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COLORING
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! MULTIMEASURE_REST
            %! INVISIBLE_MUSIC_COMMAND
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Contrabass_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            %! PHANTOM
            % [Contrabass_II_Rest_Voice measure 13]
            %! baca._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.02.Contrabass.II.Music.Staff = <<

    %! baca.make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! NOT_TOPMOST
    %! baca.path.extern()
%%% { \segment.02.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Contrabass_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.02.Contrabass.II.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>